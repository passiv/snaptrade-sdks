---
python: minor
---

Restore OAuth bearer authentication with `SnapTradeAuth.oauth(access_token=...)` on supported operations. Applications own token storage, refresh and callback validation. Unsupported authentication modes fail before sending a request.
