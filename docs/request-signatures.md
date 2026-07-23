# Request Signatures

SnapTrade API requests made with a `clientId` and `consumerKey` are authenticated with a Unix `timestamp` query parameter and a `Signature` header.

The official SnapTrade SDKs generate request signatures automatically. You only need to implement this flow manually if you are calling the SnapTrade API directly without an SDK.

## Overview

To generate a request signature:

1. Add `clientId` and `timestamp` to the request query string.
2. Build a signature payload containing the request body, path, and query string.
3. Serialize the payload into canonical JSON.
4. Sign the canonical JSON string using HMAC-SHA256 with your `consumerKey`.
5. Base64-encode the HMAC digest.
6. Send the encoded value in the `Signature` header.

## Signature Payload

The signature payload is a JSON object with exactly three fields:

| Field | Description |
|---|---|
| `content` | The JSON request body. Use `null` when the request has no body or the body is empty. |
| `path` | The request path, including `/api/v1`, excluding the query string. |
| `query` | The raw query string exactly as sent in the request URL, excluding the leading `?`. |

Example request:

```http
POST /api/v1/symbols?clientId=YOUR_CLIENT_ID&timestamp=1715123456
Signature: <generated_signature>
Content-Type: application/json

{"substring":"AAPL"}
```

The signature payload for this request is:

```json
{
  "content": {
    "substring": "AAPL"
  },
  "path": "/api/v1/symbols",
  "query": "clientId=YOUR_CLIENT_ID&timestamp=1715123456"
}
```

## Canonical JSON Rules

Before signing, the signature payload must be serialized into a canonical JSON string.

Use these rules:

1. Sort object keys alphabetically at every level.
2. Remove unnecessary whitespace.
3. Encode the resulting string as UTF-8.
4. Use `null` for empty request bodies.

The canonical signature string for the example above is:

```json
{"content":{"substring":"AAPL"},"path":"/api/v1/symbols","query":"clientId=YOUR_CLIENT_ID&timestamp=1715123456"}
```

The following string represents the same JSON object, but it is not valid for signing because it contains extra whitespace:

```json
{"content": {"substring": "AAPL"}, "path": "/api/v1/symbols", "query": "clientId=YOUR_CLIENT_ID&timestamp=1715123456"}
```

Cryptographic signatures are generated from the exact bytes of the string. Even small formatting differences will produce a different signature.

## Request Details

The `query` value is the exact query string sent in the request URL, excluding the leading `?`.

Example:

```text
/api/v1/symbols?clientId=YOUR_CLIENT_ID&timestamp=1715123456
```

Use:

```text
clientId=YOUR_CLIENT_ID&timestamp=1715123456
```

Do not sort, decode, re-encode, or otherwise modify query parameters before signing.

For requests without a body, set `content` to `null`. This includes GET requests, bodyless DELETE/POST requests, and requests where the body would otherwise be `{}`.

## End-to-End Example

This example signs a direct API request for the symbol search endpoint. Replace `YOUR_CLIENT_ID` and `YOUR_CONSUMER_KEY` with your API key values. If your request includes additional query parameters, include those exact parameters in the URL and in the signature payload's `query` value.

```http
POST /api/v1/symbols?clientId=YOUR_CLIENT_ID&timestamp=1715123456
Signature: <generated_signature>
Content-Type: application/json

{"substring":"AAPL"}
```

### Python Example

```python
from base64 import b64encode
import hashlib
import hmac
import json
import time
import typing
from urllib.parse import urlencode


def compute_request_signature(path: str, consumer_key: str, body: typing.Any = None) -> str:
    subpath, query = path.split("?", 1)
    sig_object = {
        "content": None if body is None or body == {} else body,
        "path": "/api/v1%s" % subpath,
        "query": query,
    }
    sig_content = json.dumps(sig_object, separators=(",", ":"), sort_keys=True)
    sig_digest = hmac.new(consumer_key.encode(), sig_content.encode(), hashlib.sha256).digest()
    return b64encode(sig_digest).decode()


query = urlencode({"clientId": "YOUR_CLIENT_ID", "timestamp": int(time.time())})
resource_path = f"/symbols?{query}"
request_body = {"substring": "AAPL"}
signature = compute_request_signature(resource_path, "YOUR_CONSUMER_KEY", request_body)
```

### TypeScript Example (Node.js)

```typescript
import * as crypto from "crypto";

function JSONstringifyOrder(obj: Record<string, unknown>): string {
  const allKeys: string[] = [];
  const seen: Record<string, null> = {};
  JSON.stringify(obj, function (key, value) {
    if (!(key in seen)) {
      allKeys.push(key);
      seen[key] = null;
    }
    return value;
  });
  allKeys.sort();
  return JSON.stringify(obj, allKeys);
}

function computeHmacSha256(message: string, key: string): string {
  const hmac = crypto.createHmac("sha256", key);
  hmac.update(message);
  return hmac.digest("base64");
}

const clientId = "YOUR_CLIENT_ID";
const consumerKey = "YOUR_CONSUMER_KEY";
const timestamp = Math.floor(Date.now() / 1000);

const requestPath = "/api/v1/symbols";
const requestQuery = new URLSearchParams({
  clientId,
  timestamp: timestamp.toString(),
}).toString();

const requestData = { substring: "AAPL" };

const sigObject = {
  content: requestData,
  path: requestPath,
  query: requestQuery,
};

const sigContent = JSONstringifyOrder(sigObject);
const signature = computeHmacSha256(sigContent, consumerKey);
```

### Java Example

```java
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;

public class Example {
    private static byte[] calculateHmacSha256(String message, String key)
            throws NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec secretKeySpec = new SecretKeySpec(key.getBytes(StandardCharsets.UTF_8), "HmacSHA256");
        Mac mac = Mac.getInstance("HmacSHA256");
        mac.init(secretKeySpec);
        return mac.doFinal(message.getBytes(StandardCharsets.UTF_8));
    }

    private static String encodeBase64(byte[] bytes) {
        return Base64.getEncoder().encodeToString(bytes);
    }

    public static void main(String[] args) throws NoSuchAlgorithmException, InvalidKeyException {
        String clientId = "YOUR_CLIENT_ID";
        String consumerKey = "YOUR_CONSUMER_KEY";
        long timestamp = System.currentTimeMillis() / 1000L;

        String path = "/api/v1/symbols";
        String queryString = "clientId=" + clientId + "&timestamp=" + timestamp;
        String requestBody = "{\"substring\":\"AAPL\"}";
        String data = String.format("{\"content\":%s,\"path\":\"%s\",\"query\":\"%s\"}", requestBody, path, queryString);
        String signature = encodeBase64(calculateHmacSha256(data, consumerKey));
    }
}
```

### Go Example

```go
package main

import (
	"bytes"
	"crypto/hmac"
	"crypto/sha256"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"net/url"
	"sort"
	"strings"
	"time"
)

func computeHmacSha256(message string, key string) string {
	h := hmac.New(sha256.New, []byte(key))
	h.Write([]byte(message))
	return base64.StdEncoding.EncodeToString(h.Sum(nil))
}

func main() {
	clientId := "YOUR_CLIENT_ID"
	consumerKey := "YOUR_CONSUMER_KEY"
	timestamp := time.Now().Unix()

	requestPath := "/api/v1/symbols"
	query := url.Values{}
	query.Set("clientId", clientId)
	query.Set("timestamp", fmt.Sprintf("%d", timestamp))
	requestQuery := query.Encode()

	requestData := map[string]interface{}{"substring": "AAPL"}

	sigObject := map[string]interface{}{
		"content": requestData,
		"path":    requestPath,
		"query":   requestQuery,
	}

	sortedSigObject := make(map[string]interface{})
	keys := make([]string, 0, len(sigObject))
	for k := range sigObject {
		keys = append(keys, k)
	}
	sort.Strings(keys)
	for _, k := range keys {
		sortedSigObject[k] = sigObject[k]
	}

	var sigContent bytes.Buffer
	encoder := json.NewEncoder(&sigContent)
	encoder.SetEscapeHTML(false)
	encoder.Encode(sortedSigObject)

	signature := computeHmacSha256(strings.TrimSuffix(sigContent.String(), "\n"), consumerKey)
	_ = signature
}
```

## Query Parameters

The same signing rules apply to every authentication mode that uses `clientId`, `timestamp`, and `Signature`. Sign the exact query string you send. For example, a request with additional query parameters signs those parameters as part of `query`:

```http
POST /api/v1/symbols?clientId=YOUR_CLIENT_ID&timestamp=1715123456&userId=YOUR_USER_ID&userSecret=YOUR_USER_SECRET
Signature: <generated_signature>
Content-Type: application/json

{"substring":"AAPL"}
```
