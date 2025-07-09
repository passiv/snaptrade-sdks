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
from snaptrade_client.model.take_profit import TakeProfit as TakeProfitSchema
from snaptrade_client.model.stop_loss import StopLoss as StopLossSchema
from snaptrade_client.model.account_order_record import AccountOrderRecord as AccountOrderRecordSchema
from snaptrade_client.model.manual_trade_form_bracket import ManualTradeFormBracket as ManualTradeFormBracketSchema
from snaptrade_client.model.model403_failed_request_response import Model403FailedRequestResponse as Model403FailedRequestResponseSchema
from snaptrade_client.model.action_strict_with_options import ActionStrictWithOptions as ActionStrictWithOptionsSchema
from snaptrade_client.model.time_in_force_strict import TimeInForceStrict as TimeInForceStrictSchema
from snaptrade_client.model.order_type_strict import OrderTypeStrict as OrderTypeStrictSchema

from snaptrade_client.type.manual_trade_form_bracket import ManualTradeFormBracket
from snaptrade_client.type.trading_instrument import TradingInstrument
from snaptrade_client.type.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.type.take_profit import TakeProfit
from snaptrade_client.type.time_in_force_strict import TimeInForceStrict
from snaptrade_client.type.stop_loss import StopLoss
from snaptrade_client.type.action_strict_with_options import ActionStrictWithOptions
from snaptrade_client.type.model403_failed_request_response import Model403FailedRequestResponse
from snaptrade_client.type.account_order_record import AccountOrderRecord
from snaptrade_client.type.order_type_strict import OrderTypeStrict

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
SchemaForRequestBodyApplicationJson = ManualTradeFormBracketSchema


request_body_manual_trade_form_bracket = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
SchemaFor200ResponseBodyApplicationJson = AccountOrderRecordSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: AccountOrderRecord


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: AccountOrderRecord


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
SchemaFor403ResponseBodyApplicationJson = Model403FailedRequestResponseSchema


@dataclass
class ApiResponseFor403(api_client.ApiResponse):
    body: Model403FailedRequestResponse


@dataclass
class ApiResponseFor403Async(api_client.AsyncApiResponse):
    body: Model403FailedRequestResponse


_response_for_403 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor403,
    response_cls_async=ApiResponseFor403Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor403ResponseBodyApplicationJson),
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

    def _place_bracket_order_mapped_args(
        self,
        body: typing.Optional[ManualTradeFormBracket] = None,
        action: typing.Optional[ActionStrictWithOptions] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        order_type: typing.Optional[OrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        stop_loss: typing.Optional[StopLoss] = None,
        take_profit: typing.Optional[TakeProfit] = None,
        account_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        _path_params = {}
        _body = {}
        if action is not None:
            _body["action"] = action
        if symbol is not None:
            _body["symbol"] = symbol
        if instrument is not None:
            _body["instrument"] = instrument
        if order_type is not None:
            _body["order_type"] = order_type
        if time_in_force is not None:
            _body["time_in_force"] = time_in_force
        if price is not None:
            _body["price"] = price
        if stop is not None:
            _body["stop"] = stop
        if units is not None:
            _body["units"] = units
        if stop_loss is not None:
            _body["stop_loss"] = stop_loss
        if take_profit is not None:
            _body["take_profit"] = take_profit
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

    async def _aplace_bracket_order_oapg(
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
        Place bracket equity order
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
            path_template='/accounts/{accountId}/trading/bracket',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_manual_trade_form_bracket.serialize(body, content_type)
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


    def _place_bracket_order_oapg(
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
        Place bracket equity order
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
            path_template='/accounts/{accountId}/trading/bracket',
            body=body,
            auth_settings=_auth,
            headers=_headers,
        )
        serialized_data = request_body_manual_trade_form_bracket.serialize(body, content_type)
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


class PlaceBracketOrder(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aplace_bracket_order(
        self,
        body: typing.Optional[ManualTradeFormBracket] = None,
        action: typing.Optional[ActionStrictWithOptions] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        order_type: typing.Optional[OrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        stop_loss: typing.Optional[StopLoss] = None,
        take_profit: typing.Optional[TakeProfit] = None,
        account_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._place_bracket_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            action=action,
            instrument=instrument,
            order_type=order_type,
            time_in_force=time_in_force,
            stop_loss=stop_loss,
            take_profit=take_profit,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
            symbol=symbol,
            price=price,
            stop=stop,
            units=units,
        )
        return await self._aplace_bracket_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def place_bracket_order(
        self,
        body: typing.Optional[ManualTradeFormBracket] = None,
        action: typing.Optional[ActionStrictWithOptions] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        order_type: typing.Optional[OrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        stop_loss: typing.Optional[StopLoss] = None,
        take_profit: typing.Optional[TakeProfit] = None,
        account_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages  """
        args = self._place_bracket_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            action=action,
            instrument=instrument,
            order_type=order_type,
            time_in_force=time_in_force,
            stop_loss=stop_loss,
            take_profit=take_profit,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
            symbol=symbol,
            price=price,
            stop=stop,
            units=units,
        )
        return self._place_bracket_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[ManualTradeFormBracket] = None,
        action: typing.Optional[ActionStrictWithOptions] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        order_type: typing.Optional[OrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        stop_loss: typing.Optional[StopLoss] = None,
        take_profit: typing.Optional[TakeProfit] = None,
        account_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._place_bracket_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            action=action,
            instrument=instrument,
            order_type=order_type,
            time_in_force=time_in_force,
            stop_loss=stop_loss,
            take_profit=take_profit,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
            symbol=symbol,
            price=price,
            stop=stop,
            units=units,
        )
        return await self._aplace_bracket_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
            **kwargs,
        )
    
    def post(
        self,
        body: typing.Optional[ManualTradeFormBracket] = None,
        action: typing.Optional[ActionStrictWithOptions] = None,
        instrument: typing.Optional[TradingInstrument] = None,
        order_type: typing.Optional[OrderTypeStrict] = None,
        time_in_force: typing.Optional[TimeInForceStrict] = None,
        stop_loss: typing.Optional[StopLoss] = None,
        take_profit: typing.Optional[TakeProfit] = None,
        account_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        price: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        stop: typing.Optional[typing.Optional[typing.Union[int, float]]] = None,
        units: typing.Optional[typing.Union[int, float]] = None,
        query_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages  """
        args = self._place_bracket_order_mapped_args(
            body=body,
            query_params=query_params,
            path_params=path_params,
            action=action,
            instrument=instrument,
            order_type=order_type,
            time_in_force=time_in_force,
            stop_loss=stop_loss,
            take_profit=take_profit,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
            symbol=symbol,
            price=price,
            stop=stop,
            units=units,
        )
        return self._place_bracket_order_oapg(
            body=args.body,
            query_params=args.query,
            path_params=args.path,
        )

