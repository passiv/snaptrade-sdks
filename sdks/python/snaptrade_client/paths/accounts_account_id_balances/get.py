# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

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

from snaptrade_client.model.balance import Balance as BalanceSchema
from snaptrade_client.model.model503_brokerage_request_response import Model503BrokerageRequestResponse as Model503BrokerageRequestResponseSchema
from snaptrade_client.model.model429_too_many_requests_response import Model429TooManyRequestsResponse as Model429TooManyRequestsResponseSchema

from snaptrade_client.type.model503_brokerage_request_response import Model503BrokerageRequestResponse
from snaptrade_client.type.balance import Balance
from snaptrade_client.type.model429_too_many_requests_response import Model429TooManyRequestsResponse

from . import path

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


class SchemaFor200ResponseBodyApplicationJson(
    schemas.ListSchema
):


    class MetaOapg:
        
        @staticmethod
        def items() -> typing.Type['BalanceSchema']:
            return BalanceSchema

    def __new__(
        cls,
        arg: typing.Union[typing.Tuple['Balance'], typing.List['Balance']],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SchemaFor200ResponseBodyApplicationJson':
        return super().__new__(
            cls,
            arg,
            _configuration=_configuration,
        )

    def __getitem__(self, i: int) -> 'Balance':
        return super().__getitem__(i)


@dataclass
class ApiResponseFor200(api_client.ApiResponse):
    body: typing.List[Balance]


@dataclass
class ApiResponseFor200Async(api_client.AsyncApiResponse):
    body: typing.List[Balance]


_response_for_200 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor200,
    response_cls_async=ApiResponseFor200Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor200ResponseBodyApplicationJson),
    },
)
RetryAfterSchema = schemas.IntSchema
retry_after_parameter = api_client.HeaderParameter(
    name="Retry-After",
    style=api_client.ParameterStyle.SIMPLE,
    schema=RetryAfterSchema,
)
XRateLimitLimitSchema = schemas.IntSchema
x_rate_limit_limit_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Limit",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitLimitSchema,
)
XRateLimitRemainingSchema = schemas.IntSchema
x_rate_limit_remaining_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Remaining",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitRemainingSchema,
)
XRateLimitResetSchema = schemas.IntSchema
x_rate_limit_reset_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Reset",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitResetSchema,
)
XRateLimitAccountLimitSchema = schemas.IntSchema
x_rate_limit_account_limit_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Account-Limit",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitAccountLimitSchema,
)
XRateLimitAccountRemainingSchema = schemas.IntSchema
x_rate_limit_account_remaining_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Account-Remaining",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitAccountRemainingSchema,
)
XRateLimitAccountResetSchema = schemas.IntSchema
x_rate_limit_account_reset_parameter = api_client.HeaderParameter(
    name="X-RateLimit-Account-Reset",
    style=api_client.ParameterStyle.SIMPLE,
    schema=XRateLimitAccountResetSchema,
)
SchemaFor429ResponseBodyApplicationJson = Model429TooManyRequestsResponseSchema
ResponseHeadersFor429 = typing_extensions.TypedDict(
    'ResponseHeadersFor429',
    {
        'Retry-After': RetryAfterSchema,
        'X-RateLimit-Limit': XRateLimitLimitSchema,
        'X-RateLimit-Remaining': XRateLimitRemainingSchema,
        'X-RateLimit-Reset': XRateLimitResetSchema,
        'X-RateLimit-Account-Limit': XRateLimitAccountLimitSchema,
        'X-RateLimit-Account-Remaining': XRateLimitAccountRemainingSchema,
        'X-RateLimit-Account-Reset': XRateLimitAccountResetSchema,
    }
)


@dataclass
class ApiResponseFor429(api_client.ApiResponse):
    body: Model429TooManyRequestsResponse


@dataclass
class ApiResponseFor429Async(api_client.AsyncApiResponse):
    body: Model429TooManyRequestsResponse


_response_for_429 = api_client.OpenApiResponse(
    response_cls=ApiResponseFor429,
    response_cls_async=ApiResponseFor429Async,
    content={
        'application/json': api_client.MediaType(
            schema=SchemaFor429ResponseBodyApplicationJson),
    },
    headers=[
        retry_after_parameter,
        x_rate_limit_limit_parameter,
        x_rate_limit_remaining_parameter,
        x_rate_limit_reset_parameter,
        x_rate_limit_account_limit_parameter,
        x_rate_limit_account_remaining_parameter,
        x_rate_limit_account_reset_parameter,
    ]
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
    '429': _response_for_429,
    '503': _response_for_503,
    'default': _response_for_default,
}
_all_accept_content_types = (
    'application/json',
)


class BaseApi(api_client.Api):

    def _get_user_account_balance_mapped_args(
        self,
        account_id: typing.Optional[str] = None,
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
        args.query = _query_params
        args.header = _header_params
        args.path = path_params if path_params else _path_params
        return args

    async def _aget_user_account_balance_oapg(
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
        List account balances
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
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
        if query_params.get("userId", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._query_auth_parameter_expansion(
                variable_name="userId",
                in_data=query_params["userId"],
                prefix_separator_iterator=prefix_separator_iterator
            )
        if query_params.get("userSecret", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._query_auth_parameter_expansion(
                variable_name="userSecret",
                in_data=query_params["userSecret"],
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
            path_template='/accounts/{accountId}/balances',
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


    def _get_user_account_balance_oapg(
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
        List account balances
        :param skip_deserialization: If true then api_response.response will be set but
            api_response.body and api_response.headers will not be deserialized into schema
            class instances
        """
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
        if query_params.get("userId", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._query_auth_parameter_expansion(
                variable_name="userId",
                in_data=query_params["userId"],
                prefix_separator_iterator=prefix_separator_iterator
            )
        if query_params.get("userSecret", schemas.unset) is not schemas.unset:
            if prefix_separator_iterator is None:
                prefix_separator_iterator = api_client.PrefixSeparatorIterator("?", "&")
            used_path += api_client.ParameterSerializerBase._query_auth_parameter_expansion(
                variable_name="userSecret",
                in_data=query_params["userSecret"],
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
            path_template='/accounts/{accountId}/balances',
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


class GetUserAccountBalance(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints with operationId fn names

    async def aget_user_account_balance(
        self,
        account_id: typing.Optional[str] = None,
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
        args = self._get_user_account_balance_mapped_args(
            path_params=path_params,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_user_account_balance_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get_user_account_balance(
        self,
        account_id: typing.Optional[str] = None,
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
        """ Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  """
        args = self._get_user_account_balance_mapped_args(
            path_params=path_params,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_user_account_balance_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

class ApiForget(BaseApi, typing.Generic[TAuth]):
    # this class is used by api classes that refer to endpoints by path and http method names

    async def aget(
        self,
        account_id: typing.Optional[str] = None,
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
        args = self._get_user_account_balance_mapped_args(
            path_params=path_params,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return await self._aget_user_account_balance_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
            **kwargs,
        )
    
    def get(
        self,
        account_id: typing.Optional[str] = None,
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
        """ Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  """
        args = self._get_user_account_balance_mapped_args(
            path_params=path_params,
            account_id=account_id,
            user_id=user_id,
            user_secret=user_secret,
        )
        return self._get_user_account_balance_oapg(
            query_params=args.query,
            header_params=args.header,
            path_params=args.path,
        )

