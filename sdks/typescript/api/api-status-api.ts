import { AuthMode } from "../configuration";
import { ApiStatusApiGenerated } from "./api-status-api-generated";
export * from "./api-status-api-generated";

export class ApiStatusApi<TAuth extends AuthMode> extends ApiStatusApiGenerated<TAuth> {}
