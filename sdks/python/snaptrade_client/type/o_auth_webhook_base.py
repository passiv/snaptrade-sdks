# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal, TYPE_CHECKING

from snaptrade_client.type.o_auth_webhook_base_details import OAuthWebhookBaseDetails

class RequiredOAuthWebhookBase(TypedDict):
    schemaVersion: Literal["oauth_v1"]

    webhookId: str

    # The OAuth client ID of the application receiving the webhook.
    oauthClientId: str

    eventTimestamp: datetime

    # The SnapTrade Personal user UUID, matching the `sub` claim of the OIDC `id_token` (issued when the `openid` scope is requested) and the deprecated top-level `sub.snaptrade_user_id` field in the OAuth token response.
    userId: str

    eventType: str


class OptionalOAuthWebhookBase(TypedDict, total=False):
    accountId: str

    connectionId: str

    brokerageId: str

    connectionAttemptedResult: str

    details: OAuthWebhookBaseDetails

class OAuthWebhookBase(RequiredOAuthWebhookBase, OptionalOAuthWebhookBase):
    pass
