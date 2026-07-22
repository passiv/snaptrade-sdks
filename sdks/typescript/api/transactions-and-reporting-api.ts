import { AuthMode } from "../configuration";
import { TransactionsAndReportingApiGenerated } from "./transactions-and-reporting-api-generated";
export * from "./transactions-and-reporting-api-generated";

export class TransactionsAndReportingApi<TAuth extends AuthMode> extends TransactionsAndReportingApiGenerated<TAuth> {}
