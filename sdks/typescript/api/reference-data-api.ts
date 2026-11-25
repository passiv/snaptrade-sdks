import { ClientAuth } from "../configuration";
import { ReferenceDataApiGenerated } from "./reference-data-api-generated";
export * from "./reference-data-api-generated";

export class ReferenceDataApi<TAuth extends ClientAuth> extends ReferenceDataApiGenerated<TAuth> {}
