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


class BrokerageAuthorizationTypeReadOnly(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
            
            
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
            
            
            class auth_type(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def OAUTH(cls):
                    return cls("OAUTH")
                
                @schemas.classproperty
                def SCRAPE(cls):
                    return cls("SCRAPE")
                
                @schemas.classproperty
                def UNOFFICIAL_API(cls):
                    return cls("UNOFFICIAL_API")
                
                @schemas.classproperty
                def TOKEN(cls):
                    return cls("TOKEN")
        
            @staticmethod
            def brokerage() -> typing.Type['BrokerageAuthorizationTypeReadOnlyBrokerage']:
                return BrokerageAuthorizationTypeReadOnlyBrokerage
            __annotations__ = {
                "id": id,
                "type": type,
                "auth_type": auth_type,
                "brokerage": brokerage,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["auth_type"]) -> MetaOapg.properties.auth_type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["brokerage"]) -> 'BrokerageAuthorizationTypeReadOnlyBrokerage': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["type"], typing_extensions.Literal["auth_type"], typing_extensions.Literal["brokerage"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["type"]) -> typing.Union[MetaOapg.properties.type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["auth_type"]) -> typing.Union[MetaOapg.properties.auth_type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["brokerage"]) -> typing.Union['BrokerageAuthorizationTypeReadOnlyBrokerage', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["type"], typing_extensions.Literal["auth_type"], typing_extensions.Literal["brokerage"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        type: typing.Union[MetaOapg.properties.type, str, schemas.Unset] = schemas.unset,
        auth_type: typing.Union[MetaOapg.properties.auth_type, str, schemas.Unset] = schemas.unset,
        brokerage: typing.Union['BrokerageAuthorizationTypeReadOnlyBrokerage', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'BrokerageAuthorizationTypeReadOnly':
        return super().__new__(
            cls,
            *args,
            id=id,
            type=type,
            auth_type=auth_type,
            brokerage=brokerage,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.brokerage_authorization_type_read_only_brokerage import BrokerageAuthorizationTypeReadOnlyBrokerage
