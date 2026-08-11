import typing
from urllib3._collections import HTTPHeaderDict

from snaptrade_client.configuration import Configuration

def request_before_hook(
        resource_path: str,
        method: str,
        configuration: Configuration,
        headers: typing.Optional[HTTPHeaderDict] = None,
        body: typing.Any = None,
        fields: typing.Optional[typing.Tuple[typing.Tuple[str, str], ...]] = None,
        auth_settings: typing.Optional[typing.List[str]] = None,
        operation_auth_context: typing.Optional[dict] = None,
        **kwargs: typing.Any
):
    pass
