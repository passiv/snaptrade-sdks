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


class CryptocurrencyPair(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    A cryptocurrency symbol. This is a unique identifier for a cryptocurrency.
    """


    class MetaOapg:
        required = {
            "quote",
            "base",
        }
        
        class properties:
            base = schemas.StrSchema
            quote = schemas.StrSchema
            __annotations__ = {
                "base": base,
                "quote": quote,
            }
        additional_properties = schemas.AnyTypeSchema
    
    quote: MetaOapg.properties.quote
    base: MetaOapg.properties.base
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["quote"]) -> MetaOapg.properties.quote: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["base"]) -> MetaOapg.properties.base: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["quote"], typing_extensions.Literal["base"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["quote"]) -> MetaOapg.properties.quote: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["base"]) -> MetaOapg.properties.base: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["quote"], typing_extensions.Literal["base"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        quote: typing.Union[MetaOapg.properties.quote, str, ],
        base: typing.Union[MetaOapg.properties.base, str, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'CryptocurrencyPair':
        return super().__new__(
            cls,
            *args,
            quote=quote,
            base=base,
            _configuration=_configuration,
            **kwargs,
        )
