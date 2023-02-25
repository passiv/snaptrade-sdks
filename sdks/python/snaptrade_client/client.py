# coding: utf-8
"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""

from snaptrade_client.configuration import Configuration
from snaptrade_client.api_client import ApiClient
from snaptrade_client.apis.tags.api_disclaimer_api import APIDisclaimerApi
from snaptrade_client.apis.tags.api_status_api import APIStatusApi
from snaptrade_client.apis.tags.account_information_api import AccountInformationApi
from snaptrade_client.apis.tags.authentication_api import AuthenticationApi
from snaptrade_client.apis.tags.connections_api import ConnectionsApi
from snaptrade_client.apis.tags.error_logs_api import ErrorLogsApi
from snaptrade_client.apis.tags.options_api import OptionsApi
from snaptrade_client.apis.tags.portfolio_management_api import PortfolioManagementApi
from snaptrade_client.apis.tags.reference_data_api import ReferenceDataApi
from snaptrade_client.apis.tags.trading_api import TradingApi
from snaptrade_client.apis.tags.transactions_and_reporting_api import TransactionsAndReportingApi


class Newscatcher:

    def __init__(self, configuration: Configuration = None, **kwargs):
        if (len(kwargs) > 0):
            configuration = Configuration(**kwargs)
        if (configuration is None):
            raise Exception("configuration is required")
        api_client = ApiClient(configuration)
        self.API Disclaimer = APIDisclaimerApi(api_client)
        self.API Status = APIStatusApi(api_client)
        self.Account Information = AccountInformationApi(api_client)
        self.Authentication = AuthenticationApi(api_client)
        self.Connections = ConnectionsApi(api_client)
        self.Error Logs = ErrorLogsApi(api_client)
        self.Options = OptionsApi(api_client)
        self.Portfolio Management = PortfolioManagementApi(api_client)
        self.Reference Data = ReferenceDataApi(api_client)
        self.Trading = TradingApi(api_client)
        self.Transactions And Reporting = TransactionsAndReportingApi(api_client)
