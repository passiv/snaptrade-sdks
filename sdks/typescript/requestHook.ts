import * as crypto from "crypto";
import { RequestArgs } from "./base";
import { Configuration } from "./configuration";

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

export function requestHook(request: {
  axiosArgs: RequestArgs;
  basePath: string;
  url: string;
  configuration?: Configuration;
}): void {
  const { configuration, basePath, axiosArgs, url } = request;
  if (configuration?.consumerKey === undefined)
    throw Error("Consumer key is required");
  const consumerKey = encodeURI(configuration.consumerKey);
  const requestData =
    axiosArgs.options.data === undefined || axiosArgs.options.data === "{}"
      ? null
      : JSON.parse(axiosArgs.options.data);
  const path =
    axiosArgs.url.indexOf("?") === -1
      ? `${axiosArgs.url}`
      : `${axiosArgs.url.split("?")[0]}`;
  const requestPath = `/api/v1${path}`;
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
  const hmac = crypto.createHmac("sha256", consumerKey);
  const signature = hmac.update(sigContent).digest("base64");

  if (axiosArgs.options.headers)
    axiosArgs.options.headers["Signature"] = signature;
}
