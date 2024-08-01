# APIClient.APIStatusApi

All URIs are relative to *https://api.snaptrade.com/api/v1*

Method | Path | Description
------------- | ------------- | -------------
[**Check**](APIStatusApi.md#Check) | **Get** / | Get API Status



## Check

Get API Status



### Example

```go
package main

import (
    "fmt"
    "os"
    snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func main() {
    configuration := snaptrade.NewConfiguration()
    client := snaptrade.NewAPIClient(configuration)

    request := client.APIStatusApi.Check(
    )
    
    resp, httpRes, err := request.Execute()

    if err != nil {
        fmt.Fprintf(os.Stderr, "Error when calling `APIStatusApi.Check``: %v\n", err)
        fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", httpRes)
    }
    // response from `Check`: Status
    fmt.Fprintf(os.Stdout, "Response from `APIStatusApi.Check`: %v\n", resp)
    fmt.Fprintf(os.Stdout, "Response from `Status.Check.Version`: %v\n", *resp.Version)
    fmt.Fprintf(os.Stdout, "Response from `Status.Check.Timestamp`: %v\n", *resp.Timestamp)
    fmt.Fprintf(os.Stdout, "Response from `Status.Check.Online`: %v\n", *resp.Online)
}
```

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

