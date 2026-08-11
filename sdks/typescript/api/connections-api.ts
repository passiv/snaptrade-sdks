import { AuthMode } from "../configuration";
import { ConnectionsApiGenerated } from "./connections-api-generated";
export * from "./connections-api-generated";

export class ConnectionsApi<TAuth extends AuthMode> extends ConnectionsApiGenerated<TAuth> {}
