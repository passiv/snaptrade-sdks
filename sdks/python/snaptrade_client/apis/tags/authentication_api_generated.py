# coding: utf-8
"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from snaptrade_client.paths.snap_trade_delete_user.delete import DeleteSnapTradeUser
from snaptrade_client.paths.snap_trade_list_users.get import ListSnapTradeUsers
from snaptrade_client.paths.snap_trade_login.post import LoginSnapTradeUser
from snaptrade_client.paths.snap_trade_register_user.post import RegisterSnapTradeUser
from snaptrade_client.paths.snap_trade_reset_user_secret.post import ResetSnapTradeUserSecret


class AuthenticationApiGenerated(
    DeleteSnapTradeUser,
    ListSnapTradeUsers,
    LoginSnapTradeUser,
    RegisterSnapTradeUser,
    ResetSnapTradeUserSecret,
):
    """NOTE:
    This class is auto generated by Konfig (https://konfigthis.com)
    """
    pass
