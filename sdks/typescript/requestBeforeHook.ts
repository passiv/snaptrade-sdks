import { AuthMode, Configuration } from "./configuration";
import { AxiosRequestConfig } from "axios";

export function requestBeforeHook(request: {
  requestBody?: any;
  queryParameters: Record<string, any>;
  path: string;
  requestConfig: AxiosRequestConfig;
  configuration?: Configuration<AuthMode>;
  pathTemplate: string;
  httpMethod: string;
  operationAuth?: {
    selectedAuthMode?: string;
    authModes?: string[];
    requestSigningByAuthMode?: Record<string, {
      secretParameter: string;
      signedSecuritySchemes: string[];
    }>;
  };
  [key: string]: any;
}): void {
  const { queryParameters, operationAuth } = request;
  const selectedAuthMode = operationAuth?.selectedAuthMode;
  const requestSigning = selectedAuthMode === undefined
    ? undefined
    : operationAuth?.requestSigningByAuthMode?.[selectedAuthMode];
  const timestampScheme = requestSigning?.signedSecuritySchemes.find(
    (scheme) => scheme.toLowerCase().endsWith("timestamp")
  );
  if (timestampScheme === undefined) return;
  queryParameters["timestamp"] = Math.round(
    new Date().getTime() / 1000
  ).toString();
}
