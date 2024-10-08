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


class ManualTradeAndImpact(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def trade() -> typing.Type['ManualTrade']:
                return ManualTrade
            
            
            class trade_impacts(
                schemas.ListSchema
            ):
            
            
                class MetaOapg:
                    
                    @staticmethod
                    def items() -> typing.Type['ManualTradeImpact']:
                        return ManualTradeImpact
            
                def __new__(
                    cls,
                    arg: typing.Union[typing.Tuple['ManualTradeImpact'], typing.List['ManualTradeImpact']],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'trade_impacts':
                    return super().__new__(
                        cls,
                        arg,
                        _configuration=_configuration,
                    )
            
                def __getitem__(self, i: int) -> 'ManualTradeImpact':
                    return super().__getitem__(i)
        
            @staticmethod
            def combined_remaining_balance() -> typing.Type['ManualTradeBalance']:
                return ManualTradeBalance
            __annotations__ = {
                "trade": trade,
                "trade_impacts": trade_impacts,
                "combined_remaining_balance": combined_remaining_balance,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["trade"]) -> 'ManualTrade': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["trade_impacts"]) -> MetaOapg.properties.trade_impacts: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["combined_remaining_balance"]) -> 'ManualTradeBalance': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["trade"], typing_extensions.Literal["trade_impacts"], typing_extensions.Literal["combined_remaining_balance"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["trade"]) -> typing.Union['ManualTrade', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["trade_impacts"]) -> typing.Union[MetaOapg.properties.trade_impacts, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["combined_remaining_balance"]) -> typing.Union['ManualTradeBalance', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["trade"], typing_extensions.Literal["trade_impacts"], typing_extensions.Literal["combined_remaining_balance"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        trade: typing.Union['ManualTrade', schemas.Unset] = schemas.unset,
        trade_impacts: typing.Union[MetaOapg.properties.trade_impacts, list, tuple, schemas.Unset] = schemas.unset,
        combined_remaining_balance: typing.Union['ManualTradeBalance', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'ManualTradeAndImpact':
        return super().__new__(
            cls,
            *args,
            trade=trade,
            trade_impacts=trade_impacts,
            combined_remaining_balance=combined_remaining_balance,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.manual_trade import ManualTrade
from snaptrade_client.model.manual_trade_balance import ManualTradeBalance
from snaptrade_client.model.manual_trade_impact import ManualTradeImpact
