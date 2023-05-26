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

from snaptrade_client.model.exchange import Exchange as ExchangeSchema
from snaptrade_client.model.security_type import SecurityType as SecurityTypeSchema
from snaptrade_client.model.excluded_asset import ExcludedAsset as ExcludedAssetSchema
from snaptrade_client.model.currency import Currency as CurrencySchema
from snaptrade_client.model.universal_symbol import UniversalSymbol as UniversalSymbolSchema

from snaptrade_client.type.security_type import SecurityType
from snaptrade_client.type.exchange import Exchange
from snaptrade_client.type.excluded_asset import ExcludedAsset
from snaptrade_client.type.currency import Currency
from snaptrade_client.type.universal_symbol import UniversalSymbol

# Path params
PortfolioGroupIdSchema = schemas.UUIDSchema
RequestRequiredPathParams = typing_extensions.TypedDict(
    'RequestRequiredPathParams',
    {
        'portfolioGroupId': typing.Union[PortfolioGroupIdSchema, str, uuid.UUID, ],
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
# body param
SchemaForRequestBodyApplicationJson = UniversalSymbolSchema


request_body_universal_symbol = api_client.RequestBody(
    content={
        'application/json': api_client.MediaType(
            schema=SchemaForRequestBodyApplicationJson),
    },
)
SchemaFor200ResponseBodyApplicationJson = ExcludedAssetSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: ExcludedAsset


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: ExcludedAsset


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _add_portfolio_excluded_asset_mapped_args(
        self,
        body: typing.Optional[UniversalSymbol] = None,
        portfolio_group_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        raw_symbol: typing.Optional[str] = None,
        description: typing.Optional[typing.Optional[str]] = None,
        currency: typing.Optional[Currency] = None,
        exchange: typing.Optional[Exchange] = None,
        type: typing.Optional[SecurityType] = None,
        currencies: typing.Optional[typing.List[Currency]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _path_params = {}
        _body = {}
        if id is not None:
            _body["id"] = id
        if symbol is not None:
            _body["symbol"] = symbol
        if raw_symbol is not None:
            _body["raw_symbol"] = raw_symbol
        if description is not None:
            _body["description"] = description
        if currency is not None:
            _body["currency"] = currency
        if exchange is not None:
            _body["exchange"] = exchange
        if type is not None:
            _body["type"] = type
        if currencies is not None:
            _body["currencies"] = currencies
        args.body = body if body is not None else _body
        if portfolio_group_id is not None:
            _path_params["portfolioGroupId"] = portfolio_group_id
        args.path = path_params if path_params else _path_params
        return args

    async def _aadd_portfolio_excluded_asset_oapg(
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
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        """
        Adds an asset to exclude to a portfolio group
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
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
    
        _fields = None
        _body = None
        if body is not schemas.unset:
            serialized_data = request_body_universal_symbol.serialize(body, content_type)
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

    def _add_portfolio_excluded_asset_oapg(
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
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """
        Adds an asset to exclude to a portfolio group
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestPathParams, path_params)
        used_path = path.value
    
        _path_params = {}
        for parameter in (
            request_path_portfolio_group_id,
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
    
        _fields = None
        _body = None
        if body is not schemas.unset:
            serialized_data = request_body_universal_symbol.serialize(body, content_type)
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

class AddPortfolioExcludedAsset(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aadd_portfolio_excluded_asset(
        self,
        body: typing.Optional[UniversalSymbol] = None,
        portfolio_group_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        raw_symbol: typing.Optional[str] = None,
        description: typing.Optional[typing.Optional[str]] = None,
        currency: typing.Optional[Currency] = None,
        exchange: typing.Optional[Exchange] = None,
        type: typing.Optional[SecurityType] = None,
        currencies: typing.Optional[typing.List[Currency]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._add_portfolio_excluded_asset_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            id=id,
            symbol=symbol,
            raw_symbol=raw_symbol,
            description=description,
            currency=currency,
            exchange=exchange,
            type=type,
            currencies=currencies,
        )
        return await self._aadd_portfolio_excluded_asset_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def add_portfolio_excluded_asset(
        self,
        body: typing.Optional[UniversalSymbol] = None,
        portfolio_group_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        raw_symbol: typing.Optional[str] = None,
        description: typing.Optional[typing.Optional[str]] = None,
        currency: typing.Optional[Currency] = None,
        exchange: typing.Optional[Exchange] = None,
        type: typing.Optional[SecurityType] = None,
        currencies: typing.Optional[typing.List[Currency]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._add_portfolio_excluded_asset_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            id=id,
            symbol=symbol,
            raw_symbol=raw_symbol,
            description=description,
            currency=currency,
            exchange=exchange,
            type=type,
            currencies=currencies,
        )
        return self._add_portfolio_excluded_asset_oapg(
            body=args.body,
            path_params=args.path,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[UniversalSymbol] = None,
        portfolio_group_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        raw_symbol: typing.Optional[str] = None,
        description: typing.Optional[typing.Optional[str]] = None,
        currency: typing.Optional[Currency] = None,
        exchange: typing.Optional[Exchange] = None,
        type: typing.Optional[SecurityType] = None,
        currencies: typing.Optional[typing.List[Currency]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._add_portfolio_excluded_asset_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            id=id,
            symbol=symbol,
            raw_symbol=raw_symbol,
            description=description,
            currency=currency,
            exchange=exchange,
            type=type,
            currencies=currencies,
        )
        return await self._aadd_portfolio_excluded_asset_oapg(
            body=args.body,
            path_params=args.path,
        )
    
    def post(
        self,
        body: typing.Optional[UniversalSymbol] = None,
        portfolio_group_id: typing.Optional[str] = None,
        id: typing.Optional[str] = None,
        symbol: typing.Optional[str] = None,
        raw_symbol: typing.Optional[str] = None,
        description: typing.Optional[typing.Optional[str]] = None,
        currency: typing.Optional[Currency] = None,
        exchange: typing.Optional[Exchange] = None,
        type: typing.Optional[SecurityType] = None,
        currencies: typing.Optional[typing.List[Currency]] = None,
        path_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        args = self._add_portfolio_excluded_asset_mapped_args(
            body=body,
            path_params=path_params,
            portfolio_group_id=portfolio_group_id,
            id=id,
            symbol=symbol,
            raw_symbol=raw_symbol,
            description=description,
            currency=currency,
            exchange=exchange,
            type=type,
            currencies=currencies,
        )
        return self._add_portfolio_excluded_asset_oapg(
            body=args.body,
            path_params=args.path,
        )

