# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing


class AuthMode:
    def __init__(self, mode: str, **kwargs: typing.Any):
        self.mode = mode
        for key, value in kwargs.items():
            setattr(self, key, value)


class CommercialApiKeyAuth(AuthMode):
    pass


class PersonalApiKeyAuth(AuthMode):
    pass


class SnapTradeAuth:
    def __init__(self):
        raise RuntimeError("SnapTradeAuth should not be instantiated")

    @staticmethod
    def commercial_api_key(consumer_key: typing.Optional[str] = None, client_id: typing.Optional[str] = None) -> CommercialApiKeyAuth:
        return CommercialApiKeyAuth(
            "commercialApiKey",
            consumer_key=consumer_key,
            client_id=client_id
        )

    @staticmethod
    def personal_api_key(consumer_key: typing.Optional[str] = None, client_id: typing.Optional[str] = None) -> PersonalApiKeyAuth:
        return PersonalApiKeyAuth(
            "personalApiKey",
            consumer_key=consumer_key,
            client_id=client_id
        )

