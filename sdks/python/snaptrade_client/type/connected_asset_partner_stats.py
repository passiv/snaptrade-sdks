# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING


class RequiredConnectedAssetPartnerStats(TypedDict):
    # Number of users registered with your Client ID.
    total_users: int

    # Number of users registered with your Client ID that have at least one connection, active or disabled.
    total_connected_users: int

    # Number of active connections across users registered with your Client ID.
    total_active_connections: int

    # Number of disabled connections across users registered with your Client ID.
    total_disabled_connections: int

    # Number of users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    oauth_total_users: typing.Optional[int]

    # Number of users who have authorized your OAuth application and have at least one connection, active or disabled. `null` if your Client ID has no OAuth application.
    oauth_total_connected_users: typing.Optional[int]

    # Number of active connections across users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    oauth_total_active_connections: typing.Optional[int]

    # Number of disabled connections across users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    oauth_total_disabled_connections: typing.Optional[int]

    # Total latest account value across active connections of users registered with your Client ID, in `connected_assets_currency`. `null` until the first daily snapshot has been calculated.
    connected_assets: typing.Optional[typing.Union[int, float]]

    # Total account value across disabled connections of users registered with your Client ID, as of each connection's last sync, in `connected_assets_currency`. `null` until the first daily snapshot has been calculated.
    disabled_connected_assets: typing.Optional[typing.Union[int, float]]

    # Total latest account value across active connections of users who have authorized your OAuth application, in `connected_assets_currency`. `null` if your Client ID has no OAuth application, or until the first daily snapshot after it was added.
    oauth_connected_assets: typing.Optional[typing.Union[int, float]]

    # Total account value across disabled connections of users who have authorized your OAuth application, as of each connection's last sync, in `connected_assets_currency`. `null` if your Client ID has no OAuth application, or until the first daily snapshot after it was added.
    oauth_disabled_connected_assets: typing.Optional[typing.Union[int, float]]

    # ISO 4217 currency code the asset values are expressed in.
    connected_assets_currency: str

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. `null` until the first daily snapshot has been calculated.
    connected_assets_calculated_at: typing.Optional[datetime]

class OptionalConnectedAssetPartnerStats(TypedDict, total=False):
    pass

class ConnectedAssetPartnerStats(RequiredConnectedAssetPartnerStats, OptionalConnectedAssetPartnerStats):
    pass
