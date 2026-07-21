# pyright: reportUnnecessaryTypeIgnoreComment=error

from typing import assert_type

from snaptrade_client import CommercialApiKeyAuth
from snaptrade_client import PersonalApiKeyAuth
from snaptrade_client import SnapTrade
from snaptrade_client import SnapTradeAuth


commercial_client = SnapTrade(
    auth=SnapTradeAuth.commercial_api_key(
        consumer_key="consumer_key",
        client_id="client_id",
    ),
)
personal_api_key_client = SnapTrade(
    auth=SnapTradeAuth.personal_api_key(
        consumer_key="consumer_key",
        client_id="client_id",
    ),
)
# OAuth fixture retained for when PersonalOAuth is configured again.
# from snaptrade_client import PersonalOAuthAuth
# personal_oauth_client = SnapTrade(
#     auth=SnapTradeAuth.personal_oauth(access_token="access_token"),
# )

assert_type(commercial_client, SnapTrade[CommercialApiKeyAuth])
assert_type(personal_api_key_client, SnapTrade[PersonalApiKeyAuth])
# assert_type(personal_oauth_client, SnapTrade[PersonalOAuthAuth])


def check_commercial_api_key_client() -> None:
    # Commercial API key clients act on partner users, so operations protected by
    # user-scoped API key security require explicit user credentials.
    commercial_client.account_information.list_user_accounts(
        user_id="user-1",
        user_secret="secret-1",
    )
    commercial_client.authentication.login_snap_trade_user(
        user_id="user-1",
        user_secret="secret-1",
    )

    # User lifecycle operations are available to Commercial API key clients.
    commercial_client.authentication.list_snap_trade_users()
    commercial_client.authentication.register_snap_trade_user(user_id="user-1")
    commercial_client.authentication.delete_snap_trade_user(user_id="user-1")
    commercial_client.authentication.reset_snap_trade_user_secret(
        user_id="user-1",
        user_secret="secret-1",
    )

    # Commercial API key clients cannot omit operation-level user credentials,
    # and they cannot call OAuth-only operations.
    commercial_client.account_information.list_user_accounts()  # type: ignore
    commercial_client.account_information.list_user_accounts(
        user_id="user-1",
    )  # type: ignore
    commercial_client.account_information.list_user_accounts(
        user_secret="user-1",
    )  # type: ignore
    commercial_client.authentication.login_snap_trade_user()  # type: ignore

    # Authless operations are available regardless of the selected auth mode.
    commercial_client.api_status.check()


def check_personal_api_key_client() -> None:
    # Personal API key clients already identify the user through the configured
    # API key, so user-scoped operations can omit user credentials.
    personal_api_key_client.account_information.list_user_accounts()
    personal_api_key_client.authentication.login_snap_trade_user()
    # Personal API key clients cannot pass partner user credentials, and they
    # cannot call OAuth-only operations.
    personal_api_key_client.account_information.list_user_accounts(
        user_id="user-1",  # type: ignore
        user_secret="secret-1",  # type: ignore
    )
    personal_api_key_client.authentication.login_snap_trade_user(
        user_id="user-1",  # type: ignore
        user_secret="secret-1",  # type: ignore
    )

    # User lifecycle operations are Commercial-only.
    personal_api_key_client.authentication.list_snap_trade_users()  # type: ignore
    personal_api_key_client.authentication.register_snap_trade_user(  # type: ignore
        user_id="user-1"
    )
    personal_api_key_client.authentication.delete_snap_trade_user(  # type: ignore
        user_id="user-1"
    )
    personal_api_key_client.authentication.reset_snap_trade_user_secret(  # type: ignore
        user_id="user-1",
        user_secret="secret-1",
    )

    # Authless operations are available regardless of the selected auth mode.
    personal_api_key_client.api_status.check()


# def check_personal_oauth_client() -> None:
#     # Personal OAuth clients already identify the user through the bearer token,
#     # so user-scoped operations can omit user credentials.
#     personal_oauth_client.account_information.list_user_accounts()
#     personal_oauth_client.authentication.login_snap_trade_user()
#     # OAuth-only operations are available only to personal OAuth clients.
#
#     # Personal OAuth clients cannot pass partner user credentials, cannot call
#     # API-key-only operations.
#     personal_oauth_client.account_information.list_user_accounts(
#         user_id="user-1",
#         user_secret="secret-1",
#     )
#     personal_oauth_client.authentication.login_snap_trade_user(
#         user_id="user-1",
#         user_secret="secret-1",
#     )
#     personal_oauth_client.authentication.list_snap_trade_users()
#
#     # Authless operations are available regardless of the selected auth mode.
#     personal_oauth_client.api_status.check()
