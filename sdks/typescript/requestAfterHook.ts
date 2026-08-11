import { RequestArgs } from "./base";
import { AuthMode, Configuration } from "./configuration";

function bytesToBase64(bytes: Uint8Array): string {
  let binary = "";
  for (const byte of bytes) {
    binary += String.fromCharCode(byte);
  }

  if (typeof globalThis.btoa === "function") {
    return globalThis.btoa(binary);
  }

  if (typeof Buffer !== "undefined") {
    return Buffer.from(bytes).toString("base64");
  }

  throw Error("Base64 encoding is not available in this runtime");
}

// Use Web Crypto so ESM bundles remain safe in edge runtimes.
export async function computeHmacSha256(
  message: string,
  key: string
): Promise<string> {
  if (!globalThis.crypto?.subtle) {
    throw Error("Web Crypto API is required to compute SnapTrade request signatures");
  }

  const encoder = new TextEncoder();
  const keyBuffer = encoder.encode(key);
  const msgBuffer = encoder.encode(message);
  const cryptoKey = await globalThis.crypto.subtle.importKey(
    "raw",
    keyBuffer,
    { name: "HMAC", hash: "SHA-256" },
    false,
    ["sign"]
  );
  const signature = await globalThis.crypto.subtle.sign(
    "HMAC",
    cryptoKey,
    msgBuffer
  );
  return bytesToBase64(new Uint8Array(signature));
}

const JSONstringifyOrder = (obj: any) => {
  var allKeys: any = [];
  var seen: any = {};
  JSON.stringify(obj, function (key, value) {
    if (!(key in seen)) {
      allKeys.push(key);
      seen[key] = null;
    }
    return value;
  });
  allKeys.sort();
  return JSON.stringify(obj, allKeys);
};

export async function requestAfterHook(request: {
  axiosArgs: RequestArgs;
  basePath: string;
  url: string;
  configuration?: Configuration<AuthMode>;
  operationAuth?: {
    selectedAuthMode?: string;
    authModes?: string[];
    requestSigningByAuthMode?: Record<string, {
      secretParameter: string;
      signedSecuritySchemes: string[];
    }>;
  };
}): Promise<void> {
  const { configuration, basePath, axiosArgs, url, operationAuth } = request;
  const selectedAuthMode = operationAuth?.selectedAuthMode;
  const requestSigning = selectedAuthMode === undefined
    ? undefined
    : operationAuth?.requestSigningByAuthMode?.[selectedAuthMode];
  if (requestSigning === undefined) return;
  const signatureScheme = requestSigning.signedSecuritySchemes.find(
    (scheme) => scheme.toLowerCase().endsWith("signature")
  );
  if (signatureScheme === undefined) return;
  const signingSecret = configuration?.[requestSigning.secretParameter as keyof Configuration<AuthMode>];
  if (typeof signingSecret !== "string")
    throw Error(`${requestSigning.secretParameter} is required`);
  const encodedSigningSecret = encodeURI(signingSecret);
  const requestData =
    axiosArgs.options.data === undefined || axiosArgs.options.data === "{}"
      ? null
      : JSON.parse(axiosArgs.options.data);
  const path =
    axiosArgs.url.indexOf("?") === -1
      ? `${axiosArgs.url}`
      : `${axiosArgs.url.split("?")[0]}`;
  const requestPath = path;
  const requestQuery = url
    .replace(basePath, "")
    .replace(path, "")
    .replace("?", "");
  const sigObject = {
    content: requestData,
    path: requestPath,
    query: requestQuery,
  };
  const sigContent = JSONstringifyOrder(sigObject);
  const signature = await computeHmacSha256(sigContent, encodedSigningSecret);

  if (axiosArgs.options.headers)
    axiosArgs.options.headers["Signature"] = signature;
}
