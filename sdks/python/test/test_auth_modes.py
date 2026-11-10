import urllib3
import pytest

from snaptrade_client import SnapTrade
from snaptrade_client import SnapTradeAuth
from snaptrade_client.request_after_hook import compute_request_signature
from snaptrade_client.rest import ResponseWrapper


def _install_request_spy(monkeypatch, response_payload=b'{"version": "1.0.0"}'):
    calls = []

    def request(self, method, url, headers=None, fields=None, stream=False, timeout=None, **kwargs):
        calls.append({
            "method": method,
            "url": url,
            "headers": dict(headers or {}),
        })
        return ResponseWrapper(
            urllib3.HTTPResponse(
                response_payload,
                status=200,
                headers={"Content-Type": "application/json"},
            ),
            0,
        )

    monkeypatch.setattr("snaptrade_client.api_client.ApiClient.request", request)
    return calls


def test_commercial_api_key_auth_mode_uses_operation_user_credentials(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    client = SnapTrade(
        auth=SnapTradeAuth.commercial_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.account_information.list_user_accounts(
        user_id="user-1",
        user_secret="secret-1",
    )

    assert len(calls) == 1
    url = calls[0]["url"]
    assert url.startswith("https://api.snaptrade.com/api/v1/accounts?")
    assert "clientId=client_id" in url
    assert "userId=user-1" in url
    assert "userSecret=secret-1" in url
    assert "timestamp=" in url
    assert "Signature" in calls[0]["headers"]


def test_commercial_api_key_percent_encodes_operation_auth_before_signing(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    monkeypatch.setattr(
        "snaptrade_client.request_before_url_hook.time.time",
        lambda: 1700000000,
    )
    client = SnapTrade(
        auth=SnapTradeAuth.commercial_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.account_information.list_user_accounts(
        user_id="$user-1",
        user_secret="secret-1",
    )

    expected_resource_path = (
        "/accounts?userId=%24user-1&userSecret=secret-1"
        "&clientId=client_id&timestamp=1700000000"
    )
    assert calls[0]["url"] == "https://api.snaptrade.com/api/v1" + expected_resource_path
    assert "userId=$user-1" not in calls[0]["url"]
    assert calls[0]["headers"]["Signature"] == compute_request_signature(
        expected_resource_path,
        "consumer_key",
        None,
    )


@pytest.mark.parametrize("legacy_param", ["consumer_key", "client_id"])
def test_legacy_constructor_auth_params_are_rejected(legacy_param):
    with pytest.raises(
        TypeError,
        match=rf"{legacy_param} must be passed through 'auth'",
    ):
        SnapTrade(
            auth=SnapTradeAuth.commercial_api_key(),
            host="https://api.snaptrade.com/api/v1",
            **{legacy_param: "legacy_value"},
        )


def test_personal_api_key_auth_mode_omits_operation_user_credentials(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    client = SnapTrade(
        auth=SnapTradeAuth.personal_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.account_information.list_user_accounts()

    assert len(calls) == 1
    url = calls[0]["url"]
    assert url.startswith("https://api.snaptrade.com/api/v1/accounts?")
    assert "clientId=client_id" in url
    assert "userId=" not in url
    assert "userSecret=" not in url
    assert "timestamp=" in url
    assert "Signature" in calls[0]["headers"]


def test_personal_api_key_real_operation_allows_missing_user_credentials(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    client = SnapTrade(
        auth=SnapTradeAuth.personal_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.account_information.list_user_accounts()
    client.authentication.login_snap_trade_user()
    client.connections.list_brokerage_authorizations()

    assert len(calls) == 3
    assert calls[0]["url"].startswith("https://api.snaptrade.com/api/v1/accounts?")
    assert calls[1]["url"].startswith("https://api.snaptrade.com/api/v1/snapTrade/login?")
    assert calls[2]["url"].startswith("https://api.snaptrade.com/api/v1/authorizations?")
    for call in calls:
        url = call["url"]
        assert "clientId=client_id" in url
        assert "userId=" not in url
        assert "userSecret=" not in url
        assert "timestamp=" in url
        assert "Signature" in call["headers"]


def test_oauth_auth_mode_uses_bearer_without_signing(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    client = SnapTrade(
        auth=SnapTradeAuth.oauth(access_token="opaque-access-token"),
        host="https://api.snaptrade.com/api/v1",
    )

    client.account_information.list_user_accounts()
    client.connections.list_brokerage_authorizations()

    assert len(calls) == 2
    assert [call["url"] for call in calls] == [
        "https://api.snaptrade.com/api/v1/accounts",
        "https://api.snaptrade.com/api/v1/authorizations",
    ]
    for call in calls:
        assert call["headers"]["Authorization"] == "Bearer opaque-access-token"
        assert "Signature" not in call["headers"]



@pytest.mark.parametrize("operation", ["delete_connection", "register_user"])
def test_oauth_unsupported_operation_fails_before_http(monkeypatch, operation):
    from snaptrade_client.exceptions import ClientConfigurationError

    calls = _install_request_spy(monkeypatch)
    client = SnapTrade(auth=SnapTradeAuth.oauth(access_token="access-token"))

    with pytest.raises(ClientConfigurationError, match="does not support.*oauth"):
        if operation == "delete_connection":
            client.connections.delete_connection(connection_id="917c8734-8470-4a3e-a18f-57c3f2ee6631")
        else:
            client.authentication.register_snap_trade_user(user_id="user-1")
    assert calls == []


def test_public_operation_does_not_use_selected_auth_mode(monkeypatch):
    calls = _install_request_spy(monkeypatch)
    client = SnapTrade(
        auth=SnapTradeAuth.commercial_api_key(
            consumer_key="consumer_key",
            client_id="client_id",
        ),
        host="https://api.snaptrade.com/api/v1",
    )

    client.api_status.check()

    assert len(calls) == 1
    assert calls[0]["url"] == "https://api.snaptrade.com/api/v1/"
    assert "Signature" not in calls[0]["headers"]
