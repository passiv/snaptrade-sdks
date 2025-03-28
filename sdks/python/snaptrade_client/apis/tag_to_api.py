import typing_extensions

from snaptrade_client.apis.tags import TagValues
from snaptrade_client.apis.tags.api_status_api import APIStatusApi
from snaptrade_client.apis.tags.authentication_api import AuthenticationApi
from snaptrade_client.apis.tags.connections_api import ConnectionsApi
from snaptrade_client.apis.tags.account_information_api import AccountInformationApi
from snaptrade_client.apis.tags.options_api import OptionsApi
from snaptrade_client.apis.tags.transactions_and_reporting_api import TransactionsAndReportingApi
from snaptrade_client.apis.tags.trading_api import TradingApi
from snaptrade_client.apis.tags.reference_data_api import ReferenceDataApi

TagToApi = typing_extensions.TypedDict(
    'TagToApi',
    {
        TagValues.API_STATUS: APIStatusApi,
        TagValues.AUTHENTICATION: AuthenticationApi,
        TagValues.CONNECTIONS: ConnectionsApi,
        TagValues.ACCOUNT_INFORMATION: AccountInformationApi,
        TagValues.OPTIONS: OptionsApi,
        TagValues.TRANSACTIONS_AND_REPORTING: TransactionsAndReportingApi,
        TagValues.TRADING: TradingApi,
        TagValues.REFERENCE_DATA: ReferenceDataApi,
    }
)

tag_to_api = TagToApi(
    {
        TagValues.API_STATUS: APIStatusApi,
        TagValues.AUTHENTICATION: AuthenticationApi,
        TagValues.CONNECTIONS: ConnectionsApi,
        TagValues.ACCOUNT_INFORMATION: AccountInformationApi,
        TagValues.OPTIONS: OptionsApi,
        TagValues.TRANSACTIONS_AND_REPORTING: TransactionsAndReportingApi,
        TagValues.TRADING: TradingApi,
        TagValues.REFERENCE_DATA: ReferenceDataApi,
    }
)
