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


class ManualTradeFormWithOptions(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    Inputs for placing an order with the brokerage.
    """


    class MetaOapg:
        required = {
            "time_in_force",
            "account_id",
            "action",
            "order_type",
        }
        
        class properties:
            account_id = schemas.UUIDSchema
        
            @staticmethod
            def action() -> typing.Type['ActionStrictWithOptions']:
                return ActionStrictWithOptions
        
            @staticmethod
            def order_type() -> typing.Type['OrderTypeStrict']:
                return OrderTypeStrict
        
            @staticmethod
            def time_in_force() -> typing.Type['TimeInForceStrict']:
                return TimeInForceStrict
        
            @staticmethod
            def universal_symbol_id() -> typing.Type['UniversalSymbolIDNullable']:
                return UniversalSymbolIDNullable
            
            
            class symbol(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'symbol':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
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
            
            
            class units(
                schemas.ComposedSchema,
            ):
            
            
                class MetaOapg:
                    all_of_0 = schemas.NumberSchema
                    
                    @classmethod
                    @functools.lru_cache()
                    def all_of(cls):
                        # we need this here to make our import statements work
                        # we must store _composed_schemas in here so the code is only run
                        # when we invoke this method. If we kept this at the class
                        # level we would get an error because the class level
                        # code would be run when this module is imported, and these composed
                        # classes don't exist yet because their module has not finished
                        # loading
                        return [
                            cls.all_of_0,
                        ]
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'units':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
        
            @staticmethod
            def notional_value() -> typing.Type['NotionalValueNullable']:
                return NotionalValueNullable
            __annotations__ = {
                "account_id": account_id,
                "action": action,
                "order_type": order_type,
                "time_in_force": time_in_force,
                "universal_symbol_id": universal_symbol_id,
                "symbol": symbol,
                "price": price,
                "stop": stop,
                "units": units,
                "notional_value": notional_value,
            }
    
    time_in_force: 'TimeInForceStrict'
    account_id: MetaOapg.properties.account_id
    action: 'ActionStrictWithOptions'
    order_type: 'OrderTypeStrict'
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["account_id"]) -> MetaOapg.properties.account_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["action"]) -> 'ActionStrictWithOptions': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["order_type"]) -> 'OrderTypeStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["universal_symbol_id"]) -> 'UniversalSymbolIDNullable': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> MetaOapg.properties.symbol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price"]) -> MetaOapg.properties.price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["stop"]) -> MetaOapg.properties.stop: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["units"]) -> MetaOapg.properties.units: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["notional_value"]) -> 'NotionalValueNullable': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["account_id", "action", "order_type", "time_in_force", "universal_symbol_id", "symbol", "price", "stop", "units", "notional_value", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["account_id"]) -> MetaOapg.properties.account_id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["action"]) -> 'ActionStrictWithOptions': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["order_type"]) -> 'OrderTypeStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["universal_symbol_id"]) -> typing.Union['UniversalSymbolIDNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union[MetaOapg.properties.symbol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price"]) -> typing.Union[MetaOapg.properties.price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["stop"]) -> typing.Union[MetaOapg.properties.stop, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["units"]) -> typing.Union[MetaOapg.properties.units, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["notional_value"]) -> typing.Union['NotionalValueNullable', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["account_id", "action", "order_type", "time_in_force", "universal_symbol_id", "symbol", "price", "stop", "units", "notional_value", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        time_in_force: 'TimeInForceStrict',
        account_id: typing.Union[MetaOapg.properties.account_id, str, uuid.UUID, ],
        action: 'ActionStrictWithOptions',
        order_type: 'OrderTypeStrict',
        universal_symbol_id: typing.Union['UniversalSymbolIDNullable', schemas.Unset] = schemas.unset,
        symbol: typing.Union[MetaOapg.properties.symbol, None, str, schemas.Unset] = schemas.unset,
        price: typing.Union[MetaOapg.properties.price, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        stop: typing.Union[MetaOapg.properties.stop, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        units: typing.Union[MetaOapg.properties.units, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, schemas.Unset] = schemas.unset,
        notional_value: typing.Union['NotionalValueNullable', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'ManualTradeFormWithOptions':
        return super().__new__(
            cls,
            *args,
            time_in_force=time_in_force,
            account_id=account_id,
            action=action,
            order_type=order_type,
            universal_symbol_id=universal_symbol_id,
            symbol=symbol,
            price=price,
            stop=stop,
            units=units,
            notional_value=notional_value,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.action_strict_with_options import ActionStrictWithOptions
from snaptrade_client.model.notional_value_nullable import NotionalValueNullable
from snaptrade_client.model.order_type_strict import OrderTypeStrict
from snaptrade_client.model.time_in_force_strict import TimeInForceStrict
from snaptrade_client.model.universal_symbol_id_nullable import UniversalSymbolIDNullable
