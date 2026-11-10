from urllib3._collections import HTTPHeaderDict

from snaptrade_client import Configuration
from snaptrade_client import SnapTrade
from snaptrade_client import SnapTradeAuth
from snaptrade_client.request_after_hook import compute_request_signature, request_after_hook
from snaptrade_client.request_before_url_hook import request_before_url_hook


SIGNING_OPERATION_AUTH = {
    "auth_modes": ["commercialApiKey"],
    "request_signing_by_auth_mode": {
        "commercialApiKey": {
            "secret_parameter": "consumer_key",
            "signed_security_schemes": ["PartnerSignature", "PartnerTimestamp"],
        },
    },
}


def test_adds_timestamp_and_signature_for_signed_api_key_requests():
    configuration = Configuration(
        auth=SnapTradeAuth.commercial_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        )
    )
    headers = HTTPHeaderDict()

    request_before_url_hook(
        resource_path_ref=["/accounts?clientId=client_id"],
        method="GET",
        configuration=configuration,
        auth_settings=["PartnerClientId"],
        headers=headers,
        operation_auth_context=SIGNING_OPERATION_AUTH,
    )
    assert configuration.api_key["PartnerTimestamp"]

    request_after_hook(
        resource_path="/accounts?clientId=client_id&timestamp=1700000000",
        method="GET",
        configuration=configuration,
        headers=headers,
        auth_settings=["PartnerClientId"],
        operation_auth_context=SIGNING_OPERATION_AUTH,
    )

    assert isinstance(headers["Signature"], str)
    assert headers["Signature"]


def test_generated_prod_partner_endpoint_uses_auth_mode_signing_context(monkeypatch):
    calls = []

    def request(self, method, url, headers=None, fields=None, stream=False, timeout=None, **kwargs):
        from snaptrade_client.rest import ResponseWrapper
        import urllib3

        calls.append({
            "method": method,
            "url": url,
            "headers": dict(headers or {}),
        })
        return ResponseWrapper(
            urllib3.HTTPResponse(
                b'[]',
                status=200,
                headers={"Content-Type": "application/json"},
            ),
            0,
        )

    monkeypatch.setattr("snaptrade_client.api_client.ApiClient.request", request)
    client = SnapTrade(
        auth=SnapTradeAuth.commercial_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.authentication.list_snap_trade_users()

    assert len(calls) == 1
    assert calls[0]["url"].startswith("https://api.snaptrade.com/api/v1/snapTrade/listUsers?")
    assert "clientId=client_id" in calls[0]["url"]
    assert "timestamp=" in calls[0]["url"]
    assert isinstance(calls[0]["headers"]["Signature"], str)
    assert calls[0]["headers"]["Signature"]
    from snaptrade_client import schemas
    from urllib.parse import urlsplit

    request_url = urlsplit(calls[0]["url"])
    assert calls[0]["headers"]["Signature"] == compute_request_signature(
        path=request_url.path + "?" + request_url.query,
        consumer_key="consumer_key",
        body=schemas.unset,
    )
