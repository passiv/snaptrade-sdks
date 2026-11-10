---
python: minor
---

Restore OAuth bearer authentication with `SnapTradeAuth.oauth(access_token=...)` on supported operations and add minimal device authorization helpers with polling for pre-registered public device clients. Applications own token storage, refresh and callback validation. Unsupported authentication modes fail before sending a request.
