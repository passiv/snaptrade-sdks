import urllib3
import pytest

from snaptrade_client import SnapTrade
from snaptrade_client import SnapTradeAuth
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


def test_api_key_auth_mode_preserves_explicit_constructor_consumer_key(monkeypatch):
    calls = _install_request_spy(monkeypatch, response_payload=b"[]")
    client = SnapTrade(
        auth=SnapTradeAuth.commercial_api_key(client_id="client_id"),
        consumer_key="constructor_consumer_key",
        host="https://api.snaptrade.com/api/v1",
    )

    client.authentication.list_snap_trade_users()

    assert len(calls) == 1
    assert "clientId=client_id" in calls[0]["url"]
    assert "timestamp=" in calls[0]["url"]
    assert "Signature" in calls[0]["headers"]


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


@pytest.mark.skip(reason="OAuth SDK auth is omitted while PersonalOAuth is not configured.")
def test_personal_oauth_auth_mode_uses_bearer_without_signing(monkeypatch):
    # calls = _install_request_spy(monkeypatch)
    # client = SnapTrade(
    #     auth=SnapTradeAuth.personal_oauth(access_token="access_token"),
    #     host="https://api.snaptrade.com/api/v1",
    # )
    # assert calls[0]["headers"]["Authorization"] == "Bearer access_token"
    # assert "Signature" not in calls[0]["headers"]
    pass


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


@pytest.mark.skip(reason="OAuth helper is omitted while PersonalOAuth is not configured.")
def test_oauth_helper_normalizes_api_base_issuer_to_origin():
    # oauth = SnapTradeOAuth(issuer="https://api.snaptrade.com/api/v1")
    #
    # assert oauth.issuer == "https://api.snaptrade.com"
    pass
