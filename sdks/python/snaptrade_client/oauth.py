# coding: utf-8

"""
    SnapTrade

    Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

    The version of the OpenAPI document: 1.0.0
    Contact: api@snaptrade.com
    Created by: https://snaptrade.com/
"""

from dataclasses import dataclass
import base64
import hashlib
import json
import secrets
import typing
import urllib.parse
import urllib.request
import urllib.error


SnapTradeOAuthScope = str
SnapTradeOAuthClientAuthMethod = typing.Literal["none", "client_secret_post", "client_secret_basic"]


@dataclass
class SnapTradeOAuthAuthorizationFlow:
    url: str
    state: str
    code_verifier: str
    code_challenge: str
    scope: str


@dataclass
class SnapTradeOAuthTokenResponse:
    access_token: str
    refresh_token: typing.Optional[str]
    token_type: typing.Optional[str]
    expires_in: typing.Optional[int]
    scope: typing.Optional[str]
    raw: typing.Dict[str, typing.Any]


@dataclass
class _ResolvedEndpoints:
    authorization_endpoint: str
    token_endpoint: str


def _trim_trailing_slash(value: str) -> str:
    return value.rstrip("/")


def _origin(value: str) -> str:
    parsed = urllib.parse.urlparse(value)
    if not parsed.scheme or not parsed.netloc:
        raise ValueError("OAuth issuer must be an absolute URL.")
    return f"{parsed.scheme}://{parsed.netloc}"


def _to_base64_url(data: bytes) -> str:
    return base64.urlsafe_b64encode(data).decode("ascii").rstrip("=")


def _random_base64_url(byte_length: int) -> str:
    return _to_base64_url(secrets.token_bytes(byte_length))


def _sha256_base64_url(value: str) -> str:
    return _to_base64_url(hashlib.sha256(value.encode("utf-8")).digest())


def _encode_basic_auth(client_id: str, client_secret: str) -> str:
    return base64.b64encode(f"{client_id}:{client_secret}".encode("utf-8")).decode("ascii")


def _json_request(
    url: str,
    *,
    method: str = "GET",
    body: typing.Optional[typing.Union[typing.Dict[str, typing.Any], str]] = None,
    headers: typing.Optional[typing.Dict[str, str]] = None,
    timeout: typing.Optional[float] = None,
) -> typing.Dict[str, typing.Any]:
    request_headers = dict(headers or {})
    data = None
    if isinstance(body, dict):
        data = json.dumps(body).encode("utf-8")
        request_headers.setdefault("Content-Type", "application/json")
    elif isinstance(body, str):
        data = body.encode("utf-8")

    request = urllib.request.Request(url, data=data, headers=request_headers, method=method)
    try:
        urlopen_kwargs = {}
        if timeout is not None:
            urlopen_kwargs["timeout"] = timeout
        with urllib.request.urlopen(request, **urlopen_kwargs) as response:
            response_body = response.read()
    except urllib.error.HTTPError as exc:
        details = exc.read().decode("utf-8", errors="replace")
        raise RuntimeError(f"OAuth request failed with status {exc.code}: {details}") from exc

    parsed = json.loads(response_body or b"{}")
    if not isinstance(parsed, dict):
        raise RuntimeError("OAuth response body was not a JSON object.")
    return parsed


def _normalize_token_response(raw: typing.Dict[str, typing.Any]) -> SnapTradeOAuthTokenResponse:
    access_token = raw.get("access_token")
    if not isinstance(access_token, str) or not access_token:
        raise RuntimeError("OAuth token response did not include an access_token.")
    return SnapTradeOAuthTokenResponse(
        access_token=access_token,
        refresh_token=raw.get("refresh_token") if isinstance(raw.get("refresh_token"), str) else None,
        token_type=raw.get("token_type") if isinstance(raw.get("token_type"), str) else None,
        expires_in=raw.get("expires_in") if isinstance(raw.get("expires_in"), int) else None,
        scope=raw.get("scope") if isinstance(raw.get("scope"), str) else None,
        raw=raw,
    )


class SnapTradeOAuth:
    def __init__(
        self,
        *,
        client_id: str,
        redirect_uri: str,
        client_secret: typing.Optional[str] = None,
        client_auth_method: typing.Optional[SnapTradeOAuthClientAuthMethod] = None,
        issuer: typing.Optional[str] = None,
        authorization_endpoint: typing.Optional[str] = None,
        token_endpoint: typing.Optional[str] = None,
        revocation_endpoint: typing.Optional[str] = None,
        timeout: typing.Optional[float] = None,
    ):
        self.issuer = _trim_trailing_slash(_origin(issuer or "https://api.snaptrade.com"))
        self.authorization_endpoint = authorization_endpoint
        self.token_endpoint = token_endpoint
        self.revocation_endpoint = revocation_endpoint
        self.client_id = client_id
        self.redirect_uri = redirect_uri
        self.client_secret = client_secret
        self.client_auth_method = client_auth_method
        self.timeout = timeout
        self._endpoints: typing.Optional[_ResolvedEndpoints] = None
        self._metadata: typing.Optional[typing.Dict[str, typing.Any]] = None

    def create_authorization_url(
        self,
        *,
        state: typing.Optional[str] = None,
        scope: str = "read",
        code_verifier: typing.Optional[str] = None,
    ) -> SnapTradeOAuthAuthorizationFlow:
        endpoints = self._resolve_endpoints()
        resolved_state = state or _random_base64_url(24)
        resolved_code_verifier = code_verifier or _random_base64_url(32)
        resolved_code_challenge = _sha256_base64_url(resolved_code_verifier)
        query = urllib.parse.urlencode({
            "response_type": "code",
            "client_id": self.client_id,
            "redirect_uri": self.redirect_uri,
            "scope": scope,
            "state": resolved_state,
            "code_challenge": resolved_code_challenge,
            "code_challenge_method": "S256",
        })
        separator = "&" if urllib.parse.urlparse(endpoints.authorization_endpoint).query else "?"
        return SnapTradeOAuthAuthorizationFlow(
            url=f"{endpoints.authorization_endpoint}{separator}{query}",
            state=resolved_state,
            code_verifier=resolved_code_verifier,
            code_challenge=resolved_code_challenge,
            scope=scope,
        )

    def exchange_code(
        self,
        *,
        code: str,
        code_verifier: str,
    ) -> SnapTradeOAuthTokenResponse:
        return self._post_token_request(
            {
                "grant_type": "authorization_code",
                "code": code,
                "client_id": self.client_id,
                "redirect_uri": self.redirect_uri,
                "code_verifier": code_verifier,
            },
        )

    def refresh_token(
        self,
        *,
        refresh_token: str,
    ) -> SnapTradeOAuthTokenResponse:
        return self._post_token_request(
            {
                "grant_type": "refresh_token",
                "refresh_token": refresh_token,
                "client_id": self.client_id,
            },
        )

    def revoke_token(
        self,
        *,
        token: str,
        token_type_hint: typing.Optional[typing.Literal["access_token", "refresh_token"]] = None,
    ) -> None:
        """Revoke the supplied token; unknown tokens succeed.

        Refresh-token revocation also invalidates its paired access token.
        Independent token pairs remain valid.
        """
        endpoint = self.revocation_endpoint
        if not endpoint:
            endpoint = self._fetch_server_metadata().get("revocation_endpoint")
        if not endpoint:
            raise RuntimeError("OAuth server metadata did not include revocation_endpoint.")
        body = {"token": token, "client_id": self.client_id}
        if token_type_hint is not None:
            body["token_type_hint"] = token_type_hint
        self._post_form_request(endpoint, body)

    def _resolve_endpoints(self) -> _ResolvedEndpoints:
        if self.authorization_endpoint and self.token_endpoint:
            return _ResolvedEndpoints(
                authorization_endpoint=self.authorization_endpoint,
                token_endpoint=self.token_endpoint,
            )
        if self._endpoints is None:
            self._endpoints = self._discover_endpoints()
        return self._endpoints

    def _discover_endpoints(self) -> _ResolvedEndpoints:
        metadata = self._fetch_server_metadata()
        authorization_endpoint = self.authorization_endpoint or metadata.get("authorization_endpoint")
        token_endpoint = self.token_endpoint or metadata.get("token_endpoint")
        if not authorization_endpoint or not token_endpoint:
            raise RuntimeError("OAuth server metadata did not include authorization_endpoint and token_endpoint.")
        return _ResolvedEndpoints(
            authorization_endpoint=authorization_endpoint,
            token_endpoint=token_endpoint,
        )

    def _fetch_server_metadata(self) -> typing.Dict[str, typing.Any]:
        if self._metadata is None:
            self._metadata = _json_request(
                f"{self.issuer}/.well-known/oauth-authorization-server",
                timeout=self.timeout,
            )
        return self._metadata

    def _post_token_request(
        self,
        body: typing.Dict[str, str],
    ) -> SnapTradeOAuthTokenResponse:
        endpoints = self._resolve_endpoints()
        raw = self._post_form_request(endpoints.token_endpoint, body)
        return _normalize_token_response(raw)

    def _post_form_request(
        self,
        endpoint: str,
        body: typing.Dict[str, str],
    ) -> typing.Dict[str, typing.Any]:
        client_id = self.client_id
        client_secret = self.client_secret
        resolved_client_auth_method = self.client_auth_method or ("client_secret_basic" if client_secret else "none")
        request_body = dict(body)
        headers = {"Content-Type": "application/x-www-form-urlencoded"}

        if resolved_client_auth_method == "client_secret_post":
            if not client_secret:
                raise RuntimeError("client_secret is required when client_auth_method is client_secret_post.")
            request_body["client_secret"] = client_secret
        elif resolved_client_auth_method == "client_secret_basic":
            if not client_secret:
                raise RuntimeError("client_secret is required when client_auth_method is client_secret_basic.")
            headers["Authorization"] = f"Basic {_encode_basic_auth(client_id, client_secret)}"
        elif resolved_client_auth_method != "none":
            raise RuntimeError(f"Unsupported OAuth client_auth_method: {resolved_client_auth_method}")

        return _json_request(
            endpoint,
            method="POST",
            body=urllib.parse.urlencode(request_body),
            headers=headers,
            timeout=self.timeout,
        )
