# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading  # noqa: E501

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Generated by: https://konfigthis.com
"""

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


class SignedContent(
    schemas.StrBase,
    schemas.NoneBase,
    schemas.Schema,
    schemas.NoneStrMixin
):
    """NOTE: This class is auto generated by Konfig.
    Ref: https://konfigthis.com

    Do not edit the class manually.

    Signed content requires 3 key-value pairs
* content -> Content included in request body, set to null if no content is included. Sort keys in content alphabetically
* path -> Url path of request submitted
* query -> Query params included in requests
After preparing the key-value pairs, sort them alphabetically and convert them
into a string.
Note:
Remove any extra whitespace characters and delimiters from the signed content.
For example, some JSON rendering engines will produce output like this:
  -- `{"blue": "moon", "hello": "world"}`
To produce the correct signature, the JSON should be processed to look like this:
  -- `{"blue":"moon","hello":"world"}`

    """


    def __new__(
        cls,
        *args: typing.Union[None, str, ],
        _configuration: typing.Optional[schemas.Configuration] = None,
    ) -> 'SignedContent':
        return super().__new__(
            cls,
            *args,
            _configuration=_configuration,
        )
