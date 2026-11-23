import { RequestArgs } from "./base";
import { ClientAuth, Configuration } from "./configuration";

export function requestBeforeUrlHook(request: {
  axiosArgs: RequestArgs;
  basePath: string;
  configuration?: Configuration<ClientAuth>;
}): void {}
