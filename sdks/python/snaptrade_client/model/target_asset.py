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


class TargetAsset(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by Konfig.
    Ref: https://konfigthis.com

    Do not edit the class manually.

    Target percentage of a certain asset
    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
        
            @staticmethod
            def symbol() -> typing.Type['UniversalSymbol']:
                return UniversalSymbol
        
            @staticmethod
            def percent() -> typing.Type['Percent']:
                return Percent
            is_supported = schemas.BoolSchema
            is_excluded = schemas.BoolSchema
            
            
            class meta(
                schemas.DictBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneFrozenDictMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[dict, frozendict.frozendict, None, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                    **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                ) -> 'meta':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                        **kwargs,
                    )
            __annotations__ = {
                "id": id,
                "symbol": symbol,
                "percent": percent,
                "is_supported": is_supported,
                "is_excluded": is_excluded,
                "meta": meta,
            }
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> 'UniversalSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["percent"]) -> 'Percent': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_supported"]) -> MetaOapg.properties.is_supported: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_excluded"]) -> MetaOapg.properties.is_excluded: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["meta"]) -> MetaOapg.properties.meta: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id", "symbol", "percent", "is_supported", "is_excluded", "meta", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union['UniversalSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["percent"]) -> typing.Union['Percent', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_supported"]) -> typing.Union[MetaOapg.properties.is_supported, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_excluded"]) -> typing.Union[MetaOapg.properties.is_excluded, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["meta"]) -> typing.Union[MetaOapg.properties.meta, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id", "symbol", "percent", "is_supported", "is_excluded", "meta", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        symbol: typing.Union['UniversalSymbol', schemas.Unset] = schemas.unset,
        percent: typing.Union['Percent', schemas.Unset] = schemas.unset,
        is_supported: typing.Union[MetaOapg.properties.is_supported, bool, schemas.Unset] = schemas.unset,
        is_excluded: typing.Union[MetaOapg.properties.is_excluded, bool, schemas.Unset] = schemas.unset,
        meta: typing.Union[MetaOapg.properties.meta, dict, frozendict.frozendict, None, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'TargetAsset':
        return super().__new__(
            cls,
            *args,
            id=id,
            symbol=symbol,
            percent=percent,
            is_supported=is_supported,
            is_excluded=is_excluded,
            meta=meta,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.percent import Percent
from snaptrade_client.model.universal_symbol import UniversalSymbol
