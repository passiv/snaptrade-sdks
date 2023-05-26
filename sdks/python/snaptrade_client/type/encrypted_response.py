# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from datetime import datetime, date
import typing
from enum import Enum
from typing_extensions import TypedDict, Literal


class RequiredEncryptedResponse(TypedDict):
    pass

class OptionalEncryptedResponse(TypedDict, total=False):
    encryptedSharedKey: str

    encryptedMessageData: typing.Dict[str, typing.Union[bool, date, datetime, dict, float, int, list, str, None]]

class EncryptedResponse(RequiredEncryptedResponse, OptionalEncryptedResponse):
    pass
