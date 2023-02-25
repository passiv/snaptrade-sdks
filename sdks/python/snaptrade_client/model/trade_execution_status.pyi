# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
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


class TradeExecutionStatus(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by Konfig.
    Ref: https://konfigthis.com

    Do not edit the class manually.

    Execution status of a trade
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def symbol() -> typing.Type['BrokerageSymbol']:
                return BrokerageSymbol
        
            @staticmethod
            def universal_symbol() -> typing.Type['UniversalSymbol']:
                return UniversalSymbol
        
            @staticmethod
            def trade() -> typing.Type['Trade']:
                return Trade
            
            
            class state(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def EXECUTED(cls):
                    return cls("Executed")
                
                @schemas.classproperty
                def CANCELED(cls):
                    return cls("Canceled")
                
                @schemas.classproperty
                def REJECTED(cls):
                    return cls("Rejected")
                
                @schemas.classproperty
                def FAILED(cls):
                    return cls("Failed")
                
                @schemas.classproperty
                def NOT_EXECUTED(cls):
                    return cls("Not Executed")
            filled_units = schemas.IntSchema
            
            
            class action(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def BUY(cls):
                    return cls("BUY")
                
                @schemas.classproperty
                def SELL(cls):
                    return cls("SELL")
            price = schemas.NumberSchema
            commissions = schemas.NumberSchema
            
            
            class meta(
                schemas.DictSchema
            ):
            
            
                class MetaOapg:
                    additional_properties = schemas.AnyTypeSchema
                
                def __getitem__(self, name: typing.Union[str, ]) -> MetaOapg.additional_properties:
                    # dict_instance[name] accessor
                    return super().__getitem__(name)
                
                def get_item_oapg(self, name: typing.Union[str, ]) -> MetaOapg.additional_properties:
                    return super().get_item_oapg(name)
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                ) -> 'meta':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            __annotations__ = {
                "symbol": symbol,
                "universal_symbol": universal_symbol,
                "trade": trade,
                "state": state,
                "filled_units": filled_units,
                "action": action,
                "price": price,
                "commissions": commissions,
                "meta": meta,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> 'BrokerageSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["universal_symbol"]) -> 'UniversalSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["trade"]) -> 'Trade': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["state"]) -> MetaOapg.properties.state: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["filled_units"]) -> MetaOapg.properties.filled_units: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["action"]) -> MetaOapg.properties.action: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price"]) -> MetaOapg.properties.price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["commissions"]) -> MetaOapg.properties.commissions: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["meta"]) -> MetaOapg.properties.meta: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["symbol"], typing_extensions.Literal["universal_symbol"], typing_extensions.Literal["trade"], typing_extensions.Literal["state"], typing_extensions.Literal["filled_units"], typing_extensions.Literal["action"], typing_extensions.Literal["price"], typing_extensions.Literal["commissions"], typing_extensions.Literal["meta"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union['BrokerageSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["universal_symbol"]) -> typing.Union['UniversalSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["trade"]) -> typing.Union['Trade', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["state"]) -> typing.Union[MetaOapg.properties.state, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["filled_units"]) -> typing.Union[MetaOapg.properties.filled_units, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["action"]) -> typing.Union[MetaOapg.properties.action, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price"]) -> typing.Union[MetaOapg.properties.price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["commissions"]) -> typing.Union[MetaOapg.properties.commissions, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["meta"]) -> typing.Union[MetaOapg.properties.meta, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["symbol"], typing_extensions.Literal["universal_symbol"], typing_extensions.Literal["trade"], typing_extensions.Literal["state"], typing_extensions.Literal["filled_units"], typing_extensions.Literal["action"], typing_extensions.Literal["price"], typing_extensions.Literal["commissions"], typing_extensions.Literal["meta"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        symbol: typing.Union['BrokerageSymbol', schemas.Unset] = schemas.unset,
        universal_symbol: typing.Union['UniversalSymbol', schemas.Unset] = schemas.unset,
        trade: typing.Union['Trade', schemas.Unset] = schemas.unset,
        state: typing.Union[MetaOapg.properties.state, str, schemas.Unset] = schemas.unset,
        filled_units: typing.Union[MetaOapg.properties.filled_units, decimal.Decimal, int, schemas.Unset] = schemas.unset,
        action: typing.Union[MetaOapg.properties.action, str, schemas.Unset] = schemas.unset,
        price: typing.Union[MetaOapg.properties.price, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        commissions: typing.Union[MetaOapg.properties.commissions, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        meta: typing.Union[MetaOapg.properties.meta, dict, frozendict.frozendict, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'TradeExecutionStatus':
        return super().__new__(
            cls,
            *args,
            symbol=symbol,
            universal_symbol=universal_symbol,
            trade=trade,
            state=state,
            filled_units=filled_units,
            action=action,
            price=price,
            commissions=commissions,
            meta=meta,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.brokerage_symbol import BrokerageSymbol
from snaptrade_client.model.trade import Trade
from snaptrade_client.model.universal_symbol import UniversalSymbol
