import { AuthMode } from "../configuration";
import { AccountInformationApiGenerated } from "./account-information-api-generated";
export * from "./account-information-api-generated";

export class AccountInformationApi<TAuth extends AuthMode> extends AccountInformationApiGenerated<TAuth> {}
