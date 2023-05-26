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

from snaptrade_client.model.trade import Trade as TradeSchema

from snaptrade_client.type.trade import Trade

from . import path

# Path params
PortfolioGroupIdSchema = schemas.UUIDSchema
CalculatedTradeIdSchema = schemas.UUIDSchema
TradeIdSchema = schemas.UUIDSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'portfolioGroupId': typing.Union[PortfolioGroupIdSchema, str, uuid.UUID, ],
        'calculatedTradeId': typing.Union[CalculatedTradeIdSchema, str, uuid.UUID, ],
        'tradeId': typing.Union[TradeIdSchema, str, uuid.UUID, ],
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
request_path_calculated_trade_id = api_client.PathParameter(
    name="calculatedTradeId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=CalculatedTradeIdSchema,
    required=True,
)
request_path_trade_id = api_client.PathParameter(
    name="tradeId",
    style=api_client.ParameterStyle.SIMPLE,
    schema=TradeIdSchema,
    required=True,
)
_auth = [
    'PartnerClientId',
    'PartnerSignature',
    'PartnerTimestamp',
]
SchemaFor200ResponseBodyApplicationJson = TradeSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: Trade


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: Trade


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
_status_code_to_response = {
    '200': _response_for_200,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_calculated_trade_impact_by_id_mapped_args(
        self,
        portfolio_group_id: typing.Optional[str] = None,
        calculated_trade_id: typing.Optional[str] = None,
        trade_id: typing.Optional[str] = None,
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _path_params = {}
        if portfolio_group_id is not None:
            _path_params["portfolioGroupId"] = portfolio_group_id
        if calculated_trade_id is not None:
            _path_params["calculatedTradeId"] = calculated_trade_id
        if trade_id is not None:
            _path_params["tradeId"] = trade_id
        args.path = path_params if path_params else _path_params
        return args

    async def _aget_calculated_trade_impact_by_id_oapg(
        self,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Return details of a specific trade before it&#x27;s placed
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
            request_path_calculated_trade_id,
            request_path_trade_id,
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
    
        response = await self.api_client.async_call_api(
            resource_path=used_path,
            method='get'.upper(),
            headers=_headers,
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

    def _get_calculated_trade_impact_by_id_oapg(
        self,
        path_params: typing.Optional[dict] = {},
        skip_deserialization: bool = True,
        timeout: typing.Optional[typing.Union[int, typing.Tuple]] = None,
        accept_content_types: typing.Tuple[str] = _all_accept_content_types,
        stream: bool = False,
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Return details of a specific trade before it&#x27;s placed
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
            request_path_calculated_trade_id,
            request_path_trade_id,
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
    
        response = self.api_client.call_api(
            resource_path=used_path,
            method='get'.upper(),
            headers=_headers,
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

class GetCalculatedTradeImpactById(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_calculated_trade_impact_by_id(
        self,
        portfolio_group_id: typing.Optional[str] = None,
        calculated_trade_id: typing.Optional[str] = None,
        trade_id: typing.Optional[str] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_calculated_trade_impact_by_id_mapped_args(
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            calculated_trade_id=calculated_trade_id,
            trade_id=trade_id,
        )
        return await self._aget_calculated_trade_impact_by_id_oapg(
            path_params=args.path,
        )
    
    def get_calculated_trade_impact_by_id(
        self,
        portfolio_group_id: typing.Optional[str] = None,
        calculated_trade_id: typing.Optional[str] = None,
        trade_id: typing.Optional[str] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._get_calculated_trade_impact_by_id_mapped_args(
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            calculated_trade_id=calculated_trade_id,
            trade_id=trade_id,
        )
        return self._get_calculated_trade_impact_by_id_oapg(
            path_params=args.path,
        )

class ApiForget(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def aget(
        self,
        portfolio_group_id: typing.Optional[str] = None,
        calculated_trade_id: typing.Optional[str] = None,
        trade_id: typing.Optional[str] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._get_calculated_trade_impact_by_id_mapped_args(
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            calculated_trade_id=calculated_trade_id,
            trade_id=trade_id,
        )
        return await self._aget_calculated_trade_impact_by_id_oapg(
            path_params=args.path,
        )
    
    def get(
        self,
        portfolio_group_id: typing.Optional[str] = None,
        calculated_trade_id: typing.Optional[str] = None,
        trade_id: typing.Optional[str] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._get_calculated_trade_impact_by_id_mapped_args(
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            calculated_trade_id=calculated_trade_id,
            trade_id=trade_id,
        )
        return self._get_calculated_trade_impact_by_id_oapg(
            path_params=args.path,
        )

