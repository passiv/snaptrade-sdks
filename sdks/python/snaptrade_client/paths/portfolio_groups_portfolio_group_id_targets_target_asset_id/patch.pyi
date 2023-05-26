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

from snaptrade_client.model.target_asset import TargetAsset as TargetAssetSchema
from snaptrade_client.model.percent import Percent as PercentSchema
from snaptrade_client.model.universal_symbol import UniversalSymbol as UniversalSymbolSchema

from snaptrade_client.type.target_asset import TargetAsset
from snaptrade_client.type.universal_symbol import UniversalSymbol
from snaptrade_client.type.percent import Percent

# Path params
PortfolioGroupIdSchema = schemas.UUIDSchema
TargetAssetIdSchema = schemas.UUIDSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'portfolioGroupId': typing.Union[PortfolioGroupIdSchema, str, uuid.UUID, ],
        'targetAssetId': typing.Union[TargetAssetIdSchema, str, uuid.UUID, ],
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


request_path_portfolio_group_id = api_client.PathParameter(
    name="portfolioGroupId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=PortfolioGroupIdSchema,
    required=True,
)
request_path_target_asset_id = api_client.PathParameter(
    name="targetAssetId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=TargetAssetIdSchema,
    required=True,
)
# body param
SchemaForRequestBodyApplicationJson = TargetAssetSchema


request_body_target_asset = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)
SchemaFor200ResponseBodyApplicationJson = TargetAssetSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: TargetAsset


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: TargetAsset


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)


@dataclass
class ApiResponseFor400(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor400Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_400 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor400,
    response_cls_async=ApiResponseFor400Async,
)


@dataclass
class ApiResponseFor404(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor404Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_404 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor404,
    response_cls_async=ApiResponseFor404Async,
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
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _update_portfolio_target_by_id_mapped_args(
        self,
        body: typing.Optional[TargetAsset] = None,
        portfolio_group_id: typing.Optional[str] = None,
        target_asset_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[UniversalSymbol] = None,
        percent: typing.Optional[Percent] = None,
        is_supported: typing.Optional[bool] = None,
        is_excluded: typing.Optional[bool] = None,
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _path_params = {}
        _body = {}
        if id is not None:
            _body["id"] = id
        if symbol is not None:
            _body["symbol"] = symbol
        if percent is not None:
            _body["percent"] = percent
        if is_supported is not None:
            _body["is_supported"] = is_supported
        if is_excluded is not None:
            _body["is_excluded"] = is_excluded
        args.body = body if body is not None else _body
        if portfolio_group_id is not None:
            _path_params["portfolioGroupId"] = portfolio_group_id
        if target_asset_id is not None:
            _path_params["targetAssetId"] = target_asset_id
        args.path = path_params if path_params else _path_params
        return args

    async def _aupdate_portfolio_target_by_id_oapg(
        self,
        body: typing.Any = None,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200Async,
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Update a TargetAsset under the specified PortfolioGroup.
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
            request_path_target_asset_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        serialized_data = request_body_target_asset.serialize(body, content_type)
        _headers.add('Content-Type', content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method='patch'.upper(),
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
            timeout=timeout,
        )
        
        if stream:
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

    def _update_portfolio_target_by_id_oapg(
        self,
        body: typing.Any = None,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Update a TargetAsset under the specified PortfolioGroup.
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
            request_path_target_asset_id,
        ):
            parameter_data = path_params.get(parameter.name, schemas.unset)
            if parameter_data is schemas.unset:
                continue
            serialized_data = parameter.serialize(parameter_data)
            _path_params.update(serialized_data)
    
        for k, v in _path_params.items():
            used_path = used_path.replace('{%s}' % k, v)
    
        _headers = HTTPHeaderDict()
        # TODO add cookie handling
        if accept_content_types:
            for accept_content_type in accept_content_types:
                _headers.add('Accept', accept_content_type)
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        serialized_data = request_body_target_asset.serialize(body, content_type)
        _headers.add('Content-Type', content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']    
        response = self.api_client.call_api(
            resource_path=used_path,
            method='patch'.upper(),
            headers=_headers,
            fields=_fields,
            serialized_body=_body,
            body=body,
            auth_settings=_auth,
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

class UpdatePortfolioTargetById(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aupdate_portfolio_target_by_id(
        self,
        body: typing.Optional[TargetAsset] = None,
        portfolio_group_id: typing.Optional[str] = None,
        target_asset_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[UniversalSymbol] = None,
        percent: typing.Optional[Percent] = None,
        is_supported: typing.Optional[bool] = None,
        is_excluded: typing.Optional[bool] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_portfolio_target_by_id_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            target_asset_id=target_asset_id,
            id=id,
            symbol=symbol,
            percent=percent,
            is_supported=is_supported,
            is_excluded=is_excluded,
        )
        return await self._aupdate_portfolio_target_by_id_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def update_portfolio_target_by_id(
        self,
        body: typing.Optional[TargetAsset] = None,
        portfolio_group_id: typing.Optional[str] = None,
        target_asset_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[UniversalSymbol] = None,
        percent: typing.Optional[Percent] = None,
        is_supported: typing.Optional[bool] = None,
        is_excluded: typing.Optional[bool] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_portfolio_target_by_id_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            target_asset_id=target_asset_id,
            id=id,
            symbol=symbol,
            percent=percent,
            is_supported=is_supported,
            is_excluded=is_excluded,
        )
        return self._update_portfolio_target_by_id_oapg(
            body=args.body,
            path_params=args.path,
        )

class ApiForpatch(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apatch(
        self,
        body: typing.Optional[TargetAsset] = None,
        portfolio_group_id: typing.Optional[str] = None,
        target_asset_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[UniversalSymbol] = None,
        percent: typing.Optional[Percent] = None,
        is_supported: typing.Optional[bool] = None,
        is_excluded: typing.Optional[bool] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        ApiResponseForDefaultAsync,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_portfolio_target_by_id_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            target_asset_id=target_asset_id,
            id=id,
            symbol=symbol,
            percent=percent,
            is_supported=is_supported,
            is_excluded=is_excluded,
        )
        return await self._aupdate_portfolio_target_by_id_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def patch(
        self,
        body: typing.Optional[TargetAsset] = None,
        portfolio_group_id: typing.Optional[str] = None,
        target_asset_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[UniversalSymbol] = None,
        percent: typing.Optional[Percent] = None,
        is_supported: typing.Optional[bool] = None,
        is_excluded: typing.Optional[bool] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        ApiResponseForDefault,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_portfolio_target_by_id_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            target_asset_id=target_asset_id,
            id=id,
            symbol=symbol,
            percent=percent,
            is_supported=is_supported,
            is_excluded=is_excluded,
        )
        return self._update_portfolio_target_by_id_oapg(
            body=args.body,
            path_params=args.path,
        )

