package snaptrade

import (
	"context"
	"crypto/hmac"
	"crypto/sha256"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"net/http"
	"net/url"
	"time"
)

// prepareRequestBefore prepares the request before sending it
func prepareRequestBefore(
	ctx context.Context,
	path string, method string,
	postBody interface{},
	headerParams map[string]string,
	queryParams url.Values,
	formParams url.Values,
	formFiles []formFile) {
	queryParams["timestamp"] = []string{fmt.Sprintf("%d", time.Now().Unix())}
	fmt.Println("Query Parameters:", queryParams)
}

// prepareRequestAfter prepares the request after it has been created
func prepareRequestAfter(
	httpRequest *http.Request,
	ctx context.Context,
) {
	fmt.Println("Preparing request after:", httpRequest.Method, httpRequest.URL)

	// Extract consumer key from context
	apiKeys := ctx.Value(ContextAPIKeys).(map[string]APIKey)
	consumerKey := apiKeys[""].Key // Assuming the consumer key is stored without a specific key name

	// Prepare request data from the body
	var requestData interface{}
	if httpRequest.Body != nil {
		var bodyBytes []byte
		if _, err := httpRequest.Body.Read(bodyBytes); err == nil {
			json.Unmarshal(bodyBytes, &requestData)
		}
	}

	// Prepare request path and query
	requestPath := httpRequest.URL.Path
	requestQuery := httpRequest.URL.RawQuery

	// Create signature object
	sigObject := map[string]interface{}{
		"content": requestData,
		"path":    requestPath,
		"query":   requestQuery,
	}

	// Generate signature
	sigContent, _ := json.Marshal(sigObject)
	signature := computeHmacSha256(string(sigContent), consumerKey)

	// Add signature to headers
	httpRequest.Header.Set("Signature", signature)
}

// computeHmacSha256 computes HMAC SHA256 signature
func computeHmacSha256(message string, key string) string {
	h := hmac.New(sha256.New, []byte(key))
	h.Write([]byte(message))
	return base64.StdEncoding.EncodeToString(h.Sum(nil))
}
