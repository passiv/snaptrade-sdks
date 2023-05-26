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

from snaptrade_client.model.model_asset_class_details import ModelAssetClassDetails as ModelAssetClassDetailsSchema
from snaptrade_client.model.model_asset_class import ModelAssetClass as ModelAssetClassSchema
from snaptrade_client.model.model_asset_class_target import ModelAssetClassTarget as ModelAssetClassTargetSchema

from snaptrade_client.type.model_asset_class_details import ModelAssetClassDetails
from snaptrade_client.type.model_asset_class_target import ModelAssetClassTarget
from snaptrade_client.type.model_asset_class import ModelAssetClass

# Path params
ModelAssetClassIdSchema = schemas.UUIDSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'modelAssetClassId': typing.Union[ModelAssetClassIdSchema, str, uuid.UUID, ],
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


request_path_model_asset_class_id = api_client.PathParameter(
    name="modelAssetClassId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=ModelAssetClassIdSchema,
    required=True,
)
# body param
SchemaForRequestBodyApplicationJson = ModelAssetClassDetailsSchema


request_body_model_asset_class_details = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
    required=True,
)


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: schemas.Unset = schemas.unset


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: schemas.Unset = schemas.unset


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
)


class BaseApi(api_client.Api):

    def _update_asset_class_mapped_args(
        self,
        body: typing.Optional[ModelAssetClassDetails] = None,
        model_asset_class_id: typing.Optional[str] = None,
        model_asset_class: typing.Optional[ModelAssetClass] = None,
        model_asset_class_target: typing.Optional[typing.List[ModelAssetClassTarget]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _path_params = {}
        _body = {}
        if model_asset_class is not None:
            _body["model_asset_class"] = model_asset_class
        if model_asset_class_target is not None:
            _body["model_asset_class_target"] = model_asset_class_target
        args.body = body if body is not None else _body
        if model_asset_class_id is not None:
            _path_params["modelAssetClassId"] = model_asset_class_id
        args.path = path_params if path_params else _path_params
        return args

    async def _aupdate_asset_class_oapg(
        self,
        body: typing.Any = None,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Updates model asset class objects
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_model_asset_class_id,
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
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        serialized_data = request_body_model_asset_class_details.serialize(body, content_type)
        _headers.add('Content-Type', content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method='post'.upper(),
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

    def _update_asset_class_oapg(
        self,
        body: typing.Any = None,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        content_type: str = 'application/json',
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Updates model asset class objects
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_model_asset_class_id,
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
    
        if body is schemas.unset:
            raise exceptions.ApiValueError(
                'The required body parameter has an invalid value of: unset. Set a valid value instead')
        _fields = None
        _body = None
        serialized_data = request_body_model_asset_class_details.serialize(body, content_type)
        _headers.add('Content-Type', content_type)
        if 'fields' in serialized_data:
            _fields = serialized_data['fields']
        elif 'body' in serialized_data:
            _body = serialized_data['body']    
        response = self.api_client.call_api(
            resource_path=used_path,
            method='post'.upper(),
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

class UpdateAssetClass(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aupdate_asset_class(
        self,
        body: typing.Optional[ModelAssetClassDetails] = None,
        model_asset_class_id: typing.Optional[str] = None,
        model_asset_class: typing.Optional[ModelAssetClass] = None,
        model_asset_class_target: typing.Optional[typing.List[ModelAssetClassTarget]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_asset_class_mapped_args(
            body=body,
            path_params=path_params,
            model_asset_class_id=model_asset_class_id,
            model_asset_class=model_asset_class,
            model_asset_class_target=model_asset_class_target,
        )
        return await self._aupdate_asset_class_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def update_asset_class(
        self,
        body: typing.Optional[ModelAssetClassDetails] = None,
        model_asset_class_id: typing.Optional[str] = None,
        model_asset_class: typing.Optional[ModelAssetClass] = None,
        model_asset_class_target: typing.Optional[typing.List[ModelAssetClassTarget]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_asset_class_mapped_args(
            body=body,
            path_params=path_params,
            model_asset_class_id=model_asset_class_id,
            model_asset_class=model_asset_class,
            model_asset_class_target=model_asset_class_target,
        )
        return self._update_asset_class_oapg(
            body=args.body,
            path_params=args.path,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[ModelAssetClassDetails] = None,
        model_asset_class_id: typing.Optional[str] = None,
        model_asset_class: typing.Optional[ModelAssetClass] = None,
        model_asset_class_target: typing.Optional[typing.List[ModelAssetClassTarget]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._update_asset_class_mapped_args(
            body=body,
            path_params=path_params,
            model_asset_class_id=model_asset_class_id,
            model_asset_class=model_asset_class,
            model_asset_class_target=model_asset_class_target,
        )
        return await self._aupdate_asset_class_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def post(
        self,
        body: typing.Optional[ModelAssetClassDetails] = None,
        model_asset_class_id: typing.Optional[str] = None,
        model_asset_class: typing.Optional[ModelAssetClass] = None,
        model_asset_class_target: typing.Optional[typing.List[ModelAssetClassTarget]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._update_asset_class_mapped_args(
            body=body,
            path_params=path_params,
            model_asset_class_id=model_asset_class_id,
            model_asset_class=model_asset_class,
            model_asset_class_target=model_asset_class_target,
        )
        return self._update_asset_class_oapg(
            body=args.body,
            path_params=args.path,
        )

