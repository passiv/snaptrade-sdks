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


class OptionsHoldings(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    Option Holdings
    """


    class MetaOapg:
        
        class properties:
            id = schemas.StrSchema
            symbol = schemas.UUIDSchema
        
            @staticmethod
            def option_symbol() -> typing.Type['OptionsSymbol']:
                return OptionsSymbol
        
            @staticmethod
            def price() -> typing.Type['Price']:
                return Price
        
            @staticmethod
            def currency() -> typing.Type['Currency']:
                return Currency
            
            
            class average_purchase_price(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'average_purchase_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "id": id,
                "symbol": symbol,
                "option_symbol": option_symbol,
                "price": price,
                "currency": currency,
                "average_purchase_price": average_purchase_price,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> MetaOapg.properties.symbol: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["option_symbol"]) -> 'OptionsSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price"]) -> 'Price': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["currency"]) -> 'Currency': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["average_purchase_price"]) -> MetaOapg.properties.average_purchase_price: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["symbol"], typing_extensions.Literal["option_symbol"], typing_extensions.Literal["price"], typing_extensions.Literal["currency"], typing_extensions.Literal["average_purchase_price"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union[MetaOapg.properties.symbol, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["option_symbol"]) -> typing.Union['OptionsSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price"]) -> typing.Union['Price', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["currency"]) -> typing.Union['Currency', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["average_purchase_price"]) -> typing.Union[MetaOapg.properties.average_purchase_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["symbol"], typing_extensions.Literal["option_symbol"], typing_extensions.Literal["price"], typing_extensions.Literal["currency"], typing_extensions.Literal["average_purchase_price"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, schemas.Unset] = schemas.unset,
        symbol: typing.Union[MetaOapg.properties.symbol, str, uuid.UUID, schemas.Unset] = schemas.unset,
        option_symbol: typing.Union['OptionsSymbol', schemas.Unset] = schemas.unset,
        price: typing.Union['Price', schemas.Unset] = schemas.unset,
        currency: typing.Union['Currency', schemas.Unset] = schemas.unset,
        average_purchase_price: typing.Union[MetaOapg.properties.average_purchase_price, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'OptionsHoldings':
        return super().__new__(
            cls,
            *args,
            id=id,
            symbol=symbol,
            option_symbol=option_symbol,
            price=price,
            currency=currency,
            average_purchase_price=average_purchase_price,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.currency import Currency
from snaptrade_client.model.options_symbol import OptionsSymbol
from snaptrade_client.model.price import Price
