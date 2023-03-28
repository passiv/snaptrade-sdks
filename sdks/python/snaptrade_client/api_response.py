from dataclasses import dataclass
from urllib3._collections import HTTPHeaderDict
import urllib3
import typing

@dataclass
class ApiResponse:
    headers: HTTPHeaderDict
    status: int
    response: urllib3.HTTPResponse
    round_trip_time: int
    body: typing.Any