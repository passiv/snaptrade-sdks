import { RequestArgs } from "./base";
import { Configuration } from "./configuration";

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

// Compute HMAC SHA256 using Web Crypto so ESM bundles are safe in edge runtimes.
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
  configuration?: Configuration;
}): Promise<void> {
  const { configuration, basePath, axiosArgs, url } = request;
  if (configuration?.consumerKey === undefined)
    throw Error("Consumer key is required");
  const consumerKey = encodeURI(configuration.consumerKey);
  const requestData =
    axiosArgs.options.data === undefined || axiosArgs.options.data === "{}"
      ? null
      : JSON.parse(axiosArgs.options.data);
  const requestPath =
    axiosArgs.url.indexOf("?") === -1
      ? `${axiosArgs.url}`
      : `${axiosArgs.url.split("?")[0]}`;
  const requestQuery = url
    .replace(basePath, "")
    .replace(requestPath, "")
    .replace("?", "");
  const sigObject = {
    content: requestData,
    path: requestPath,
    query: requestQuery,
  };
  const sigContent = JSONstringifyOrder(sigObject);
  const signature = await computeHmacSha256(sigContent, consumerKey);

  if (axiosArgs.options.headers)
    axiosArgs.options.headers["Signature"] = signature;
}
