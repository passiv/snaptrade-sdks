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

from snaptrade_client.model.model400_failed_request_response import Model400FailedRequestResponse as Model400FailedRequestResponseSchema
from snaptrade_client.model.mleg_leg import MlegLeg as MlegLegSchema
from snaptrade_client.model.mleg_order_type_strict import MlegOrderTypeStrict as MlegOrderTypeStrictSchema
from snaptrade_client.model.time_in_force_strict import TimeInForceStrict as TimeInForceStrictSchema
from snaptrade_client.model.mleg_order_response import MlegOrderResponse as MlegOrderResponseSchema

from snaptrade_client.type.mleg_leg import MlegLeg
from snaptrade_client.type.mleg_order_type_strict import MlegOrderTypeStrict
from snaptrade_client.type.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.mleg_order_response import MlegOrderResponse

from . import path

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
            "time_in_force",
            "legs",
            "order_type",
        }
        
        class properties:
        
            @staticmethod
            def order_type() -> typing.Type['MlegOrderTypeStrict']:
                return MlegOrderTypeStrict
        
            @staticmethod
            def time_in_force() -> typing.Type['TimeInForceStrict']:
                return TimeInForceStrict
            
            
            class limit_price(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'decimal'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'limit_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class stop_price(
                schemas.StrBase,
                schemas.NoneBase,
                schemas.Schema,
                schemas.NoneStrMixin
            ):
            
            
                class MetaOapg:
                    format = 'decimal'
            
            
                def __new__(
                    cls,
                    *args: typing.Union[None, str, ],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'stop_price':
                    return super().__new__(
                        cls,
                        *args,
                        _configuration=_configuration,
                    )
            
            
            class legs(
                schemas.ListSchema
            ):
            
            
                class MetaOapg:
                    
                    @staticmethod
                    def items() -> typing.Type['MlegLegSchema']:
                        return MlegLegSchema
            
                def __new__(
                    cls,
                    arg: typing.Union[typing.Tuple['MlegLeg'], typing.List['MlegLeg']],
                    _configuration: typing.Optional[schemas.Configuration] = None,
                ) -> 'legs':
                    return super().__new__(
                        cls,
                        arg,
                        _configuration=_configuration,
                    )
            
                def __getitem__(self, i: int) -> 'MlegLeg':
                    return super().__getitem__(i)
            __annotations__ = {
                "order_type": order_type,
                "time_in_force": time_in_force,
                "limit_price": limit_price,
                "stop_price": stop_price,
                "legs": legs,
            }
    
    time_in_force: 'TimeInForceStrict'
    legs: MetaOapg.properties.legs
    order_type: 'MlegOrderTypeStrict'
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["order_type"]) -> 'MlegOrderTypeStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["limit_price"]) -> MetaOapg.properties.limit_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["stop_price"]) -> MetaOapg.properties.stop_price: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["legs"]) -> MetaOapg.properties.legs: ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["order_type", "time_in_force", "limit_price", "stop_price", "legs", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["order_type"]) -> 'MlegOrderTypeStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["time_in_force"]) -> 'TimeInForceStrict': ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["limit_price"]) -> typing.Union[MetaOapg.properties.limit_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["stop_price"]) -> typing.Union[MetaOapg.properties.stop_price, schemas.Unset]: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["legs"]) -> MetaOapg.properties.legs: ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["order_type", "time_in_force", "limit_price", "stop_price", "legs", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        time_in_force: 'TimeInForceStrict',
        legs: typing.Union[MetaOapg.properties.legs, list, tuple, ],
        order_type: 'MlegOrderTypeStrict',
        limit_price: typing.Union[MetaOapg.properties.limit_price, None, str, schemas.Unset] = schemas.unset,
        stop_price: typing.Union[MetaOapg.properties.stop_price, None, str, schemas.Unset] = schemas.unset,
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'SchemaForRequestBodyApplicationJson':
        return super().__new__(
            cls,
            *args,
            time_in_force=time_in_force,
            legs=legs,
            order_type=order_type,
            limit_price=limit_price,
            stop_price=stop_price,
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
_auth = [
    'PartnerClientId',
    'PartnerSignature',
    'PartnerTimestamp',
]
SchemaFor200ResponseBodyApplicationJson = MlegOrderResponseSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: MlegOrderResponse


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: MlegOrderResponse


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
_status_code_to_response = {
    '200': _response_for_200,
    '400': _response_for_400,
    '500': _response_for_500,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _place_mleg_order_mapped_args(
        self,
        body: typing.Optional[typing.Any] = None,
        order_type: typing.Optional[MlegOrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        legs: typing.Optional[typing.List[MlegLeg]] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        _path_params = {}
        _body = {}
        if order_type is not None:
            _body["order_type"] = order_type
        if time_in_force is not None:
            _body["time_in_force"] = time_in_force
        if limit_price is not None:
            _body["limit_price"] = limit_price
        if stop_price is not None:
            _body["stop_price"] = stop_price
        if legs is not None:
            _body["legs"] = legs
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

    async def _aplace_mleg_order_oapg(
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
        Place multi-leg option order
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
            path_template='/accounts/{accountId}/trading/options',
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


    def _place_mleg_order_oapg(
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
        Place multi-leg option order
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
            path_template='/accounts/{accountId}/trading/options',
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


class PlaceMlegOrder(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aplace_mleg_order(
        self,
        body: typing.Optional[typing.Any] = None,
        order_type: typing.Optional[MlegOrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        legs: typing.Optional[typing.List[MlegLeg]] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._place_mleg_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            order_type=order_type,
            time_in_force=time_in_force,
            legs=legs,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
        )
        return await self._aplace_mleg_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def place_mleg_order(
        self,
        body: typing.Optional[typing.Any] = None,
        order_type: typing.Optional[MlegOrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        legs: typing.Optional[typing.List[MlegLeg]] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support  """
        args = self._place_mleg_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            order_type=order_type,
            time_in_force=time_in_force,
            legs=legs,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
        )
        return self._place_mleg_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[typing.Any] = None,
        order_type: typing.Optional[MlegOrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        legs: typing.Optional[typing.List[MlegLeg]] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._place_mleg_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            order_type=order_type,
            time_in_force=time_in_force,
            legs=legs,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
        )
        return await self._aplace_mleg_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def post(
        self,
        body: typing.Optional[typing.Any] = None,
        order_type: typing.Optional[MlegOrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        legs: typing.Optional[typing.List[MlegLeg]] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        account_id: typing.Optional[str] = None,
        limit_price: typing.Optional[typing.Optional[str]] = None,
        stop_price: typing.Optional[typing.Optional[str]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support  """
        args = self._place_mleg_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            order_type=order_type,
            time_in_force=time_in_force,
            legs=legs,
            user_id=user_id,
            user_secret=user_secret,
            account_id=account_id,
            limit_price=limit_price,
            stop_price=stop_price,
        )
        return self._place_mleg_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

