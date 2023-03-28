# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

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


class PortfolioGroupSettings(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
            buyOnly = schemas.BoolSchema
            cash_optimizer = schemas.BoolSchema
            notifyFrequency = schemas.StrSchema
        
            @staticmethod
            def driftThreshold() -> typing.Type['Percent']:
                return Percent
        
            @staticmethod
            def preferred_currency() -> typing.Type['Currency']:
                return Currency
            __annotations__ = {
                "buyOnly": buyOnly,
                "cash_optimizer": cash_optimizer,
                "notifyFrequency": notifyFrequency,
                "driftThreshold": driftThreshold,
                "preferred_currency": preferred_currency,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["buyOnly"]) -> MetaOapg.properties.buyOnly: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["cash_optimizer"]) -> MetaOapg.properties.cash_optimizer: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["notifyFrequency"]) -> MetaOapg.properties.notifyFrequency: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["driftThreshold"]) -> 'Percent': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["preferred_currency"]) -> 'Currency': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["buyOnly"], typing_extensions.Literal["cash_optimizer"], typing_extensions.Literal["notifyFrequency"], typing_extensions.Literal["driftThreshold"], typing_extensions.Literal["preferred_currency"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["buyOnly"]) -> typing.Union[MetaOapg.properties.buyOnly, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["cash_optimizer"]) -> typing.Union[MetaOapg.properties.cash_optimizer, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["notifyFrequency"]) -> typing.Union[MetaOapg.properties.notifyFrequency, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["driftThreshold"]) -> typing.Union['Percent', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["preferred_currency"]) -> typing.Union['Currency', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["buyOnly"], typing_extensions.Literal["cash_optimizer"], typing_extensions.Literal["notifyFrequency"], typing_extensions.Literal["driftThreshold"], typing_extensions.Literal["preferred_currency"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        buyOnly: typing.Union[MetaOapg.properties.buyOnly, bool, schemas.Unset] = schemas.unset,
        cash_optimizer: typing.Union[MetaOapg.properties.cash_optimizer, bool, schemas.Unset] = schemas.unset,
        notifyFrequency: typing.Union[MetaOapg.properties.notifyFrequency, str, schemas.Unset] = schemas.unset,
        driftThreshold: typing.Union['Percent', schemas.Unset] = schemas.unset,
        preferred_currency: typing.Union['Currency', schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'PortfolioGroupSettings':
        return super().__new__(
            cls,
            *args,
            buyOnly=buyOnly,
            cash_optimizer=cash_optimizer,
            notifyFrequency=notifyFrequency,
            driftThreshold=driftThreshold,
            preferred_currency=preferred_currency,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.currency import Currency
from snaptrade_client.model.percent import Percent
