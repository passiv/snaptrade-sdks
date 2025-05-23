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


class BrokerageAuthorization(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    A single connection with a brokerage. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.

A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.

SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.

    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
            created_date = schemas.DateTimeSchema
        
            @staticmethod
            def brokerage() -> typing.Type['Brokerage']:
                return Brokerage
            name = schemas.StrSchema
            type = schemas.StrSchema
            disabled = schemas.BoolSchema
            
            
            class disabled_date(
                schemas.DateTimeBase,
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'date-time'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, datetime, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'disabled_date':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def meta() -> typing.Type['BrokerageAuthorizationMeta']:
                return BrokerageAuthorizationMeta
            updated_date = schemas.DateTimeSchema
            is_eligible_for_payout = schemas.BoolSchema
            __annotations__ = {
                "id": id,
                "created_date": created_date,
                "brokerage": brokerage,
                "name": name,
                "type": type,
                "disabled": disabled,
                "disabled_date": disabled_date,
                "meta": meta,
                "updated_date": updated_date,
                "is_eligible_for_payout": is_eligible_for_payout,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["created_date"]) -> MetaOapg.properties.created_date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["brokerage"]) -> 'Brokerage': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["disabled"]) -> MetaOapg.properties.disabled: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["disabled_date"]) -> MetaOapg.properties.disabled_date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["meta"]) -> 'BrokerageAuthorizationMeta': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["updated_date"]) -> MetaOapg.properties.updated_date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_eligible_for_payout"]) -> MetaOapg.properties.is_eligible_for_payout: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["created_date"], typing_extensions.Literal["brokerage"], typing_extensions.Literal["name"], typing_extensions.Literal["type"], typing_extensions.Literal["disabled"], typing_extensions.Literal["disabled_date"], typing_extensions.Literal["meta"], typing_extensions.Literal["updated_date"], typing_extensions.Literal["is_eligible_for_payout"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["created_date"]) -> typing.Union[MetaOapg.properties.created_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["brokerage"]) -> typing.Union['Brokerage', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["type"]) -> typing.Union[MetaOapg.properties.type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["disabled"]) -> typing.Union[MetaOapg.properties.disabled, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["disabled_date"]) -> typing.Union[MetaOapg.properties.disabled_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["meta"]) -> typing.Union['BrokerageAuthorizationMeta', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["updated_date"]) -> typing.Union[MetaOapg.properties.updated_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_eligible_for_payout"]) -> typing.Union[MetaOapg.properties.is_eligible_for_payout, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["created_date"], typing_extensions.Literal["brokerage"], typing_extensions.Literal["name"], typing_extensions.Literal["type"], typing_extensions.Literal["disabled"], typing_extensions.Literal["disabled_date"], typing_extensions.Literal["meta"], typing_extensions.Literal["updated_date"], typing_extensions.Literal["is_eligible_for_payout"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        created_date: typing.Union[MetaOapg.properties.created_date, str, datetime, schemas.Unset] = schemas.unset,
        brokerage: typing.Union['Brokerage', schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, str, schemas.Unset] = schemas.unset,
        type: typing.Union[MetaOapg.properties.type, str, schemas.Unset] = schemas.unset,
        disabled: typing.Union[MetaOapg.properties.disabled, bool, schemas.Unset] = schemas.unset,
        disabled_date: typing.Union[MetaOapg.properties.disabled_date, None, str, datetime, schemas.Unset] = schemas.unset,
        meta: typing.Union['BrokerageAuthorizationMeta', schemas.Unset] = schemas.unset,
        updated_date: typing.Union[MetaOapg.properties.updated_date, str, datetime, schemas.Unset] = schemas.unset,
        is_eligible_for_payout: typing.Union[MetaOapg.properties.is_eligible_for_payout, bool, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'BrokerageAuthorization':
        return super().__new__(
            cls,
            *args,
            id=id,
            created_date=created_date,
            brokerage=brokerage,
            name=name,
            type=type,
            disabled=disabled,
            disabled_date=disabled_date,
            meta=meta,
            updated_date=updated_date,
            is_eligible_for_payout=is_eligible_for_payout,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.brokerage import Brokerage
from snaptrade_client.model.brokerage_authorization_meta import BrokerageAuthorizationMeta
