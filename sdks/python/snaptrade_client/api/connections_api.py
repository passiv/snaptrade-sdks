"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://openapi-generator.tech
"""


import re  # noqa: F401
import sys  # noqa: F401

from snaptrade_client.api_client import ApiClient, Endpoint as _Endpoint
from snaptrade_client.model_utils import (  # noqa: F401
    check_allowed_values,
    check_validations,
    date,
    datetime,
    file_type,
    none_type,
    validate_and_convert_types
)
from snaptrade_client.model.brokerage_authorization import BrokerageAuthorization


class ConnectionsApi(object):
    """NOTE: This class is auto generated by OpenAPI Generator
    Ref: https://openapi-generator.tech

    Do not edit the class manually.
    """

    def __init__(self, api_client=None):
        if api_client is None:
            api_client = ApiClient()
        self.api_client = api_client
        self.authorizations_authorization_id_delete_endpoint = _Endpoint(
            settings={
                'response_type': None,
                'auth': [
                    'PartnerClientId',
                    'PartnerSignature',
                    'PartnerTimestamp'
                ],
                'endpoint_path': '/authorizations/{authorizationId}',
                'operation_id': 'authorizations_authorization_id_delete',
                'http_method': 'DELETE',
                'servers': None,
            },
            params_map={
                'all': [
                    'authorization_id',
                    'user_id',
                    'user_secret',
                ],
                'required': [
                    'authorization_id',
                    'user_id',
                    'user_secret',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'authorization_id':
                        (str,),
                    'user_id':
                        (str,),
                    'user_secret':
                        (str,),
                },
                'attribute_map': {
                    'authorization_id': 'authorizationId',
                    'user_id': 'userId',
                    'user_secret': 'userSecret',
                },
                'location_map': {
                    'authorization_id': 'path',
                    'user_id': 'query',
                    'user_secret': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [],
                'content_type': [],
            },
            api_client=api_client
        )
        self.authorizations_authorization_id_get_endpoint = _Endpoint(
            settings={
                'response_type': (BrokerageAuthorization,),
                'auth': [
                    'PartnerClientId',
                    'PartnerSignature',
                    'PartnerTimestamp'
                ],
                'endpoint_path': '/authorizations/{authorizationId}',
                'operation_id': 'authorizations_authorization_id_get',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'authorization_id',
                    'user_id',
                    'user_secret',
                ],
                'required': [
                    'authorization_id',
                    'user_id',
                    'user_secret',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'authorization_id':
                        (str,),
                    'user_id':
                        (str,),
                    'user_secret':
                        (str,),
                },
                'attribute_map': {
                    'authorization_id': 'authorizationId',
                    'user_id': 'userId',
                    'user_secret': 'userSecret',
                },
                'location_map': {
                    'authorization_id': 'path',
                    'user_id': 'query',
                    'user_secret': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )
        self.authorizations_get_endpoint = _Endpoint(
            settings={
                'response_type': ([BrokerageAuthorization],),
                'auth': [
                    'PartnerClientId',
                    'PartnerSignature',
                    'PartnerTimestamp'
                ],
                'endpoint_path': '/authorizations',
                'operation_id': 'authorizations_get',
                'http_method': 'GET',
                'servers': None,
            },
            params_map={
                'all': [
                    'user_id',
                    'user_secret',
                ],
                'required': [
                    'user_id',
                    'user_secret',
                ],
                'nullable': [
                ],
                'enum': [
                ],
                'validation': [
                ]
            },
            root_map={
                'validations': {
                },
                'allowed_values': {
                },
                'openapi_types': {
                    'user_id':
                        (str,),
                    'user_secret':
                        (str,),
                },
                'attribute_map': {
                    'user_id': 'userId',
                    'user_secret': 'userSecret',
                },
                'location_map': {
                    'user_id': 'query',
                    'user_secret': 'query',
                },
                'collection_format_map': {
                }
            },
            headers_map={
                'accept': [
                    'application/json'
                ],
                'content_type': [],
            },
            api_client=api_client
        )

    def authorizations_authorization_id_delete(
        self,
        authorization_id,
        user_id,
        user_secret,
        **kwargs
    ):
        """Remove a brokerage authorization.  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.authorizations_authorization_id_delete(authorization_id, user_id, user_secret, async_req=True)
        >>> result = thread.get()

        Args:
            authorization_id (str): The ID of the Authorization to delete.
            user_id (str):
            user_secret (str):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            None
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['authorization_id'] = \
            authorization_id
        kwargs['user_id'] = \
            user_id
        kwargs['user_secret'] = \
            user_secret
        return self.authorizations_authorization_id_delete_endpoint.call_with_http_info(**kwargs)

    def authorizations_authorization_id_get(
        self,
        authorization_id,
        user_id,
        user_secret,
        **kwargs
    ):
        """Get detail of a specific brokerage authorizations for the user  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.authorizations_authorization_id_get(authorization_id, user_id, user_secret, async_req=True)
        >>> result = thread.get()

        Args:
            authorization_id (str): The ID of a brokerage authorization object.
            user_id (str):
            user_secret (str):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            BrokerageAuthorization
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['authorization_id'] = \
            authorization_id
        kwargs['user_id'] = \
            user_id
        kwargs['user_secret'] = \
            user_secret
        return self.authorizations_authorization_id_get_endpoint.call_with_http_info(**kwargs)

    def authorizations_get(
        self,
        user_id,
        user_secret,
        **kwargs
    ):
        """List all brokerage authorizations for the user  # noqa: E501

        This method makes a synchronous HTTP request by default. To make an
        asynchronous HTTP request, please pass async_req=True

        >>> thread = api.authorizations_get(user_id, user_secret, async_req=True)
        >>> result = thread.get()

        Args:
            user_id (str):
            user_secret (str):

        Keyword Args:
            _return_http_data_only (bool): response data without head status
                code and headers. Default is True.
            _preload_content (bool): if False, the urllib3.HTTPResponse object
                will be returned without reading/decoding response data.
                Default is True.
            _request_timeout (int/float/tuple): timeout setting for this request. If
                one number provided, it will be total request timeout. It can also
                be a pair (tuple) of (connection, read) timeouts.
                Default is None.
            _check_input_type (bool): specifies if type checking
                should be done one the data sent to the server.
                Default is True.
            _check_return_type (bool): specifies if type checking
                should be done one the data received from the server.
                Default is True.
            _spec_property_naming (bool): True if the variable names in the input data
                are serialized names, as specified in the OpenAPI document.
                False if the variable names in the input data
                are pythonic names, e.g. snake case (default)
            _content_type (str/None): force body content-type.
                Default is None and content-type will be predicted by allowed
                content-types and body.
            _host_index (int/None): specifies the index of the server
                that we want to use.
                Default is read from the configuration.
            _request_auths (list): set to override the auth_settings for an a single
                request; this effectively ignores the authentication
                in the spec for a single request.
                Default is None
            async_req (bool): execute request asynchronously

        Returns:
            [BrokerageAuthorization]
                If the method is called asynchronously, returns the request
                thread.
        """
        kwargs['async_req'] = kwargs.get(
            'async_req', False
        )
        kwargs['_return_http_data_only'] = kwargs.get(
            '_return_http_data_only', True
        )
        kwargs['_preload_content'] = kwargs.get(
            '_preload_content', True
        )
        kwargs['_request_timeout'] = kwargs.get(
            '_request_timeout', None
        )
        kwargs['_check_input_type'] = kwargs.get(
            '_check_input_type', True
        )
        kwargs['_check_return_type'] = kwargs.get(
            '_check_return_type', True
        )
        kwargs['_spec_property_naming'] = kwargs.get(
            '_spec_property_naming', False
        )
        kwargs['_content_type'] = kwargs.get(
            '_content_type')
        kwargs['_host_index'] = kwargs.get('_host_index')
        kwargs['_request_auths'] = kwargs.get('_request_auths', None)
        kwargs['user_id'] = \
            user_id
        kwargs['user_secret'] = \
            user_secret
        return self.authorizations_get_endpoint.call_with_http_info(**kwargs)

