# coding: utf-8
"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing
from snaptrade_client.auth import AuthMode
from snaptrade_client.auth import CommercialApiKeyAuth
from snaptrade_client.auth import PersonalApiKeyAuth
from snaptrade_client.configuration import Configuration
from snaptrade_client.apis.tags.account_information_api import AccountInformationApi
from snaptrade_client.apis.tags.api_status_api import APIStatusApi
from snaptrade_client.apis.tags.authentication_api import AuthenticationApi
from snaptrade_client.apis.tags.connections_api import ConnectionsApi
from snaptrade_client.apis.tags.experimental_endpoints_api import ExperimentalEndpointsApi
from snaptrade_client.apis.tags.options_api import OptionsApi
from snaptrade_client.apis.tags.reference_data_api import ReferenceDataApi
from snaptrade_client.apis.tags.trading_api import TradingApi
from snaptrade_client.apis.tags.transactions_and_reporting_api import TransactionsAndReportingApi
from snaptrade_client.client_custom import ClientCustom

TAuth = typing.TypeVar("TAuth", bound=AuthMode)


class SnapTrade(ClientCustom, typing.Generic[TAuth]):
    @typing.overload
    def __init__(self: "SnapTrade[CommercialApiKeyAuth]", configuration: None = None, *, auth: CommercialApiKeyAuth, **kwargs: typing.Any) -> None: ...
    @typing.overload
    def __init__(self: "SnapTrade[PersonalApiKeyAuth]", configuration: None = None, *, auth: PersonalApiKeyAuth, **kwargs: typing.Any) -> None: ...
    @typing.overload
    def __init__(self: "SnapTrade[TAuth]", configuration: typing.Optional[Configuration[TAuth]] = None, **kwargs: typing.Any) -> None: ...
    def __init__(self, configuration: typing.Optional[Configuration[TAuth]] = None, **kwargs: typing.Any) -> None:
        ...
    account_information: AccountInformationApi[TAuth]
    api_status: APIStatusApi[TAuth]
    authentication: AuthenticationApi[TAuth]
    connections: ConnectionsApi[TAuth]
    experimental_endpoints: ExperimentalEndpointsApi[TAuth]
    options: OptionsApi[TAuth]
    reference_data: ReferenceDataApi[TAuth]
    trading: TradingApi[TAuth]
    transactions_and_reporting: TransactionsAndReportingApi[TAuth]
