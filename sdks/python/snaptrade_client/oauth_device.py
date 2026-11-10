# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from dataclasses import dataclass, field
import json
import math
import socket
import threading
import time
import typing
import urllib.error
import urllib.parse
import urllib.request


class SnapTradeOAuthDeviceError(RuntimeError):
    """OAuth error code without response bodies or private device/token values."""

    def __init__(self, error: str):
        self.error = error
        super().__init__(f"Device authorization failed: {error}")


@dataclass(frozen=True)
class SnapTradeDeviceAuthorization:
    device_code: str = field(repr=False)
    user_code: str
    verification_uri: str
    verification_uri_complete: typing.Optional[str]
    # Process-local monotonic deadline in seconds; do not persist this object.
    expires_at: float
    interval: float


@dataclass(frozen=True)
class SnapTradeDeviceTokens:
    access_token: str = field(repr=False)
    refresh_token: typing.Optional[str] = field(repr=False)
    token_type: typing.Optional[str]
    expires_in: typing.Optional[int]
    scope: typing.Optional[str]


def _positive_number(value: typing.Any) -> bool:
    return isinstance(value, (int, float)) and not isinstance(value, bool) and math.isfinite(value) and value > 0


class SnapTradeOAuthDevice:
    """Initial read-only device login for a pre-registered public device client.

    The application displays the code/URL and owns token storage and refresh.
    Cancellation interrupts polling waits; an in-flight HTTP call is bounded by
    timeout and the authorization deadline.
    """

    def __init__(self, issuer: typing.Optional[str] = None, timeout: float = 30):
        parsed = urllib.parse.urlsplit(issuer or "https://api.snaptrade.com")
        if parsed.scheme not in ("https", "http") or not parsed.netloc:
            raise ValueError("OAuth issuer must be an absolute HTTP(S) URL.")
        if not _positive_number(timeout):
            raise ValueError("timeout must be a positive finite number.")
        self.issuer = urllib.parse.urlunsplit((parsed.scheme, parsed.netloc, "", "", ""))
        self.timeout = timeout

    def start_device_authorization(self, *, client_id: str) -> SnapTradeDeviceAuthorization:
        """Display user_code and verification_uri; keep device_code private."""
        started_at = time.monotonic()
        raw = self._post("device_authorization", {"client_id": client_id, "scope": "read"}, self.timeout)
        interval = raw.get("interval", 5)
        if not all(isinstance(raw.get(key), str) and raw[key] for key in ("device_code", "user_code", "verification_uri")) or not _positive_number(raw.get("expires_in")) or not _positive_number(interval):
            raise SnapTradeOAuthDeviceError("invalid_response")
        return SnapTradeDeviceAuthorization(
            device_code=raw["device_code"], user_code=raw["user_code"],
            verification_uri=raw["verification_uri"],
            verification_uri_complete=raw.get("verification_uri_complete"),
            expires_at=started_at + raw["expires_in"], interval=interval,
        )

    def wait_for_device_token(
        self, *, client_id: str, authorization: SnapTradeDeviceAuthorization,
        cancel: typing.Optional[threading.Event] = None,
    ) -> SnapTradeDeviceTokens:
        """Poll until approval; raise OAuthDeviceError on denial, expiry or cancellation."""
        stop = cancel if cancel is not None else threading.Event()
        interval = authorization.interval
        if not _positive_number(interval) or not _positive_number(authorization.expires_at):
            raise ValueError("Invalid device authorization deadline or interval.")
        while True:
            if stop.is_set():
                raise SnapTradeOAuthDeviceError("cancelled")
            remaining = authorization.expires_at - time.monotonic()
            if remaining <= 0:
                raise SnapTradeOAuthDeviceError("expired_token")
            if stop.wait(min(interval, remaining)):
                raise SnapTradeOAuthDeviceError("cancelled")
            remaining = authorization.expires_at - time.monotonic()
            if remaining <= 0:
                raise SnapTradeOAuthDeviceError("expired_token")
            try:
                raw = self._post("token", {
                    "client_id": client_id, "device_code": authorization.device_code,
                    "grant_type": "urn:ietf:params:oauth:grant-type:device_code",
                }, min(self.timeout, remaining))
            except SnapTradeOAuthDeviceError as exc:
                if exc.error == "authorization_pending":
                    continue
                if exc.error == "slow_down":
                    interval += 5
                    continue
                raise
            except (TimeoutError, socket.timeout):
                interval *= 2
                continue
            if stop.is_set():
                raise SnapTradeOAuthDeviceError("cancelled")
            if time.monotonic() >= authorization.expires_at:
                raise SnapTradeOAuthDeviceError("expired_token")
            if not isinstance(raw.get("access_token"), str) or not raw["access_token"]:
                raise SnapTradeOAuthDeviceError("invalid_response")
            return SnapTradeDeviceTokens(
                access_token=raw["access_token"], refresh_token=raw.get("refresh_token"),
                token_type=raw.get("token_type"), expires_in=raw.get("expires_in"), scope=raw.get("scope"),
            )

    def _post(self, endpoint: str, body: typing.Dict[str, str], timeout: float) -> typing.Dict[str, typing.Any]:
        request = urllib.request.Request(
            f"{self.issuer}/oauth/{endpoint}/", data=urllib.parse.urlencode(body).encode("utf-8"),
            headers={"Content-Type": "application/x-www-form-urlencoded"}, method="POST",
        )
        try:
            with urllib.request.urlopen(request, timeout=timeout) as response:
                raw = json.load(response)
        except urllib.error.HTTPError as exc:
            try:
                raw = json.load(exc)
            except (ValueError, UnicodeError):
                raise SnapTradeOAuthDeviceError("http_error") from None
            error = raw.get("error") if isinstance(raw, dict) else None
            allowed = {"authorization_pending", "slow_down", "access_denied", "expired_token", "invalid_client", "invalid_grant", "invalid_request", "unauthorized_client", "unsupported_grant_type", "invalid_scope"}
            if not isinstance(error, str) or error not in allowed:
                error = "http_error"
            raise SnapTradeOAuthDeviceError(error) from None
        except urllib.error.URLError as exc:
            if isinstance(exc.reason, (TimeoutError, socket.timeout)):
                raise TimeoutError("OAuth request timed out.") from None
            raise SnapTradeOAuthDeviceError("network_error") from None
        except (ValueError, UnicodeError):
            raise SnapTradeOAuthDeviceError("invalid_response") from None
        if not isinstance(raw, dict):
            raise SnapTradeOAuthDeviceError("invalid_response")
        return raw
