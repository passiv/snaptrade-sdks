/**
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This file is auto generated by Konfig (https://konfigthis.com).
 * https://konfigthis.com
 * Do not edit the class manually.
 */

import {
  AccountInformationApi,
  ApiDisclaimerApi,
  ApiStatusApi,
  AuthenticationApi,
  ConnectionsApi,
  ErrorLogsApi,
  OptionsApi,
  PortfolioManagementApi,
  ReferenceDataApi,
  TradingApi,
  TransactionsAndReportingApi,
} from "./api";
import { Configuration, ConfigurationParameters } from "./configuration";

export class Snaptrade {
  readonly accountInformation: AccountInformationApi;
  readonly apiDisclaimer: ApiDisclaimerApi;
  readonly apiStatus: ApiStatusApi;
  readonly authentication: AuthenticationApi;
  readonly connections: ConnectionsApi;
  readonly errorLogs: ErrorLogsApi;
  readonly options: OptionsApi;
  readonly portfolioManagement: PortfolioManagementApi;
  readonly referenceData: ReferenceDataApi;
  readonly trading: TradingApi;
  readonly transactionsAndReporting: TransactionsAndReportingApi;

  constructor(configurationParameters: ConfigurationParameters) {
    const configuration = new Configuration(configurationParameters);
    this.accountInformation = new AccountInformationApi(configuration);
    this.apiDisclaimer = new ApiDisclaimerApi(configuration);
    this.apiStatus = new ApiStatusApi(configuration);
    this.authentication = new AuthenticationApi(configuration);
    this.connections = new ConnectionsApi(configuration);
    this.errorLogs = new ErrorLogsApi(configuration);
    this.options = new OptionsApi(configuration);
    this.portfolioManagement = new PortfolioManagementApi(configuration);
    this.referenceData = new ReferenceDataApi(configuration);
    this.trading = new TradingApi(configuration);
    this.transactionsAndReporting = new TransactionsAndReportingApi(configuration);
  }
}