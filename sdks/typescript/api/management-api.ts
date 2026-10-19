import { AuthMode } from "../configuration";
import { ManagementApiGenerated } from "./management-api-generated";
export * from "./management-api-generated";

export class ManagementApi<TAuth extends AuthMode> extends ManagementApiGenerated<TAuth> {}
