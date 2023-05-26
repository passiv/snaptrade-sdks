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
    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
            name = schemas.StrSchema
            display_name = schemas.StrSchema
            description = schemas.StrSchema
            aws_s3_logo_url = schemas.StrSchema
            slug = schemas.StrSchema
            url = schemas.StrSchema
            enabled = schemas.BoolSchema
            maintenance_mode = schemas.BoolSchema
            
            
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
            
            
            class allows_trading_through_snaptrade_api(
                schemas.BoolBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneBoolMixin
            ):
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, bool, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'allows_trading_through_snaptrade_api':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            is_scraping_integration = schemas.BoolSchema
            default_currency = schemas.UUIDSchema
        
            @staticmethod
            def brokerage_type() -> typing.Type['BrokerageType']:
                return BrokerageType
            
            
            class exchanges(
                schemas.ListSchema
            ):
            
            
                class MetaOapg:
                    items = schemas.AnyTypeSchema
            
                def __new__(
                    cls,
                    arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ]], typing.List[typing.Union[MetaOapg.items, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ]]],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'exchanges':
                    return super().__new__(
                        cls,
                        arg,
                        _configuration=_configuration,
                    )
            
                def __getitem__(self, i: int) -> MetaOapg.items:
                    return super().__getitem__(i)
            __annotations__ = {
                "id": id,
                "name": name,
                "display_name": display_name,
                "description": description,
                "aws_s3_logo_url": aws_s3_logo_url,
                "slug": slug,
                "url": url,
                "enabled": enabled,
                "maintenance_mode": maintenance_mode,
                "allows_fractional_units": allows_fractional_units,
                "allows_trading": allows_trading,
                "has_reporting": has_reporting,
                "is_real_time_connection": is_real_time_connection,
                "allows_trading_through_snaptrade_api": allows_trading_through_snaptrade_api,
                "is_scraping_integration": is_scraping_integration,
                "default_currency": default_currency,
                "brokerage_type": brokerage_type,
                "exchanges": exchanges,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["name"]) -> MetaOapg.properties.name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["display_name"]) -> MetaOapg.properties.display_name: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["description"]) -> MetaOapg.properties.description: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["aws_s3_logo_url"]) -> MetaOapg.properties.aws_s3_logo_url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["slug"]) -> MetaOapg.properties.slug: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["url"]) -> MetaOapg.properties.url: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["enabled"]) -> MetaOapg.properties.enabled: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["maintenance_mode"]) -> MetaOapg.properties.maintenance_mode: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allows_fractional_units"]) -> MetaOapg.properties.allows_fractional_units: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allows_trading"]) -> MetaOapg.properties.allows_trading: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["has_reporting"]) -> MetaOapg.properties.has_reporting: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_real_time_connection"]) -> MetaOapg.properties.is_real_time_connection: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["allows_trading_through_snaptrade_api"]) -> MetaOapg.properties.allows_trading_through_snaptrade_api: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["is_scraping_integration"]) -> MetaOapg.properties.is_scraping_integration: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["default_currency"]) -> MetaOapg.properties.default_currency: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["brokerage_type"]) -> 'BrokerageType': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["exchanges"]) -> MetaOapg.properties.exchanges: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["name"], typing_extensions.Literal["display_name"], typing_extensions.Literal["description"], typing_extensions.Literal["aws_s3_logo_url"], typing_extensions.Literal["slug"], typing_extensions.Literal["url"], typing_extensions.Literal["enabled"], typing_extensions.Literal["maintenance_mode"], typing_extensions.Literal["allows_fractional_units"], typing_extensions.Literal["allows_trading"], typing_extensions.Literal["has_reporting"], typing_extensions.Literal["is_real_time_connection"], typing_extensions.Literal["allows_trading_through_snaptrade_api"], typing_extensions.Literal["is_scraping_integration"], typing_extensions.Literal["default_currency"], typing_extensions.Literal["brokerage_type"], typing_extensions.Literal["exchanges"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["name"]) -> typing.Union[MetaOapg.properties.name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["display_name"]) -> typing.Union[MetaOapg.properties.display_name, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["description"]) -> typing.Union[MetaOapg.properties.description, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["aws_s3_logo_url"]) -> typing.Union[MetaOapg.properties.aws_s3_logo_url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["slug"]) -> typing.Union[MetaOapg.properties.slug, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["url"]) -> typing.Union[MetaOapg.properties.url, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["enabled"]) -> typing.Union[MetaOapg.properties.enabled, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["maintenance_mode"]) -> typing.Union[MetaOapg.properties.maintenance_mode, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allows_fractional_units"]) -> typing.Union[MetaOapg.properties.allows_fractional_units, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allows_trading"]) -> typing.Union[MetaOapg.properties.allows_trading, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["has_reporting"]) -> typing.Union[MetaOapg.properties.has_reporting, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_real_time_connection"]) -> typing.Union[MetaOapg.properties.is_real_time_connection, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["allows_trading_through_snaptrade_api"]) -> typing.Union[MetaOapg.properties.allows_trading_through_snaptrade_api, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["is_scraping_integration"]) -> typing.Union[MetaOapg.properties.is_scraping_integration, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["default_currency"]) -> typing.Union[MetaOapg.properties.default_currency, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["brokerage_type"]) -> typing.Union['BrokerageType', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["exchanges"]) -> typing.Union[MetaOapg.properties.exchanges, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["name"], typing_extensions.Literal["display_name"], typing_extensions.Literal["description"], typing_extensions.Literal["aws_s3_logo_url"], typing_extensions.Literal["slug"], typing_extensions.Literal["url"], typing_extensions.Literal["enabled"], typing_extensions.Literal["maintenance_mode"], typing_extensions.Literal["allows_fractional_units"], typing_extensions.Literal["allows_trading"], typing_extensions.Literal["has_reporting"], typing_extensions.Literal["is_real_time_connection"], typing_extensions.Literal["allows_trading_through_snaptrade_api"], typing_extensions.Literal["is_scraping_integration"], typing_extensions.Literal["default_currency"], typing_extensions.Literal["brokerage_type"], typing_extensions.Literal["exchanges"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        name: typing.Union[MetaOapg.properties.name, str, schemas.Unset] = schemas.unset,
        display_name: typing.Union[MetaOapg.properties.display_name, str, schemas.Unset] = schemas.unset,
        description: typing.Union[MetaOapg.properties.description, str, schemas.Unset] = schemas.unset,
        aws_s3_logo_url: typing.Union[MetaOapg.properties.aws_s3_logo_url, str, schemas.Unset] = schemas.unset,
        slug: typing.Union[MetaOapg.properties.slug, str, schemas.Unset] = schemas.unset,
        url: typing.Union[MetaOapg.properties.url, str, schemas.Unset] = schemas.unset,
        enabled: typing.Union[MetaOapg.properties.enabled, bool, schemas.Unset] = schemas.unset,
        maintenance_mode: typing.Union[MetaOapg.properties.maintenance_mode, bool, schemas.Unset] = schemas.unset,
        allows_fractional_units: typing.Union[MetaOapg.properties.allows_fractional_units, None, bool, schemas.Unset] = schemas.unset,
        allows_trading: typing.Union[MetaOapg.properties.allows_trading, None, bool, schemas.Unset] = schemas.unset,
        has_reporting: typing.Union[MetaOapg.properties.has_reporting, None, bool, schemas.Unset] = schemas.unset,
        is_real_time_connection: typing.Union[MetaOapg.properties.is_real_time_connection, bool, schemas.Unset] = schemas.unset,
        allows_trading_through_snaptrade_api: typing.Union[MetaOapg.properties.allows_trading_through_snaptrade_api, None, bool, schemas.Unset] = schemas.unset,
        is_scraping_integration: typing.Union[MetaOapg.properties.is_scraping_integration, bool, schemas.Unset] = schemas.unset,
        default_currency: typing.Union[MetaOapg.properties.default_currency, str, uuid.UUID, schemas.Unset] = schemas.unset,
        brokerage_type: typing.Union['BrokerageType', schemas.Unset] = schemas.unset,
        exchanges: typing.Union[MetaOapg.properties.exchanges, list, tuple, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'Brokerage':
        return super().__new__(
            cls,
            *args,
            id=id,
            name=name,
            display_name=display_name,
            description=description,
            aws_s3_logo_url=aws_s3_logo_url,
            slug=slug,
            url=url,
            enabled=enabled,
            maintenance_mode=maintenance_mode,
            allows_fractional_units=allows_fractional_units,
            allows_trading=allows_trading,
            has_reporting=has_reporting,
            is_real_time_connection=is_real_time_connection,
            allows_trading_through_snaptrade_api=allows_trading_through_snaptrade_api,
            is_scraping_integration=is_scraping_integration,
            default_currency=default_currency,
            brokerage_type=brokerage_type,
            exchanges=exchanges,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.brokerage_type import BrokerageType
