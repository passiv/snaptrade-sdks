import { AuthMode } from "../configuration";
import { ExperimentalEndpointsApiGenerated } from "./experimental-endpoints-api-generated";
export * from "./experimental-endpoints-api-generated";

export class ExperimentalEndpointsApi<TAuth extends AuthMode> extends ExperimentalEndpointsApiGenerated<TAuth> {}
