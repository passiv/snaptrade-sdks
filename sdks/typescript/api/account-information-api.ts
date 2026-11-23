import { ClientAuth } from "../configuration";
import { AccountInformationApiGenerated } from "./account-information-api-generated";
export * from "./account-information-api-generated";

export class AccountInformationApi<TAuth extends ClientAuth> extends AccountInformationApiGenerated<TAuth> {}
