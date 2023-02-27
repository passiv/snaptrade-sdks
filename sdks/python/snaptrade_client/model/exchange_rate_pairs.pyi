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


class ExchangeRatePairs(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by Konfig.
    Ref: https://konfigthis.com

    Do not edit the class manually.

    The exchange rate of a pair of currencies
    """


    class MetaOapg:
        
        class properties:
        
            @staticmethod
            def src() -> typing.Type['Currency']:
                return Currency
        
            @staticmethod
            def dst() -> typing.Type['Currency']:
                return Currency
            exchange_rate = schemas.NumberSchema
            __annotations__ = {
                "src": src,
                "dst": dst,
                "exchange_rate": exchange_rate,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["src"]) -> 'Currency': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["dst"]) -> 'Currency': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["exchange_rate"]) -> MetaOapg.properties.exchange_rate: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["src"], typing_extensions.Literal["dst"], typing_extensions.Literal["exchange_rate"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["src"]) -> typing.Union['Currency', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["dst"]) -> typing.Union['Currency', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["exchange_rate"]) -> typing.Union[MetaOapg.properties.exchange_rate, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["src"], typing_extensions.Literal["dst"], typing_extensions.Literal["exchange_rate"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        src: typing.Union['Currency', schemas.Unset] = schemas.unset,
        dst: typing.Union['Currency', schemas.Unset] = schemas.unset,
        exchange_rate: typing.Union[MetaOapg.properties.exchange_rate, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'ExchangeRatePairs':
        return super().__new__(
            cls,
            *args,
            src=src,
            dst=dst,
            exchange_rate=exchange_rate,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.currency import Currency