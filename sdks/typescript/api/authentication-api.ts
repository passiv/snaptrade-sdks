import { ClientAuth } from "../configuration";
import { AuthenticationApiGenerated } from "./authentication-api-generated";
export * from "./authentication-api-generated";

export class AuthenticationApi<TAuth extends ClientAuth> extends AuthenticationApiGenerated<TAuth> {}
