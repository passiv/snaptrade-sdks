import { AuthMode } from "../configuration";
import { AuthenticationApiGenerated } from "./authentication-api-generated";
export * from "./authentication-api-generated";

export class AuthenticationApi<TAuth extends AuthMode> extends AuthenticationApiGenerated<TAuth> {}
