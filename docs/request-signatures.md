# Request Signatures

SnapTrade API requests are authenticated using your `clientId`, a Unix `timestamp`, and a `Signature` header.

The official SnapTrade SDKs generate request signatures automatically. You only need to implement this flow manually if you are calling the SnapTrade API directly without an SDK.

## Overview

To generate a request signature:

1. Build a signature payload containing the request body, path, and query string.
2. Serialize the payload into canonical JSON.
3. Sign the canonical JSON string using HMAC-SHA256 with your `consumerKey`.
4. Base64-encode the HMAC digest.
5. Send the encoded value in the `Signature` header.

## Signature Payload

The signature payload is a JSON object with exactly three fields:

| Field | Description |
|---|---|
| `content` | The JSON request body. Use `null` when the request has no body or the body is empty. |
| `path` | The request path, including `/api/v1`, excluding the query string. |
| `query` | The raw query string exactly as sent in the request URL, excluding the leading `?`. |

Example request:

~~~http
POST /api/v1/snapTrade/registerUser?clientId=PASSIVTEST&timestamp=1635790389
Signature: <generated_signature>
Content-Type: application/json

{"userId":"new_user_123"}
~~~

The signature payload for this request is:

~~~json
{
  "content": {
    "userId": "new_user_123"
  },
  "path": "/api/v1/snapTrade/registerUser",
  "query": "clientId=PASSIVTEST&timestamp=1635790389"
}
~~~

## Canonical JSON Rules

Before signing, the signature payload must be serialized into a canonical JSON string.

Use these rules:

1. Sort object keys alphabetically at every level.
2. Remove unnecessary whitespace.
3. Encode the resulting string as UTF-8.
4. Use `null` for empty request bodies.

The canonical signature string for the example above is:

~~~json
{"content":{"userId":"new_user_123"},"path":"/api/v1/snapTrade/registerUser","query":"clientId=PASSIVTEST&timestamp=1635790389"}
~~~

The following string represents the same JSON object, but it is not valid for signing because it contains extra whitespace:

~~~json
{"content": {"userId": "new_user_123"}, "path": "/api/v1/snapTrade/registerUser", "query": "clientId=PASSIVTEST&timestamp=1635790389"}
~~~

Cryptographic signatures are generated from the exact bytes of the string. Even small formatting differences will produce a different signature.

## Request Details

The `query` value is the exact query string sent in the request URL, excluding the leading `?`.

Example:

~~~text
/api/v1/snapTrade/registerUser?clientId=PASSIVTEST&timestamp=1635790389
~~~

Use:

~~~text
clientId=PASSIVTEST&timestamp=1635790389
~~~

Do not sort, decode, re-encode, or otherwise modify query parameters before signing.

For requests without body, set `content` to `null`. This includes GET requests, bodyless DELETE/POST requests, and requests where the body would otherwise be `{}`.

### Python Example

```python
from base64 import b64encode
import hashlib
import hmac
import json
import typing


def compute_request_signature(path: str, consumer_key: str, body: typing.Any) -> str:
    subpath, query = path.split("?")
    sig_object = {
        "content": None if body is None or body == {} else body,
        "path": "/api/v1%s" % subpath,
        "query": query,
    }
    sig_content = json.dumps(sig_object, separators=(",", ":"), sort_keys=True)
    sig_digest = hmac.new(consumer_key.encode(), sig_content.encode(), hashlib.sha256).digest()
    return b64encode(sig_digest).decode()


resource_path = "/snapTrade/registerUser?clientId=PASSIVTEST&timestamp=1635790389"
request_body = {"userId": "new_user_123"}

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

const consumerKey = encodeURI("YOUR_CONSUMER_KEY");

const requestData = { userId: "new_user_123" };
const requestPath = "/api/v1/snapTrade/registerUser";
const requestQuery = "clientId=PASSIVTEST&timestamp=1635790389";

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
import com.google.gson.Gson;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import java.nio.charset.StandardCharsets;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Base64;
import java.util.TreeMap;

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
        Gson gson = new Gson();
        String payload = "{\"userId\":\"new_user_123\"}";
        String path = "/snapTrade/registerUser";
        String queryString = "clientId=PASSIVTEST&timestamp=1635790389";
        Object map = gson.fromJson(payload, TreeMap.class);
        String sortedJson = map == null ? "\"\"" : gson.toJson(map);
        String data = String.format("{\"content\":%s,\"path\":\"/api/v1%s\",\"query\":\"%s\"}",
                payload == null || payload.equals("") || payload.equals("{}") ? "null" : sortedJson, path,
                queryString);
        String signature = encodeBase64(calculateHmacSha256(data, "YOUR_CONSUMER_KEY"));
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
	"sort"
	"strings"
)

func computeHmacSha256(message string, key string) string {
	h := hmac.New(sha256.New, []byte(key))
	h.Write([]byte(message))
	return base64.StdEncoding.EncodeToString(h.Sum(nil))
}

func main() {
	requestData := map[string]interface{}{"userId": "new_user_123"}
	requestPath := "/api/v1/snapTrade/registerUser"
	requestQuery := "clientId=PASSIVTEST&timestamp=1635790389"

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

	signature := computeHmacSha256(strings.TrimSuffix(sigContent.String(), "\n"), "YOUR_CONSUMER_KEY")
	_ = signature
}
```
