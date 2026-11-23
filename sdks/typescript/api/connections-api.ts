import { ClientAuth } from "../configuration";
import { ConnectionsApiGenerated } from "./connections-api-generated";
export * from "./connections-api-generated";

export class ConnectionsApi<TAuth extends ClientAuth> extends ConnectionsApiGenerated<TAuth> {}
