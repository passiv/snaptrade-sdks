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


class BrokerageAuthorizationType(
    schemas.DictSchema
):
    """NOTE: This class is auto generated by Konfig.
    Ref: https://konfigthis.com

    Do not edit the class manually.
    """


    class MetaOapg:
        
        class properties:
            
            
            class type(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def READ(cls):
                    return cls("read")
                
                @schemas.classproperty
                def TRADE(cls):
                    return cls("trade")
            __annotations__ = {
                "type": type,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["type"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["type"]) -> typing.Union[MetaOapg.properties.type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["type"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        type: typing.Union[MetaOapg.properties.type, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'BrokerageAuthorizationType':
        return super().__new__(
            cls,
            *args,
            type=type,
            _configuration=_configuration,
            **kwargs,
        )
