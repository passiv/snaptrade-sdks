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
from snaptrade_client.model.cryptocurrency_pair import CryptocurrencyPair as CryptocurrencyPairSchema
from snaptrade_client.model.crypto_spot_quote import CryptoSpotQuote as CryptoSpotQuoteSchema

from snaptrade_client.type.cryptocurrency_pair import CryptocurrencyPair
from snaptrade_client.type.model400_failed_request_response import Model400FailedRequestResponse
from snaptrade_client.type.crypto_spot_quote import CryptoSpotQuote

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
# body param


class SchemaForRequestBodyApplicationJson(
    schemas.DictSchema
):


    class MetaOapg:
        required = {
            "symbol",
            "account_id",
        }
        
        class properties:
            account_id = schemas.UUIDSchema
        
            @staticmethod
            def symbol() -> typing.Type['CryptocurrencyPair']:
                return CryptocurrencyPair
            __annotations__ = {
                "account_id": account_id,
                "symbol": symbol,
            }
    
    symbol: 'CryptocurrencyPair'
    account_id: MetaOapg.properties.account_id
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["account_id"]) -> MetaOapg.properties.account_id: ...
    
    @typing.overload
    def __getitem__(self, name: typing_extensions.Literal["symbol"]) -> 'CryptocurrencyPair': ...
    
    @typing.overload
    def __getitem__(self, name: str) -> schemas.UnsetAnyTypeSchema: ...
    
    def __getitem__(self, name: typing.Union[typing_extensions.Literal["account_id", "symbol", ], str]):
        # dict_instance[name] accessor
        return super().__getitem__(name)
    
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["account_id"]) -> MetaOapg.properties.account_id: ...
    
    @typing.overload
    def get_item_oapg(self, name: typing_extensions.Literal["symbol"]) -> 'CryptocurrencyPair': ...
    
    @typing.overload
    def get_item_oapg(self, name: str) -> typing.Union[schemas.UnsetAnyTypeSchema, schemas.Unset]: ...
    
    def get_item_oapg(self, name: typing.Union[typing_extensions.Literal["account_id", "symbol", ], str]):
        return super().get_item_oapg(name)
    

    def __new__(
        cls,
        *args: typing.Union[dict, frozendict.frozendict, ],
        symbol: 'CryptocurrencyPair',
        account_id: typing.Union[MetaOapg.properties.account_id, str, uuid.UUID, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
        **kwargs: typing.Union[schemas.AnyTypeSchema, dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, None, list, tuple, bytes],
    ) -> 'SchemaForRequestBodyApplicationJson':
        return super().__new__(
            cls,
            *args,
            symbol=symbol,
            account_id=account_id,
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
SchemaFor200ResponseBodyApplicationJson = CryptoSpotQuoteSchema


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: CryptoSpotQuote


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: CryptoSpotQuote


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

    def _crypto_spot_quote_mapped_args(
        self,
        body: typing.Optional[typing.Any] = None,
        account_id: typing.Optional[str] = None,
        symbol: typing.Optional[CryptocurrencyPair] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
    ) -> api_client.MappedArgs:
        args: api_client.MappedArgs = api_client.MappedArgs()
        _query_params = {}
        _body = {}
        if account_id is not None:
            _body["account_id"] = account_id
        if symbol is not None:
            _body["symbol"] = symbol
        args.body = body if body is not None else _body
        if user_id is not None:
            _query_params["userId"] = user_id
        if user_secret is not None:
            _query_params["userSecret"] = user_secret
        args.query = query_params if query_params else _query_params
        return args

    async def _acrypto_spot_quote_oapg(
        self,
        body: typing.Any = None,
        query_params: typing.Optional[dict] = {},
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
        Get a quote for a cyrptocurrency market
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        used_path = path.value
    
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
            path_template='/trading/crypto/spot/quote',
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


    def _crypto_spot_quote_oapg(
        self,
        body: typing.Any = None,
        query_params: typing.Optional[dict] = {},
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
        Get a quote for a cyrptocurrency market
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
        self._verify_typed_dict_inputs_oapg(RequestQueryParams, query_params)
        used_path = path.value
    
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
            path_template='/trading/crypto/spot/quote',
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


class CryptoSpotQuote(BaseApi):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def acrypto_spot_quote(
        self,
        body: typing.Optional[typing.Any] = None,
        account_id: typing.Optional[str] = None,
        symbol: typing.Optional[CryptocurrencyPair] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._crypto_spot_quote_mapped_args(
            body=body,
            query_params=query_params,
            account_id=account_id,
            symbol=symbol,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._acrypto_spot_quote_oapg(
            body=args.body,
            query_params=args.query,
            **kwargs,
        )
    
    def crypto_spot_quote(
        self,
        body: typing.Optional[typing.Any] = None,
        account_id: typing.Optional[str] = None,
        symbol: typing.Optional[CryptocurrencyPair] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Gets a quote for the specified account.  """
        args = self._crypto_spot_quote_mapped_args(
            body=body,
            query_params=query_params,
            account_id=account_id,
            symbol=symbol,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._crypto_spot_quote_oapg(
            body=args.body,
            query_params=args.query,
        )

class ApiForpost(BaseApi):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def apost(
        self,
        body: typing.Optional[typing.Any] = None,
        account_id: typing.Optional[str] = None,
        symbol: typing.Optional[CryptocurrencyPair] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
        **kwargs,
    ) -> typing.Union[
        ApiResponseFor200Async,
        api_client.ApiResponseWithoutDeserializationAsync,
        AsyncGeneratorResponse,
    ]:
        args = self._crypto_spot_quote_mapped_args(
            body=body,
            query_params=query_params,
            account_id=account_id,
            symbol=symbol,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._acrypto_spot_quote_oapg(
            body=args.body,
            query_params=args.query,
            **kwargs,
        )
    
    def post(
        self,
        body: typing.Optional[typing.Any] = None,
        account_id: typing.Optional[str] = None,
        symbol: typing.Optional[CryptocurrencyPair] = None,
        user_id: typing.Optional[str] = None,
        user_secret: typing.Optional[str] = None,
        query_params: typing.Optional[dict] = {},
    ) -> typing.Union[
        ApiResponseFor200,
        api_client.ApiResponseWithoutDeserialization,
    ]:
        """ Gets a quote for the specified account.  """
        args = self._crypto_spot_quote_mapped_args(
            body=body,
            query_params=query_params,
            account_id=account_id,
            symbol=symbol,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._crypto_spot_quote_oapg(
            body=args.body,
            query_params=args.query,
        )

