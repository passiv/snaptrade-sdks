package snaptrade

import (
	"context"
	"fmt"
	"net/http"
	"net/url"
	"time"
)

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

func prepareRequestAfter(
	httpRequest *http.Request,
	ctx context.Context) {
	fmt.Println("Preparing request after:", httpRequest.Method, httpRequest.URL)
}
