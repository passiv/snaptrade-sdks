# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from dataclasses import dataclass
import typing_extensions
import urllib3
from snaptrade_client.request_before_hook import request_before_hook
import json
from urllib3._collections import HTTPHeaderDict

from snaptrade_client.api_response import AsyncGeneratorResponse
from snaptrade_client import api_client, exceptions
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

from snaptrade_client.model.trading_instrument import TradingInstrument as TradingInstrumentSchema
from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse as Model400FailedRequestResponseSchema
from snaptrade_client.model.action_strict import ActionStrict as ActionStrictSchema
from snaptrade_client.model.simple_order_preview import SimpleOrderPreview as SimpleOrderPreviewSchema

from snaptrade_client.type.trading_instrument import TradingInstrument
from snaptrade_client.type.simple_order_preview import SimpleOrderPreview
from snaptrade_client.type.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.type.action_strict import ActionStrict

# Query params
UserIdSchema = schemas.StrSchema
UserSecretSchema = schemas.StrSchema
RequestRequiredQueryParams = typing_extensions.TypedDict(
    'RequestRequiredQueryParams',
    {
        'userId': typing.Union[UserIdSchema, str, ],
        'userSecret': typing.Union[UserSecretSchema, str, ],
    }
)
RequestOptionalQueryParams = typing_extensions.TypedDict(
    'RequestOptionalQueryParams',
    {
    },
    total=False
)


class RequestQueryParams(RequestRequiredQueryParams, RequestOptionalQueryParams):
    pass


request_query_user_id = api_client.QueryParameter(
    name="userId",
    style=api_client.ParameterStyle.FORM,
    schema=UserIdSchema,
    required=True,
    explode=True,
)
request_query_user_secret = api_client.QueryParameter(
    name="userSecret",
    style=api_client.ParameterStyle.FORM,
    schema=UserSecretSchema,
    required=True,
    explode=True,
)
# Path params
AccountIdSchema = schemas.UUIDSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'accountId': typing.Union[AccountIdSchema, str, uuid.UUID, ],
    }
)
RequestOptionalPathParams = typing_extensions.TypedDict(
    'RequestOptionalPathParams',
    {
    },
    total=False
)


class RequestPathParams(RequestRequiredPathParams, RequestOptionalPathParams):
    pass


request_path_account_id = api_client.PathParameter(
    name="accountId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=AccountIdSchema,
    required=True,
)
# body param


class SchemaForRequestBodyApplicationJson(
    schemas.DictSchema
):


    class MetaOapg:
        required = {
            "amount",
            "side",
            "time_in_force",
            "instrument",
            "type",
        }
        
        class properties:
        
            @staticmethod
            def instrument() -> typing.Type['TradingInstrument']:
                return TradingInstrument
        
            @staticmethod
            def side() -> typing.Type['ActionStrict']:
                return ActionStrict
            
            
            class type(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def MARKET(cls):
                    return cls("MARKET")
                
                @schemas.classproperty
                def LIMIT(cls):
                    return cls("LIMIT")
                
                @schemas.classproperty
                def STOP_LOSS_MARKET(cls):
                    return cls("STOP_LOSS_MARKET")
                
                @schemas.classproperty
                def STOP_LOSS_LIMIT(cls):
                    return cls("STOP_LOSS_LIMIT")
                
                @schemas.classproperty
                def TAKE_PROFIT_MARKET(cls):
                    return cls("TAKE_PROFIT_MARKET")
                
                @schemas.classproperty
                def TAKE_PROFIT_LIMIT(cls):
                    return cls("TAKE_PROFIT_LIMIT")
            
            
            class time_in_force(
                schemas.EnumBase,
                schemas.StrSchema
            ):
                
                @schemas.classproperty
                def GTC(cls):
                    return cls("GTC")
                
                @schemas.classproperty
                def FOK(cls):
                    return cls("FOK")
                
                @schemas.classproperty
                def IOC(cls):
                    return cls("IOC")
                
                @schemas.classproperty
                def GTD(cls):
                    return cls("GTD")
            amount = schemas.StrSchema
            limit_price = schemas.StrSchema
            stop_price = schemas.StrSchema
            post_only = schemas.BoolSchema
            expiration_date = schemas.DateTimeSchema
            __annotations__ = {
                "instrument": instrument,
                "side": side,
                "type": type,
                "time_in_force": time_in_force,
                "amount": amount,
                "limit_price": limit_price,
                "stop_price": stop_price,
                "post_only": post_only,
                "expiration_date": expiration_date,
            }
    
    amount: MetaOapg.properties.amount
    side: 'ActionStrict'
    time_in_force: MetaOapg.properties.time_in_force
    instrument: 'TradingInstrument'
    type: MetaOapg.properties.type
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["instrument"]) -> 'TradingInstrument': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["side"]) -> 'ActionStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["time_in_force"]) -> MetaOapg.properties.time_in_force: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["amount"]) -> MetaOapg.properties.amount: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["limit_price"]) -> MetaOapg.properties.limit_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["stop_price"]) -> MetaOapg.properties.stop_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["post_only"]) -> MetaOapg.properties.post_only: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["expiration_date"]) -> MetaOapg.properties.expiration_date: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["instrument", "side", "type", "time_in_force", "amount", "limit_price", "stop_price", "post_only", "expiration_date", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["instrument"]) -> 'TradingInstrument': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["side"]) -> 'ActionStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["type"]) -> MetaOapg.properties.type: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["time_in_force"]) -> MetaOapg.properties.time_in_force: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["amount"]) -> MetaOapg.properties.amount: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["limit_price"]) -> typing.Union[MetaOapg.properties.limit_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["stop_price"]) -> typing.Union[MetaOapg.properties.stop_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["post_only"]) -> typing.Union[MetaOapg.properties.post_only, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["expiration_date"]) -> typing.Union[MetaOapg.properties.expiration_date, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["instrument", "side", "type", "time_in_force", "amount", "limit_price", "stop_price", "post_only", "expiration_date", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        amount: typing.Union[MetaOapg.properties.amount, str, ],
        side: 'ActionStrict',
        time_in_force: typing.Union[MetaOapg.properties.time_in_force, str, ],
        instrument: 'TradingInstrument',
        type: typing.Union[MetaOapg.properties.type, str, ],
        limit_price: typing.Union[MetaOapg.properties.limit_price, str, schemas.Unset] = schemas.unset,
        stop_price: typing.Union[MetaOapg.properties.stop_price, str, schemas.Unset] = schemas.unset,
        post_only: typing.Union[MetaOapg.properties.post_only, bool, schemas.Unset] = schemas.unset,
        expiration_date: typing.Union[MetaOapg.properties.expiration_date, str, datetime, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'SchemaForRequestBodyApplicationJson':
        return super().__new__(
            cls,
            *args,
            amount=amount,
            side=side,
            time_in_force=time_in_force,
            instrument=instrument,
            type=type,
            limit_price=limit_price,
            stop_price=stop_price,
            post_only=post_only,
            expiration_date=expiration_date,
            _configuration=_configuration,
            **kwargs,
        )


request_body_typing_any = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
SchemaFor200ResponseBodyApplicationJson = SimpleOrderPreviewSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: SimpleOrderPreview


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: SimpleOrderPreview


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor400ResponseBodyApplicationJson = Model400FailedRequestResponseSchema


@dataclass
class ApiResponseFor400(api_client.ApiResponse):
    body: Model400FailedRequestResponse


@dataclass
class ApiResponseFor400Async(api_client.AsyncApiResponse):
    body: Model400FailedRequestResponse


_response_for_400 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor400,
    response_cls_async=ApiResponseFor400Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor400ResponseBodyApplicationJson),
    },
)


@dataclass
class ApiResponseFor500(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor500Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_500 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor500,
    response_cls_async=ApiResponseFor500Async,
)
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _preview_simple_order_mapped_args(
        self,
        body: typing.Optional[typing.Any] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        side: typing.Optional[ActionStrict] = None,
        type: typing.Optional[str] = None,
        time_in_force: typing.Optional[str] = None,
        amount: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[str] = None,
        stop_price: typing.Optional[str] = None,
        post_only: typing.Optional[bool] = None,
        expiration_date: typing.Optional[datetime] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        _path_params = {}
        _body = {}
        if instrument is not None:
            _body["instrument"] = instrument
        if side is not None:
            _body["side"] = side
        if type is not None:
            _body["type"] = type
        if time_in_force is not None:
            _body["time_in_force"] = time_in_force
        if amount is not None:
            _body["amount"] = amount
        if limit_price is not None:
            _body["limit_price"] = limit_price
        if stop_price is not None:
            _body["stop_price"] = stop_price
        if post_only is not None:
            _body["post_only"] = post_only
        if expiration_date is not None:
            _body["expiration_date"] = expiration_date
        args.body = body if body is not None else _body
        if user_id is not None:
            _query_params["userId"] = user_id
        if user_secret is not None:
            _query_params["userSecret"] = user_secret
        if account_id is not None:
            _path_params["accountId"] = account_id
        args.query = query_params if query_params else _query_params
        args.path = path_params if path_params else _path_params
        return args

    async def _apreview_simple_order_oapg(
        self,
        body: typing.Any = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Preview order
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_account_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
    
        prefix_separator_iterator = None
        for parameter in (
            request_query_user_id,
            request_query_user_secret,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/accounts/{accountId}/trading/simple/preview',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_typing_any.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
            prefix_separator_iterator=prefix_separator_iterator,
            timeout=timeout,
            **kwargs
        )
    
        if stream:
            if not 200 <= response.http_response.status <= 299:
                body = (await response.http_response.content.read()).decode("utf-8")
                raise exceptions.ApiStreamingException(
                    status=response.http_response.status,
                    reason=response.http_response.reason,
                    body=body,
                )
    
            async def stream_iterator():
                """
                iterates over response.http_response.content and closes connection once iteration has finished
                """
                async for line in response.http_response.content:
                    if line == b'\r\n':
                        continue
                    yield line
                response.http_response.close()
                await response.session.close()
            return AsyncGeneratorResponse(
                content=stream_iterator(),
                headers=response.http_response.headers,
                status=response.http_response.status,
                response=response.http_response
            )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = await response_for_status.deserialize_async(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserializationAsync(
                body=await response.http_response.json() if is_json else await response.http_response.text(),
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        # cleanup session / response
        response.http_response.close()
        await response.session.close()
    
        return api_response


    def _preview_simple_order_oapg(
        self,
        body: typing.Any = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Preview order
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_account_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
    
        prefix_separator_iterator = None
        for parameter in (
            request_query_user_id,
            request_query_user_secret,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'post'.upper()
        _headers.add('Content-Type', content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/accounts/{accountId}/trading/simple/preview',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_typing_any.serialize(body, content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
            prefix_separator_iterator=prefix_separator_iterator,
            timeout=timeout,
        )
    
        response_for_status = _status_code_to_response.get(str(response.http_response.status))
        if response_for_status:
            api_response = response_for_status.deserialize(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
        else:
            # If response data is JSON then deserialize for SDK consumer convenience
            is_json = api_client.JSONDetector._content_type_is_json(response.http_response.headers.get('Content-Type', ''))
            api_response = api_client.ApiResponseWithoutDeserialization(
                body=json.loads(response.http_response.data) if is_json else response.http_response.data,
                response=response.http_response,
                round_trip_time=response.round_trip_time,
                status=response.http_response.status,
                headers=response.http_response.headers,
            )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        return api_response


class PreviewSimpleOrder(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def apreview_simple_order(
        self,
        body: typing.Optional[typing.Any] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        side: typing.Optional[ActionStrict] = None,
        type: typing.Optional[str] = None,
        time_in_force: typing.Optional[str] = None,
        amount: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[str] = None,
        stop_price: typing.Optional[str] = None,
        post_only: typing.Optional[bool] = None,
        expiration_date: typing.Optional[datetime] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._preview_simple_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            instrument=instrument,
            side=side,
            type=type,
            time_in_force=time_in_force,
            amount=amount,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
            post_only=post_only,
            expiration_date=expiration_date,
        )
        return await self._apreview_simple_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def preview_simple_order(
        self,
        body: typing.Optional[typing.Any] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        side: typing.Optional[ActionStrict] = None,
        type: typing.Optional[str] = None,
        time_in_force: typing.Optional[str] = None,
        amount: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[str] = None,
        stop_price: typing.Optional[str] = None,
        post_only: typing.Optional[bool] = None,
        expiration_date: typing.Optional[datetime] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Previews an order using the specified account.  """
        args = self._preview_simple_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            instrument=instrument,
            side=side,
            type=type,
            time_in_force=time_in_force,
            amount=amount,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
            post_only=post_only,
            expiration_date=expiration_date,
        )
        return self._preview_simple_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[typing.Any] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        side: typing.Optional[ActionStrict] = None,
        type: typing.Optional[str] = None,
        time_in_force: typing.Optional[str] = None,
        amount: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[str] = None,
        stop_price: typing.Optional[str] = None,
        post_only: typing.Optional[bool] = None,
        expiration_date: typing.Optional[datetime] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._preview_simple_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            instrument=instrument,
            side=side,
            type=type,
            time_in_force=time_in_force,
            amount=amount,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
            post_only=post_only,
            expiration_date=expiration_date,
        )
        return await self._apreview_simple_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def post(
        self,
        body: typing.Optional[typing.Any] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        side: typing.Optional[ActionStrict] = None,
        type: typing.Optional[str] = None,
        time_in_force: typing.Optional[str] = None,
        amount: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[str] = None,
        stop_price: typing.Optional[str] = None,
        post_only: typing.Optional[bool] = None,
        expiration_date: typing.Optional[datetime] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Previews an order using the specified account.  """
        args = self._preview_simple_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            instrument=instrument,
            side=side,
            type=type,
            time_in_force=time_in_force,
            amount=amount,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
            post_only=post_only,
            expiration_date=expiration_date,
        )
        return self._preview_simple_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

