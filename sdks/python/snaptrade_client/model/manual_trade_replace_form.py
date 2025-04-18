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


class ManualTradeReplaceForm(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    Inputs for placing an order with the brokerage.
    """


    class MetaOapg:
        required = {
            "time_in_force",
            "action",
            "order_type",
        }
        
        class properties:
        
            @staticmethod
            def action() -> typing.Type['ActionStrict']:
                return ActionStrict
        
            @staticmethod
            def order_type() -> typing.Type['OrderTypeStrict']:
                return OrderTypeStrict
        
            @staticmethod
            def time_in_force() -> typing.Type['TimeInForceStrict']:
                return TimeInForceStrict
            
            
            class price(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            symbol = schemas.StrSchema
            
            
            class stop(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'stop':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def units() -> typing.Type['UnitsNullable']:
                return UnitsNullable
            __annotations__ = {
                "action": action,
                "order_type": order_type,
                "time_in_force": time_in_force,
                "price": price,
                "symbol": symbol,
                "stop": stop,
                "units": units,
            }
    
    time_in_force: 'TimeInForceStrict'
    action: 'ActionStrict'
    order_type: 'OrderTypeStrict'
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["action"]) -> 'ActionStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["order_type"]) -> 'OrderTypeStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price"]) -> MetaOapg.properties.price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> MetaOapg.properties.symbol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["stop"]) -> MetaOapg.properties.stop: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["units"]) -> 'UnitsNullable': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["action", "order_type", "time_in_force", "price", "symbol", "stop", "units", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["action"]) -> 'ActionStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["order_type"]) -> 'OrderTypeStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price"]) -> typing.Union[MetaOapg.properties.price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union[MetaOapg.properties.symbol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["stop"]) -> typing.Union[MetaOapg.properties.stop, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["units"]) -> typing.Union['UnitsNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["action", "order_type", "time_in_force", "price", "symbol", "stop", "units", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        time_in_force: 'TimeInForceStrict',
        action: 'ActionStrict',
        order_type: 'OrderTypeStrict',
        price: typing.Union[MetaOapg.properties.price, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        symbol: typing.Union[MetaOapg.properties.symbol, str, schemas.Unset] = schemas.unset,
        stop: typing.Union[MetaOapg.properties.stop, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        units: typing.Union['UnitsNullable', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'ManualTradeReplaceForm':
        return super().__new__(
            cls,
            *args,
            time_in_force=time_in_force,
            action=action,
            order_type=order_type,
            price=price,
            symbol=symbol,
            stop=stop,
            units=units,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.action_strict import ActionStrict
from snaptrade_client.model.order_type_strict import OrderTypeStrict
from snaptrade_client.model.time_in_force_strict import TimeInForceStrict
from snaptrade_client.model.units_nullable import UnitsNullable
