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

from snaptrade_client.model.paginated_universal_activity import PaginatedUniversalActivity as PaginatedUniversalActivitySchema

from snaptrade_client.type.paginated_universal_activity import PaginatedUniversalActivity

from . import path

# Query params
StartDateSchema = schemas.DateSchema
EndDateSchema = schemas.DateSchema


class OffsetSchema(
    schemas.Int32Schema
):


    class MetaOapg:
        format = 'int32'
        inclusive_minimum = 0


class LimitSchema(
    schemas.Int32Schema
):


    class MetaOapg:
        format = 'int32'
        inclusive_minimum = 1
TypeSchema = schemas.StrSchema
RequestRequiredQueryParams = typing_extensions.TypedDict(
    'RequestRequiredQueryParams',
    {
    }
)
RequestOptionalQueryParams = typing_extensions.TypedDict(
    'RequestOptionalQueryParams',
    {
        'startDate': typing.Union[StartDateSchema, str, date, ],
        'endDate': typing.Union[EndDateSchema, str, date, ],
        'offset': typing.Union[OffsetSchema, decimal.Decimal, int, ],
        'limit': typing.Union[LimitSchema, decimal.Decimal, int, ],
        'type': typing.Union[TypeSchema, str, ],
        'userId': str,
        'userSecret': str,
    },
    total=False
)


class RequestQueryParams(RequestRequiredQueryParams, RequestOptionalQueryParams):
    pass


request_query_start_date = api_client.QueryParameter(
    name="startDate",
    style=api_client.ParameterStyle.FORM,
    schema=StartDateSchema,
    explode=True,
)
request_query_end_date = api_client.QueryParameter(
    name="endDate",
    style=api_client.ParameterStyle.FORM,
    schema=EndDateSchema,
    explode=True,
)
request_query_offset = api_client.QueryParameter(
    name="offset",
    style=api_client.ParameterStyle.FORM,
    schema=OffsetSchema,
    explode=True,
)
request_query_limit = api_client.QueryParameter(
    name="limit",
    style=api_client.ParameterStyle.FORM,
    schema=LimitSchema,
    explode=True,
)
request_query_type = api_client.QueryParameter(
    name="type",
    style=api_client.ParameterStyle.FORM,
    schema=TypeSchema,
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
SchemaFor200ResponseBodyApplicationJson = PaginatedUniversalActivitySchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: PaginatedUniversalActivity


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: PaginatedUniversalActivity


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)


@dataclass
class ApiResponseForDefault(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseForDefaultAsync(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_default = api_client.OpenApiResponse(
    response_cls=ApiResponseForDefault,
)
_status_code_to_response = {
    '200': _response_for_200,
    'default': _response_for_default,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_account_activities_mapped_args(
        self,
        account_id: typing.Optional[str] = None,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
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
        if start_date is not None:
            _query_params["startDate"] = start_date
        if end_date is not None:
            _query_params["endDate"] = end_date
        if offset is not None:
            _query_params["offset"] = offset
        if limit is not None:
            _query_params["limit"] = limit
        if type is not None:
            _query_params["type"] = type
        if user_id is not None:
            _query_params["userId"] = user_id
        if user_secret is not None:
            _query_params["userSecret"] = user_secret
        if account_id is not None:
            _path_params["accountId"] = account_id
        args.query = query_params if query_params else _query_params
        args.header = _header_params
        args.path = path_params if path_params else _path_params
        return args

    async def _aget_account_activities_oapg(
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
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        List account activities
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
            request_query_start_date,
            request_query_end_date,
            request_query_offset,
            request_query_limit,
            request_query_type,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
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
            path_template='/accounts/{accountId}/activities',
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
            default_response = _status_code_to_response.get('default')
            if default_response:
                api_response = default_response.deserialize(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
            else:
                api_response = api_client.ApiResponseWithoutDeserializationAsync(
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


    def _get_account_activities_oapg(
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
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        List account activities
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
            request_query_start_date,
            request_query_end_date,
            request_query_offset,
            request_query_limit,
            request_query_type,
        ):
            parameter_data = query_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            if prefix_separator_iterator is None:
                prefix_separator_iterator = parameter.get_prefix_separator_iterator()
            serialized_data = parameter.serialize(parameter_data, prefix_separator_iterator)
            for serialized_value in serialized_data.values():
                used_path += serialized_value
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
            path_template='/accounts/{accountId}/activities',
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
            default_response = _status_code_to_response.get('default')
            if default_response:
                api_response = default_response.deserialize(
                                                    response,
                                                    self.api_client.configuration,
                                                    skip_deserialization=skip_deserialization
                                                )
            else:
                api_response = api_client.ApiResponseWithoutDeserialization(
                    response=response.http_response,
                    round_trip_time=response.round_trip_time,
                    status=response.http_response.status,
                    headers=response.http_response.headers,
                )
    
        if not 200 <= api_response.status <= 299:
            raise exceptions.ApiException(api_response=api_response)
    
        return api_response


class GetAccountActivities(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_account_activities(
        self,
        account_id: typing.Optional[str] = None,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_account_activities_mapped_args(
            query_params=query_params,
            path_params=path_params,
            account_id=account_id,
            start_date=start_date,
            end_date=end_date,
            offset=offset,
            limit=limit,
            type=type,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_account_activities_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get_account_activities(
        self,
        account_id: typing.Optional[str] = None,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Returns all historical transactions for the specified account.  This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.  Transaction are returned in reverse chronological order, using the `trade_date` field.  This endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  """
        args = self._get_account_activities_mapped_args(
            query_params=query_params,
            path_params=path_params,
            account_id=account_id,
            start_date=start_date,
            end_date=end_date,
            offset=offset,
            limit=limit,
            type=type,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_account_activities_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

class ApiForget(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def aget(
        self,
        account_id: typing.Optional[str] = None,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_account_activities_mapped_args(
            query_params=query_params,
            path_params=path_params,
            account_id=account_id,
            start_date=start_date,
            end_date=end_date,
            offset=offset,
            limit=limit,
            type=type,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_account_activities_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get(
        self,
        account_id: typing.Optional[str] = None,
        start_date: typing.Optional[date] = None,
        end_date: typing.Optional[date] = None,
        offset: typing.Optional[int] = None,
        limit: typing.Optional[int] = None,
        type: typing.Optional[str] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        header_params: typing.Optional[dict] = {},
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Returns all historical transactions for the specified account.  This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.  Transaction are returned in reverse chronological order, using the `trade_date` field.  This endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  """
        args = self._get_account_activities_mapped_args(
            query_params=query_params,
            path_params=path_params,
            account_id=account_id,
            start_date=start_date,
            end_date=end_date,
            offset=offset,
            limit=limit,
            type=type,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_account_activities_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

