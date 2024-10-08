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


class Brokerage(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)

    Describes a brokerage that SnapTrade supports.
    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
            slug = schemas.StrSchema
            name = schemas.StrSchema
            display_name = schemas.StrSchema
            description = schemas.StrSchema
            aws_s3_logo_url = schemas.StrSchema
            
            
            class aws_s3_square_logo_url(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'url'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'aws_s3_square_logo_url':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            url = schemas.StrSchema
            enabled = schemas.BoolSchema
            maintenance_mode = schemas.BoolSchema
            
            
            class allows_trading(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'allows_trading':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class allows_fractional_units(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'allows_fractional_units':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class has_reporting(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'has_reporting':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            is_real_time_connection = schemas.BoolSchema
        
            @staticmethod
            def brokerage_type() -> typing.Type['BrokerageType']:
                return BrokerageType
        
            @staticmethod
            def exchanges() -> typing.Type['BrokerageExchanges']:
                return BrokerageExchanges
            
            
            class open_url(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'url'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'open_url':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            __annotations__ = {
                "id": id,
                "slug": slug,
                "name": name,
                "display_name": display_name,
                "description": description,
                "aws_s3_logo_url": aws_s3_logo_url,
                "aws_s3_square_logo_url": aws_s3_square_logo_url,
                "url": url,
                "enabled": enabled,
                "maintenance_mode": maintenance_mode,
                "allows_trading": allows_trading,
                "allows_fractional_units": allows_fractional_units,
                "has_reporting": has_reporting,
                "is_real_time_connection": is_real_time_connection,
                "brokerage_type": brokerage_type,
                "exchanges": exchanges,
                "open_url": open_url,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["slug"]) -> MetaOapg.properties.slug: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["display_name"]) -> MetaOapg.properties.display_name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["description"]) -> MetaOapg.properties.description: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aws_s3_logo_url"]) -> MetaOapg.properties.aws_s3_logo_url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aws_s3_square_logo_url"]) -> MetaOapg.properties.aws_s3_square_logo_url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["url"]) -> MetaOapg.properties.url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["enabled"]) -> MetaOapg.properties.enabled: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["maintenance_mode"]) -> MetaOapg.properties.maintenance_mode: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allows_trading"]) -> MetaOapg.properties.allows_trading: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allows_fractional_units"]) -> MetaOapg.properties.allows_fractional_units: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["has_reporting"]) -> MetaOapg.properties.has_reporting: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_real_time_connection"]) -> MetaOapg.properties.is_real_time_connection: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["brokerage_type"]) -> 'BrokerageType': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["exchanges"]) -> 'BrokerageExchanges': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["open_url"]) -> MetaOapg.properties.open_url: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["slug"], typing_extensions.Literal["name"], typing_extensions.Literal["display_name"], typing_extensions.Literal["description"], typing_extensions.Literal["aws_s3_logo_url"], typing_extensions.Literal["aws_s3_square_logo_url"], typing_extensions.Literal["url"], typing_extensions.Literal["enabled"], typing_extensions.Literal["maintenance_mode"], typing_extensions.Literal["allows_trading"], typing_extensions.Literal["allows_fractional_units"], typing_extensions.Literal["has_reporting"], typing_extensions.Literal["is_real_time_connection"], typing_extensions.Literal["brokerage_type"], typing_extensions.Literal["exchanges"], typing_extensions.Literal["open_url"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["slug"]) -> typing.Union[MetaOapg.properties.slug, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["display_name"]) -> typing.Union[MetaOapg.properties.display_name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["description"]) -> typing.Union[MetaOapg.properties.description, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aws_s3_logo_url"]) -> typing.Union[MetaOapg.properties.aws_s3_logo_url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aws_s3_square_logo_url"]) -> typing.Union[MetaOapg.properties.aws_s3_square_logo_url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["url"]) -> typing.Union[MetaOapg.properties.url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["enabled"]) -> typing.Union[MetaOapg.properties.enabled, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["maintenance_mode"]) -> typing.Union[MetaOapg.properties.maintenance_mode, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allows_trading"]) -> typing.Union[MetaOapg.properties.allows_trading, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allows_fractional_units"]) -> typing.Union[MetaOapg.properties.allows_fractional_units, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["has_reporting"]) -> typing.Union[MetaOapg.properties.has_reporting, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_real_time_connection"]) -> typing.Union[MetaOapg.properties.is_real_time_connection, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["brokerage_type"]) -> typing.Union['BrokerageType', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["exchanges"]) -> typing.Union['BrokerageExchanges', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["open_url"]) -> typing.Union[MetaOapg.properties.open_url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["slug"], typing_extensions.Literal["name"], typing_extensions.Literal["display_name"], typing_extensions.Literal["description"], typing_extensions.Literal["aws_s3_logo_url"], typing_extensions.Literal["aws_s3_square_logo_url"], typing_extensions.Literal["url"], typing_extensions.Literal["enabled"], typing_extensions.Literal["maintenance_mode"], typing_extensions.Literal["allows_trading"], typing_extensions.Literal["allows_fractional_units"], typing_extensions.Literal["has_reporting"], typing_extensions.Literal["is_real_time_connection"], typing_extensions.Literal["brokerage_type"], typing_extensions.Literal["exchanges"], typing_extensions.Literal["open_url"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        slug: typing.Union[MetaOapg.properties.slug, str, schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, str, schemas.Unset] = schemas.unset,
        display_name: typing.Union[MetaOapg.properties.display_name, str, schemas.Unset] = schemas.unset,
        description: typing.Union[MetaOapg.properties.description, str, schemas.Unset] = schemas.unset,
        aws_s3_logo_url: typing.Union[MetaOapg.properties.aws_s3_logo_url, str, schemas.Unset] = schemas.unset,
        aws_s3_square_logo_url: typing.Union[MetaOapg.properties.aws_s3_square_logo_url, None, str, schemas.Unset] = schemas.unset,
        url: typing.Union[MetaOapg.properties.url, str, schemas.Unset] = schemas.unset,
        enabled: typing.Union[MetaOapg.properties.enabled, bool, schemas.Unset] = schemas.unset,
        maintenance_mode: typing.Union[MetaOapg.properties.maintenance_mode, bool, schemas.Unset] = schemas.unset,
        allows_trading: typing.Union[MetaOapg.properties.allows_trading, None, bool, schemas.Unset] = schemas.unset,
        allows_fractional_units: typing.Union[MetaOapg.properties.allows_fractional_units, None, bool, schemas.Unset] = schemas.unset,
        has_reporting: typing.Union[MetaOapg.properties.has_reporting, None, bool, schemas.Unset] = schemas.unset,
        is_real_time_connection: typing.Union[MetaOapg.properties.is_real_time_connection, bool, schemas.Unset] = schemas.unset,
        brokerage_type: typing.Union['BrokerageType', schemas.Unset] = schemas.unset,
        exchanges: typing.Union['BrokerageExchanges', schemas.Unset] = schemas.unset,
        open_url: typing.Union[MetaOapg.properties.open_url, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'Brokerage':
        return super().__new__(
            cls,
            *args,
            id=id,
            slug=slug,
            name=name,
            display_name=display_name,
            description=description,
            aws_s3_logo_url=aws_s3_logo_url,
            aws_s3_square_logo_url=aws_s3_square_logo_url,
            url=url,
            enabled=enabled,
            maintenance_mode=maintenance_mode,
            allows_trading=allows_trading,
            allows_fractional_units=allows_fractional_units,
            has_reporting=has_reporting,
            is_real_time_connection=is_real_time_connection,
            brokerage_type=brokerage_type,
            exchanges=exchanges,
            open_url=open_url,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.brokerage_exchanges import BrokerageExchanges
from snaptrade_client.model.brokerage_type import BrokerageType
