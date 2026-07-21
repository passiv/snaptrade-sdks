import { AuthMode } from "../configuration";
import { OptionsApiGenerated } from "./options-api-generated";
export * from "./options-api-generated";

export class OptionsApi<TAuth extends AuthMode> extends OptionsApiGenerated<TAuth> {}
