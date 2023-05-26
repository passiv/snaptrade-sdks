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


class OptionStrategy(
    schemas.DictSchema
):
    """
    This class is auto generated by Konfig (https://konfigthis.com)
    """


    class MetaOapg:
        
        class properties:
            id = schemas.UUIDSchema
        
            @staticmethod
            def underlying_symbol_id() -> typing.Type['UniversalSymbol']:
                return UniversalSymbol
            strategy_type = schemas.StrSchema
            number_of_legs = schemas.NumberSchema
            
            
            class legs(
                schemas.ListSchema
            ):
            
            
                class MetaOapg:
                    
                    
                    class items(
                        schemas.AnyTypeSchema,
                    ):
                    
                    
                        class MetaOapg:
                            
                            class properties:
                                option_symbol_id = schemas.StrSchema
                                index = schemas.NumberSchema
                                action = schemas.StrSchema
                                quantity = schemas.NumberSchema
                                __annotations__ = {
                                    "option_symbol_id": option_symbol_id,
                                    "index": index,
                                    "action": action,
                                    "quantity": quantity,
                                }
                    
                        
                        @typing.overload
                        def __getitem__(self, name: typing_extensions.Literal["option_symbol_id"]) -> MetaOapg.properties.option_symbol_id: ...
                        
                        @typing.overload
                        def __getitem__(self, name: typing_extensions.Literal["index"]) -> MetaOapg.properties.index: ...
                        
                        @typing.overload
                        def __getitem__(self, name: typing_extensions.Literal["action"]) -> MetaOapg.properties.action: ...
                        
                        @typing.overload
                        def __getitem__(self, name: typing_extensions.Literal["quantity"]) -> MetaOapg.properties.quantity: ...
                        
                        @typing.overload
                        def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
                        
                        def __getitem__(self, name: typing.Union[typing_extensions.Literal["option_symbol_id", "index", "action", "quantity", ], str]):
                            # dict_instance[name] accessor
                            return super().__getitem__(name)
                        
                        
                        @typing.overload
                        def get_item_oapg(self, name: typing_extensions.Literal["option_symbol_id"]) -> typing.Union[MetaOapg.properties.option_symbol_id, schemas.Unset]: ...
                        
                        @typing.overload
                        def get_item_oapg(self, name: typing_extensions.Literal["index"]) -> typing.Union[MetaOapg.properties.index, schemas.Unset]: ...
                        
                        @typing.overload
                        def get_item_oapg(self, name: typing_extensions.Literal["action"]) -> typing.Union[MetaOapg.properties.action, schemas.Unset]: ...
                        
                        @typing.overload
                        def get_item_oapg(self, name: typing_extensions.Literal["quantity"]) -> typing.Union[MetaOapg.properties.quantity, schemas.Unset]: ...
                        
                        @typing.overload
                        def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
                        
                        def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["option_symbol_id", "index", "action", "quantity", ], str]):
                            return super().get_item_oapg(name)
                        
                    
                        def __new__(
                            cls,
                            *args: typing.Union[dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
                            option_symbol_id: typing.Union[MetaOapg.properties.option_symbol_id, str, schemas.Unset] = schemas.unset,
                            index: typing.Union[MetaOapg.properties.index, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
                            action: typing.Union[MetaOapg.properties.action, str, schemas.Unset] = schemas.unset,
                            quantity: typing.Union[MetaOapg.properties.quantity, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
                            _configuration: typing.Optional[schemas.Configuration] = None,
                            **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
                        ) -> 'items':
                            return super().__new__(
                                cls,
                                *args,
                                option_symbol_id=option_symbol_id,
                                index=index,
                                action=action,
                                quantity=quantity,
                                _configuration=_configuration,
                                **kwargs,
                            )
            
                def __new__(
                    cls,
                    arg: typing.Union[typing.Tuple[typing.Union[MetaOapg.items, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ]], typing.List[typing.Union[MetaOapg.items, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ]]],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'legs':
                    return super().__new__(
                        cls,
                        arg,
                        _configuration=_configuration,
                    )
            
                def __getitem__(self, i: int) -> MetaOapg.items:
                    return super().__getitem__(i)
            __annotations__ = {
                "id": id,
                "underlying_symbol_id": underlying_symbol_id,
                "strategy_type": strategy_type,
                "number_of_legs": number_of_legs,
                "legs": legs,
            }
        additional_properties = schemas.AnyTypeSchema
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["id"]) -> MetaOapg.properties.id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["underlying_symbol_id"]) -> 'UniversalSymbol': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["strategy_type"]) -> MetaOapg.properties.strategy_type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["number_of_legs"]) -> MetaOapg.properties.number_of_legs: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["legs"]) -> MetaOapg.properties.legs: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> MetaOapg.additional_properties: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["underlying_symbol_id"], typing_extensions.Literal["strategy_type"], typing_extensions.Literal["number_of_legs"], typing_extensions.Literal["legs"], str, ]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["id"]) -> typing.Union[MetaOapg.properties.id, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["underlying_symbol_id"]) -> typing.Union['UniversalSymbol', schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["strategy_type"]) -> typing.Union[MetaOapg.properties.strategy_type, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["number_of_legs"]) -> typing.Union[MetaOapg.properties.number_of_legs, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["legs"]) -> typing.Union[MetaOapg.properties.legs, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[MetaOapg.additional_properties, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["id"], typing_extensions.Literal["underlying_symbol_id"], typing_extensions.Literal["strategy_type"], typing_extensions.Literal["number_of_legs"], typing_extensions.Literal["legs"], str, ]):
        return super().get_item_oapg(name)

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        id: typing.Union[MetaOapg.properties.id, str, uuid.UUID, schemas.Unset] = schemas.unset,
        underlying_symbol_id: typing.Union['UniversalSymbol', schemas.Unset] = schemas.unset,
        strategy_type: typing.Union[MetaOapg.properties.strategy_type, str, schemas.Unset] = schemas.unset,
        number_of_legs: typing.Union[MetaOapg.properties.number_of_legs, decimal.Decimal, int, float, schemas.Unset] = schemas.unset,
        legs: typing.Union[MetaOapg.properties.legs, list, tuple, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[MetaOapg.additional_properties, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader, ],
    ) -> 'OptionStrategy':
        return super().__new__(
            cls,
            *args,
            id=id,
            underlying_symbol_id=underlying_symbol_id,
            strategy_type=strategy_type,
            number_of_legs=number_of_legs,
            legs=legs,
            _configuration=_configuration,
            **kwargs,
        )

from snaptrade_client.model.universal_symbol import UniversalSymbol
