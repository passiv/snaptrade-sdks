# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

import typing
import time
from urllib3._collections import HTTPHeaderDict
from snaptrade_client.configuration import Configuration

def request_before_url_hook(
        resource_path_ref: typing.List[str],
        method: str,
        configuration: Configuration,
        headers: typing.Optional[HTTPHeaderDict] = None,
        body: typing.Any = None,
        fields: typing.Optional[typing.Tuple[typing.Tuple[str, str], ...]] = None,
        auth_settings: typing.Optional[typing.List[str]] = None,
        operation_auth_context: typing.Optional[dict] = None,
):
    if auth_settings is None:
        return
    request_signing = _request_signing_for_selected_auth_mode(
        configuration=configuration,
        operation_auth_context=operation_auth_context,
    )
    if request_signing is None:
        return
    signed_security_schemes = request_signing.get("signed_security_schemes", [])
    timestamp_security_schemes = [
        scheme for scheme in signed_security_schemes
        if scheme.lower().endswith("timestamp")
    ]
    if not timestamp_security_schemes:
        return
    timestamp = int(time.time())
    for scheme in timestamp_security_schemes:
        configuration.api_key[scheme] = timestamp


def _request_signing_for_selected_auth_mode(
        configuration: Configuration,
        operation_auth_context: typing.Optional[dict],
):
    if operation_auth_context is None:
        return None
    selected_auth_mode = getattr(configuration, "auth_mode", None)
    if selected_auth_mode is None:
        return None
    request_signing_by_auth_mode = operation_auth_context.get(
        "request_signing_by_auth_mode",
        {},
    )
    return request_signing_by_auth_mode.get(selected_auth_mode)
