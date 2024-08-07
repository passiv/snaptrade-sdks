package snaptrade

import (
	"bytes"
	"context"
	"crypto/hmac"
	"crypto/sha256"
	"encoding/base64"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
	"sort"
	"strings"
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
}

// prepareRequestAfter prepares the request after it has been created
func prepareRequestAfter(
	httpRequest *http.Request,
	ctx context.Context,
) {
	// Extract consumer key from context
	apiKeys := ctx.Value(ContextAPIKeys).(map[string]APIKey)
	consumerKey := apiKeys["ConsumerKey"].Key // Assuming the consumer key is stored without a specific key name

	// Prepare request data from the body
	var requestData interface{}
	if httpRequest.Body != nil {
		bodyBytes, err := ioutil.ReadAll(httpRequest.Body)
		if err == nil {
			httpRequest.Body = ioutil.NopCloser(bytes.NewBuffer(bodyBytes)) // Reset the body for future reads
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

	// Sort keys in sigObject before encoding
	sortedSigObject := make(map[string]interface{})
	keys := make([]string, 0, len(sigObject))
	for k := range sigObject {
		keys = append(keys, k)
	}
	sort.Strings(keys) // Sort keys

	for _, k := range keys {
		sortedSigObject[k] = sigObject[k]
	}

	// Generate signature
	var sigContent bytes.Buffer
	encoder := json.NewEncoder(&sigContent)
	encoder.SetEscapeHTML(false)    // Prevent escaping of HTML characters
	encoder.Encode(sortedSigObject) // Encode sorted object
	signature := computeHmacSha256(strings.TrimSuffix(sigContent.String(), "\n"), consumerKey)

	// Add signature to headers
	httpRequest.Header.Set("Signature", signature)
}

// computeHmacSha256 computes HMAC SHA256 signature and encodes it as base64
func computeHmacSha256(message string, key string) string {
	h := hmac.New(sha256.New, []byte(key))
	h.Write([]byte(message))
	return base64.StdEncoding.EncodeToString(h.Sum(nil))
}
