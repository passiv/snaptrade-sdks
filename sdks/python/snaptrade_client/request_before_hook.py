import typing
import time
from urllib3._collections import HTTPHeaderDict

from snaptrade_client.api_client import ApiClient

def request_before_hook(
        resource_path: str,
        method: str,
        api_client: ApiClient,
        headers: typing.Optional[HTTPHeaderDict] = None,
        body: typing.Any = None,
        fields: typing.Optional[typing.Tuple[typing.Tuple[str, str], ...]] = None,
        auth_settings: typing.Optional[typing.List[str]] = None,
) -> str:
    auth_settings['PartnerTimestamp'] = {
        'type': 'api_key',
        'in': 'query',
        'key': 'timestamp',
        'value': str(time.time()),
    }
