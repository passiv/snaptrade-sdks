import { RequestArgs } from "./base";
import { AuthMode, Configuration } from "./configuration";

export function requestBeforeUrlHook(request: {
  axiosArgs: RequestArgs;
  basePath: string;
  configuration?: Configuration<AuthMode>;
}): void {}
