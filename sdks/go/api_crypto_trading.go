/*
SnapTrade

Connect brokerage accounts to your app for live positions and trading

API version: 1.0.0
Contact: api@snaptrade.com
*/

// Code generated by Konfig (https://konfigthis.com); DO NOT EDIT.

package snaptrade

import (
	"bytes"
	"context"
	"io/ioutil"
	"net/http"
	"net/url"
	"strings"
)


// CryptoTradingApiService CryptoTradingApi service
type CryptoTradingApiService service

type CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest struct {
	ctx context.Context
	ApiService *CryptoTradingApiService
	userId string
	userSecret string
	accountId string
	base *string
	quote *string
}

func (r *CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest) Base(base string) *CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest {
	r.base = &base
	return r
}

func (r *CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest) Quote(quote string) *CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest {
	r.quote = &quote
	return r
}

func (r CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest) Execute() (*TradingSearchCryptocurrencyPairInstruments200Response, *http.Response, error) {
	return r.ApiService.SearchCryptocurrencyPairInstrumentsExecute(r)
}

/*
SearchCryptocurrencyPairInstruments Search cryptocurrency pairs instruments

Searches cryptocurrency pairs instruments accessible to the specified account.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId
 @return CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest
*/
func (a *CryptoTradingApiService) SearchCryptocurrencyPairInstruments(userId string, userSecret string, accountId string) CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest {
	return CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
	}
}

// Execute executes the request
//  @return TradingSearchCryptocurrencyPairInstruments200Response
func (a *CryptoTradingApiService) SearchCryptocurrencyPairInstrumentsExecute(r CryptoTradingApiSearchCryptocurrencyPairInstrumentsRequest) (*TradingSearchCryptocurrencyPairInstruments200Response, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *TradingSearchCryptocurrencyPairInstruments200Response
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "CryptoTradingApiService.SearchCryptocurrencyPairInstruments")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/trading/instruments/cryptocurrencyPairs"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"accountId"+"}", url.PathEscape(parameterToString(r.accountId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("userId", parameterToString(r.userId, ""))
	localVarQueryParams.Add("userSecret", parameterToString(r.userSecret, ""))
	if r.base != nil {
		localVarQueryParams.Add("base", parameterToString(*r.base, ""))
	}
	if r.quote != nil {
		localVarQueryParams.Add("quote", parameterToString(*r.quote, ""))
	}
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{}

	// set Content-Type header
	localVarHTTPContentType := selectHeaderContentType(localVarHTTPContentTypes)
	if localVarHTTPContentType != "" {
		localVarHeaderParams["Content-Type"] = localVarHTTPContentType
	}

	// to determine the Accept header
	localVarHTTPHeaderAccepts := []string{"application/json"}

	// set Accept header
	localVarHTTPHeaderAccept := selectHeaderAccept(localVarHTTPHeaderAccepts)
	if localVarHTTPHeaderAccept != "" {
		localVarHeaderParams["Accept"] = localVarHTTPHeaderAccept
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["PartnerClientId"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("clientId", key)
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["PartnerSignature"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarHeaderParams["Signature"] = key
			}
		}
	}
	if r.ctx != nil {
		// API Key Authentication
		if auth, ok := r.ctx.Value(ContextAPIKeys).(map[string]APIKey); ok {
			if apiKey, ok := auth["PartnerTimestamp"]; ok {
				var key string
				if apiKey.Prefix != "" {
					key = apiKey.Prefix + apiKey.Key
				} else {
					key = apiKey.Key
				}
				localVarQueryParams.Add("timestamp", key)
			}
		}
	}

    prepareRequestBefore(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	req, err := a.client.prepareRequest(r.ctx, localVarPath, localVarHTTPMethod, localVarPostBody, localVarHeaderParams, localVarQueryParams, localVarFormParams, formFiles)
	if err != nil {
		return localVarReturnValue, nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarReturnValue, localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		if localVarHTTPResponse.StatusCode == 400 {
			var v Model400FailedRequestResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	err = a.client.decode(&localVarReturnValue, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
	if err != nil {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: err.Error(),
		}
		return localVarReturnValue, localVarHTTPResponse, newErr
	}

	return localVarReturnValue, localVarHTTPResponse, nil
}
