# coding: utf-8
"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing
import inspect
from datetime import date, datetime
from snaptrade_client.client_custom import ClientCustom
from snaptrade_client.configuration import Configuration
from snaptrade_client.api_client import ApiClient
from snaptrade_client.type_util import copy_signature
from snaptrade_client.auth import AuthMode
from snaptrade_client.apis.tags.account_information_api import AccountInformationApi
from snaptrade_client.apis.tags.api_status_api import APIStatusApi
from snaptrade_client.apis.tags.authentication_api import AuthenticationApi
from snaptrade_client.apis.tags.connections_api import ConnectionsApi
from snaptrade_client.apis.tags.experimental_endpoints_api import ExperimentalEndpointsApi
from snaptrade_client.apis.tags.reference_data_api import ReferenceDataApi
from snaptrade_client.apis.tags.trading_api import TradingApi


TAuth = typing.TypeVar("TAuth", bound=AuthMode)

class SnapTrade(ClientCustom, typing.Generic[TAuth]):

    def __init__(
        self,
        configuration: typing.Union[Configuration[TAuth], None] = None,
        *,
        auth: typing.Optional[TAuth],
        consumer_key: None = None,
        client_id: None = None,
        **kwargs,
    ):
        """Create a client.

        Authentication credentials must be provided through ``auth``.
        :param consumer_key: Unsupported. Pass this credential through ``auth``.
        :param client_id: Unsupported. Pass this credential through ``auth``.
        """
        if consumer_key is not None:
            raise TypeError("consumer_key must be passed through 'auth'")
        if client_id is not None:
            raise TypeError("client_id must be passed through 'auth'")
        if len(kwargs) > 0 or configuration is None:
            configuration = Configuration(auth=auth, **kwargs)
        super().__init__(configuration)
        if (configuration is None):
            raise Exception("configuration is required")
        api_client = ApiClient(configuration)
        self.account_information: AccountInformationApi[TAuth] = AccountInformationApi(api_client)
        self.api_status: APIStatusApi[TAuth] = APIStatusApi(api_client)
        self.authentication: AuthenticationApi[TAuth] = AuthenticationApi(api_client)
        self.connections: ConnectionsApi[TAuth] = ConnectionsApi(api_client)
        self.experimental_endpoints: ExperimentalEndpointsApi[TAuth] = ExperimentalEndpointsApi(api_client)
        self.reference_data: ReferenceDataApi[TAuth] = ReferenceDataApi(api_client)
        self.trading: TradingApi[TAuth] = TradingApi(api_client)
