# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import date, datetime  # noqa: F401
import decimal  # noqa: F401
import functools  # noqa: F401
import io  # noqa: F401
import re  # noqa: F401
import typing  # noqa: F401
import typing_extensions  # noqa: F401
import uuid  # noqa: F401

import frozendict  # noqa: F401

from snaptrade_client import schemas  # noqa: F401


class AccountSyncStatus(
    schemas.AnyTypeSchema,
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    Contains status update for the account sync process between SnapTrade and the brokerage.
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def transactions() -> typing.Type['TransactionsStatus']:
                return TransactionsStatus
        
            @staticmethod
            def holdings() -> typing.Type['HoldingsStatus']:
                return HoldingsStatus
            __annotations__ = {
                "transactions": transactions,
                "holdings": holdings,
            }

    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["transactions"]) -> 'TransactionsStatus': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["holdings"]) -> 'HoldingsStatus': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["transactions", "holdings", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["transactions"]) -> typing.Union['TransactionsStatus', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["holdings"]) -> typing.Union['HoldingsStatus', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["transactions", "holdings", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
        transactions: typing.Union['TransactionsStatus', schemas.Unset] = schemas.unset,
        holdings: typing.Union['HoldingsStatus', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'AccountSyncStatus':
        return super().__new__(
            cls,
            *args,
            transactions=transactions,
            holdings=holdings,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.holdings_status import HoldingsStatus
from snaptrade_client.model.transactions_status import TransactionsStatus
