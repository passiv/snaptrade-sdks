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


class UniversalActivity(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    A transaction or activity from an institution
    """


    class MetaOapg:
        
        class properties:
            id = schemas.StrSchema
        
            @staticmethod
            def account() -> typing.Type['AccountSimple']:
                return AccountSimple
            
            
            class amount(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'amount':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def currency() -> typing.Type['Currency']:
                return Currency
            description = schemas.StrSchema
            fee = schemas.NumberSchema
            
            
            class fx_rate(
                schemas.NumberBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneDecimalMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, decimal.Decimal, int, float, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'fx_rate':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            institution = schemas.StrSchema
            option_type = schemas.StrSchema
            price = schemas.NumberSchema
            settlement_date = schemas.StrSchema
            
            
            class external_reference_id(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'external_reference_id':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
        
            @staticmethod
            def symbol() -> typing.Type['Symbol']:
                return Symbol
        
            @staticmethod
            def option_symbol() -> typing.Type['OptionsSymbol']:
                return OptionsSymbol
            
            
            class trade_date(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'trade_date':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            type = schemas.StrSchema
            units = schemas.NumberSchema
            __annotations__ = {
                "id": id,
                "account": account,
                "amount": amount,
                "currency": currency,
                "description": description,
                "fee": fee,
                "fx_rate": fx_rate,
                "institution": institution,
                "option_type": option_type,
                "price": price,
                "settlement_date": settlement_date,
                "external_reference_id": external_reference_id,
                "symbol": symbol,
                "option_symbol": option_symbol,
                "trade_date": trade_date,
                "type": type,
                "units": units,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["account"]) -> 'AccountSimple': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["amount"]) -> MetaOapg.properties.amount: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["currency"]) -> 'Currency': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["description"]) -> MetaOapg.properties.description: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fee"]) -> MetaOapg.properties.fee: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["fx_rate"]) -> MetaOapg.properties.fx_rate: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["institution"]) -> MetaOapg.properties.institution: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["option_type"]) -> MetaOapg.properties.option_type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["price"]) -> MetaOapg.properties.price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["settlement_date"]) -> MetaOapg.properties.settlement_date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["external_reference_id"]) -> MetaOapg.properties.external_reference_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> 'Symbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["option_symbol"]) -> 'OptionsSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["trade_date"]) -> MetaOapg.properties.trade_date: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["units"]) -> MetaOapg.properties.units: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["account"], typing_extensions.Literal["amount"], typing_extensions.Literal["currency"], typing_extensions.Literal["description"], typing_extensions.Literal["fee"], typing_extensions.Literal["fx_rate"], typing_extensions.Literal["institution"], typing_extensions.Literal["option_type"], typing_extensions.Literal["price"], typing_extensions.Literal["settlement_date"], typing_extensions.Literal["external_reference_id"], typing_extensions.Literal["symbol"], typing_extensions.Literal["option_symbol"], typing_extensions.Literal["trade_date"], typing_extensions.Literal["type"], typing_extensions.Literal["units"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["account"]) -> typing.Union['AccountSimple', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["amount"]) -> typing.Union[MetaOapg.properties.amount, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["currency"]) -> typing.Union['Currency', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["description"]) -> typing.Union[MetaOapg.properties.description, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fee"]) -> typing.Union[MetaOapg.properties.fee, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["fx_rate"]) -> typing.Union[MetaOapg.properties.fx_rate, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["institution"]) -> typing.Union[MetaOapg.properties.institution, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["option_type"]) -> typing.Union[MetaOapg.properties.option_type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["price"]) -> typing.Union[MetaOapg.properties.price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["settlement_date"]) -> typing.Union[MetaOapg.properties.settlement_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["external_reference_id"]) -> typing.Union[MetaOapg.properties.external_reference_id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> typing.Union['Symbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["option_symbol"]) -> typing.Union['OptionsSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["trade_date"]) -> typing.Union[MetaOapg.properties.trade_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["type"]) -> typing.Union[MetaOapg.properties.type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["units"]) -> typing.Union[MetaOapg.properties.units, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["account"], typing_extensions.Literal["amount"], typing_extensions.Literal["currency"], typing_extensions.Literal["description"], typing_extensions.Literal["fee"], typing_extensions.Literal["fx_rate"], typing_extensions.Literal["institution"], typing_extensions.Literal["option_type"], typing_extensions.Literal["price"], typing_extensions.Literal["settlement_date"], typing_extensions.Literal["external_reference_id"], typing_extensions.Literal["symbol"], typing_extensions.Literal["option_symbol"], typing_extensions.Literal["trade_date"], typing_extensions.Literal["type"], typing_extensions.Literal["units"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, schemas.Unset] = schemas.unset,
        account: typing.Union['AccountSimple', schemas.Unset] = schemas.unset,
        amount: typing.Union[MetaOapg.properties.amount, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        currency: typing.Union['Currency', schemas.Unset] = schemas.unset,
        description: typing.Union[MetaOapg.properties.description, str, schemas.Unset] = schemas.unset,
        fee: typing.Union[MetaOapg.properties.fee, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        fx_rate: typing.Union[MetaOapg.properties.fx_rate, None, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        institution: typing.Union[MetaOapg.properties.institution, str, schemas.Unset] = schemas.unset,
        option_type: typing.Union[MetaOapg.properties.option_type, str, schemas.Unset] = schemas.unset,
        price: typing.Union[MetaOapg.properties.price, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        settlement_date: typing.Union[MetaOapg.properties.settlement_date, str, schemas.Unset] = schemas.unset,
        external_reference_id: typing.Union[MetaOapg.properties.external_reference_id, None, str, schemas.Unset] = schemas.unset,
        symbol: typing.Union['Symbol', schemas.Unset] = schemas.unset,
        option_symbol: typing.Union['OptionsSymbol', schemas.Unset] = schemas.unset,
        trade_date: typing.Union[MetaOapg.properties.trade_date, None, str, schemas.Unset] = schemas.unset,
        type: typing.Union[MetaOapg.properties.type, str, schemas.Unset] = schemas.unset,
        units: typing.Union[MetaOapg.properties.units, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'UniversalActivity':
        return super().__new__(
            cls,
            *args,
            id=id,
            account=account,
            amount=amount,
            currency=currency,
            description=description,
            fee=fee,
            fx_rate=fx_rate,
            institution=institution,
            option_type=option_type,
            price=price,
            settlement_date=settlement_date,
            external_reference_id=external_reference_id,
            symbol=symbol,
            option_symbol=option_symbol,
            trade_date=trade_date,
            type=type,
            units=units,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.account_simple import AccountSimple
from snaptrade_client.model.currency import Currency
from snaptrade_client.model.options_symbol import OptionsSymbol
from snaptrade_client.model.symbol import Symbol
