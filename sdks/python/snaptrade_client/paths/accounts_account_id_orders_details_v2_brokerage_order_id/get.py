# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from dataclasses import dataclass
import typing
import typing_extensions
import urllib3
from snaptrade_client.request_before_hook import request_before_hook
import json
from urllib3._collections import HTTPHeaderDict

from snaptrade_client.api_response import AsyncGeneratorResponse
from snaptrade_client import api_client, exceptions
from snaptrade_client.auth import AuthMode

TAuth = typing.TypeVar("TAuth", bound=AuthMode)
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

from snaptrade_client.model.account_order_record_v2 import AccountOrderRecordV2 as AccountOrderRecordV2Schema
from snaptrade_client.model.model503_brokerage_request_response import Model503BrokerageRequestResponse as Model503BrokerageRequestResponseSchema
from snaptrade_client.model.model500_unexpected_exception_response import Model500UnexpectedExceptionResponse as Model500UnexpectedExceptionResponseSchema
from snaptrade_client.model.model404_failed_request_response import Model404FailedRequestResponse as Model404FailedRequestResponseSchema

from snaptrade_client.type.model503_brokerage_request_response import Model503BrokerageRequestResponse
from snaptrade_client.type.model500_unexpected_exception_response import Model500UnexpectedExceptionResponse
from snaptrade_client.type.account_order_record_v2 import AccountOrderRecordV2
from snaptrade_client.type.model404_failed_request_response import Model404FailedRequestResponse

from . import path

# Path params
AccountIdSchema = schemas.UUIDSchema
BrokerageOrderIdSchema = schemas.StrSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'accountId': typing.Union[AccountIdSchema, str, uuid.UUID, ],
        'brokerageOrderId': typing.Union[BrokerageOrderIdSchema, str, ],
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
request_path_brokerage_order_id = api_client.PathParameter(
    name="brokerageOrderId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=BrokerageOrderIdSchema,
    required=True,
)
_auth_modes = {
    "commercialApiKey": [
        "PartnerClientId",
        "PartnerTimestamp",
        "userId",
        "userSecret",
    ],
    "personalApiKey": [
        "PersonalClientId",
        "PersonalTimestamp",
    ],
}
_operation_auth_context = {
    "auth_modes": [
        "commercialApiKey",
        "personalApiKey",
    ],
    "request_signing_by_auth_mode": {
        "commercialApiKey": {
            "secret_parameter": "consumer_key",
            "signed_security_schemes": [
                "PartnerSignature",
                "PartnerTimestamp",
            ],
        },
        "personalApiKey": {
            "secret_parameter": "consumer_key",
            "signed_security_schemes": [
                "PersonalSignature",
                "PersonalTimestamp",
            ],
        },
    },
}
_legacy_auth = [
    'PartnerClientId',
    'PartnerSignature',
    'PartnerTimestamp',
    'PersonalClientId',
    'PersonalSignature',
    'PersonalTimestamp',
    'userId',
    'userSecret',
]
_auth = None
SchemaFor200ResponseBodyApplicationJson = AccountOrderRecordV2Schema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: AccountOrderRecordV2


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: AccountOrderRecordV2


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
SchemaFor404ResponseBodyApplicationJson = Model404FailedRequestResponseSchema


@dataclass
class ApiResponseFor404(api_client.ApiResponse):
    body: Model404FailedRequestResponse


@dataclass
class ApiResponseFor404Async(api_client.AsyncApiResponse):
    body: Model404FailedRequestResponse


_response_for_404 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor404,
    response_cls_async=ApiResponseFor404Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor404ResponseBodyApplicationJson),
    },
)
SchemaFor500ResponseBodyApplicationJson = Model500UnexpectedExceptionResponseSchema


@dataclass
class ApiResponseFor500(api_client.ApiResponse):
    body: Model500UnexpectedExceptionResponse


@dataclass
class ApiResponseFor500Async(api_client.AsyncApiResponse):
    body: Model500UnexpectedExceptionResponse


_response_for_500 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor500,
    response_cls_async=ApiResponseFor500Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor500ResponseBodyApplicationJson),
    },
)
SchemaFor503ResponseBodyApplicationJson = Model503BrokerageRequestResponseSchema


@dataclass
class ApiResponseFor503(api_client.ApiResponse):
    body: Model503BrokerageRequestResponse


@dataclass
class ApiResponseFor503Async(api_client.AsyncApiResponse):
    body: Model503BrokerageRequestResponse


_response_for_503 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor503,
    response_cls_async=ApiResponseFor503Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor503ResponseBodyApplicationJson),
    },
)
_status_code_to_response = {
    '200': _response_for_200,
    '404': _response_for_404,
    '500': _response_for_500,
    '503': _response_for_503,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_user_account_order_detail_v2_mapped_args(
        self,
        account_id: typing.Optional[str] = None,
        brokerage_order_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        _header_params = {}
        _path_params = {}
        if user_id is not None:
            _query_params["userId"] = user_id
        if user_secret is not None:
            _query_params["userSecret"] = user_secret
        if account_id is not None:
            _path_params["accountId"] = account_id
        if brokerage_order_id is not None:
            _path_params["brokerageOrderId"] = brokerage_order_id
        args.query = _query_params
        args.header = _header_params
        args.path = path_params if path_params else _path_params
        return args

    async def _aget_user_account_order_detail_v2_oapg(
        self,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Get account order detail (V2)
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_account_id,
            request_path_brokerage_order_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
        prefix_separator_iterator = None
        if query_params.get("userId", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._ref6570_expansion(
                variable_name="userId",
                in_data=query_params["userId"],
                explode=False,
                percent_encode=False,
                prefix_separator_iterator=prefix_separator_iterator
            )
        if query_params.get("userSecret", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._ref6570_expansion(
                variable_name="userSecret",
                in_data=query_params["userSecret"],
                explode=False,
                percent_encode=False,
                prefix_separator_iterator=prefix_separator_iterator
            )
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'get'.upper()
        _auth = self.api_client.configuration.auth_settings_for_auth_modes(
            _auth_modes,
            _legacy_auth,
        )
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/accounts/{accountId}/orders/details/v2/{brokerageOrderId}',
            auth_settings=_auth,
            operation_auth_context=_operation_auth_context,
            headers=_headers,
        )
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            auth_settings=_auth,
            operation_auth_context=_operation_auth_context,
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


    def _get_user_account_order_detail_v2_oapg(
        self,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[float, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Get account order detail (V2)
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_account_id,
            request_path_brokerage_order_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
        prefix_separator_iterator = None
        if query_params.get("userId", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._ref6570_expansion(
                variable_name="userId",
                in_data=query_params["userId"],
                explode=False,
                percent_encode=False,
                prefix_separator_iterator=prefix_separator_iterator
            )
        if query_params.get("userSecret", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._ref6570_expansion(
                variable_name="userSecret",
                in_data=query_params["userSecret"],
                explode=False,
                percent_encode=False,
                prefix_separator_iterator=prefix_separator_iterator
            )
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
        method = 'get'.upper()
        _auth = self.api_client.configuration.auth_settings_for_auth_modes(
            _auth_modes,
            _legacy_auth,
        )
        request_before_hook(
            resource_path=used_path,
            method=method,
            configuration=self.api_client.configuration,
            path_template='/accounts/{accountId}/orders/details/v2/{brokerageOrderId}',
            auth_settings=_auth,
            operation_auth_context=_operation_auth_context,
            headers=_headers,
        )
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method=method,
            headers=_headers,
            auth_settings=_auth,
            operation_auth_context=_operation_auth_context,
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


class GetUserAccountOrderDetailV2(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_user_account_order_detail_v2(
        self,
        account_id: typing.Optional[str] = None,
        brokerage_order_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_user_account_order_detail_v2_mapped_args(
            path_params=path_params,
            account_id=account_id,
            brokerage_order_id=brokerage_order_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_user_account_order_detail_v2_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get_user_account_order_detail_v2(
        self,
        account_id: typing.Optional[str] = None,
        brokerage_order_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.  """
        args = self._get_user_account_order_detail_v2_mapped_args(
            path_params=path_params,
            account_id=account_id,
            brokerage_order_id=brokerage_order_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_user_account_order_detail_v2_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

class ApiForget(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def aget(
        self,
        account_id: typing.Optional[str] = None,
        brokerage_order_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_user_account_order_detail_v2_mapped_args(
            path_params=path_params,
            account_id=account_id,
            brokerage_order_id=brokerage_order_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_user_account_order_detail_v2_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get(
        self,
        account_id: typing.Optional[str] = None,
        brokerage_order_id: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.  """
        args = self._get_user_account_order_detail_v2_mapped_args(
            path_params=path_params,
            account_id=account_id,
            brokerage_order_id=brokerage_order_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_user_account_order_detail_v2_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

