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


// TradingApiService TradingApi service
type TradingApiService service

type TradingApiCancelUserAccountOrderRequest struct {
	ctx context.Context
	ApiService *TradingApiService
	userId string
	userSecret string
	accountId string
	tradingCancelUserAccountOrderRequest TradingCancelUserAccountOrderRequest
}

func (r TradingApiCancelUserAccountOrderRequest) Execute() (*AccountOrderRecord, *http.Response, error) {
	return r.ApiService.CancelUserAccountOrderExecute(r)
}

/*
CancelUserAccountOrder Cancel open order in account

Sends a signal to the brokerage to cancel the specified order.
This will only work if the order has not yet been executed.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId The ID of the account to cancel the order in.
 @param tradingCancelUserAccountOrderRequest The Order ID to be canceled
 @return TradingApiCancelUserAccountOrderRequest
*/
func (a *TradingApiService) CancelUserAccountOrder(userId string, userSecret string, accountId string, tradingCancelUserAccountOrderRequest TradingCancelUserAccountOrderRequest) TradingApiCancelUserAccountOrderRequest {
	return TradingApiCancelUserAccountOrderRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
		tradingCancelUserAccountOrderRequest: tradingCancelUserAccountOrderRequest,
	}
}

// Execute executes the request
//  @return AccountOrderRecord
func (a *TradingApiService) CancelUserAccountOrderExecute(r TradingApiCancelUserAccountOrderRequest) (*AccountOrderRecord, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *AccountOrderRecord
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TradingApiService.CancelUserAccountOrder")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/orders/cancel"
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
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

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
	// body params
    if !checkNilInterface(r.tradingCancelUserAccountOrderRequest) {
        localVarPostBody = r.tradingCancelUserAccountOrderRequest
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
		if localVarHTTPResponse.StatusCode == 500 {
			var v Model500UnexpectedExceptionResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
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

type TradingApiGetOrderImpactRequest struct {
	ctx context.Context
	ApiService *TradingApiService
	userId string
	userSecret string
	manualTradeForm ManualTradeForm
}

func (r TradingApiGetOrderImpactRequest) Execute() (*ManualTradeAndImpact, *http.Response, error) {
	return r.ApiService.GetOrderImpactExecute(r)
}

/*
GetOrderImpact Check the impact of a trade on an account

Return the trade object and it's impact on the account for the specified order.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param manualTradeForm
 @return TradingApiGetOrderImpactRequest
*/
func (a *TradingApiService) GetOrderImpact(userId string, userSecret string, manualTradeForm ManualTradeForm) TradingApiGetOrderImpactRequest {
	return TradingApiGetOrderImpactRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		manualTradeForm: manualTradeForm,
	}
}

// Execute executes the request
//  @return ManualTradeAndImpact
func (a *TradingApiService) GetOrderImpactExecute(r TradingApiGetOrderImpactRequest) (*ManualTradeAndImpact, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *ManualTradeAndImpact
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TradingApiService.GetOrderImpact")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/trade/impact"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("userId", parameterToString(r.userId, ""))
	localVarQueryParams.Add("userSecret", parameterToString(r.userSecret, ""))
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

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
	// body params
    if !checkNilInterface(r.manualTradeForm) {
        localVarPostBody = r.manualTradeForm
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
		if localVarHTTPResponse.StatusCode == 403 {
			var v Model403FailedRequestResponse
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

type TradingApiGetUserAccountQuotesRequest struct {
	ctx context.Context
	ApiService *TradingApiService
	userId string
	userSecret string
	symbols string
	accountId string
	useTicker *bool
}

// Should be set to True if providing tickers.
func (r *TradingApiGetUserAccountQuotesRequest) UseTicker(useTicker bool) *TradingApiGetUserAccountQuotesRequest {
	r.useTicker = &useTicker
	return r
}

func (r TradingApiGetUserAccountQuotesRequest) Execute() ([]SymbolsQuotesInner, *http.Response, error) {
	return r.ApiService.GetUserAccountQuotesExecute(r)
}

/*
GetUserAccountQuotes Get symbol quotes

Returns quote(s) from the brokerage for the specified symbol(s).

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param symbols List of universal_symbol_id or tickers to get quotes for.
 @param accountId The ID of the account to get quotes.
 @return TradingApiGetUserAccountQuotesRequest
*/
func (a *TradingApiService) GetUserAccountQuotes(userId string, userSecret string, symbols string, accountId string) TradingApiGetUserAccountQuotesRequest {
	return TradingApiGetUserAccountQuotesRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		symbols: symbols,
		accountId: accountId,
	}
}

// Execute executes the request
//  @return []SymbolsQuotesInner
func (a *TradingApiService) GetUserAccountQuotesExecute(r TradingApiGetUserAccountQuotesRequest) ([]SymbolsQuotesInner, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []SymbolsQuotesInner
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TradingApiService.GetUserAccountQuotes")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/quotes"
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
	localVarQueryParams.Add("symbols", parameterToString(r.symbols, ""))
	if r.useTicker != nil {
		localVarQueryParams.Add("use_ticker", parameterToString(*r.useTicker, ""))
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
		if localVarHTTPResponse.StatusCode == 500 {
			var v Model500UnexpectedExceptionResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
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

type TradingApiPlaceForceOrderRequest struct {
	ctx context.Context
	ApiService *TradingApiService
	userId string
	userSecret string
	manualTradeForm ManualTradeForm
}

func (r TradingApiPlaceForceOrderRequest) Execute() (*AccountOrderRecord, *http.Response, error) {
	return r.ApiService.PlaceForceOrderExecute(r)
}

/*
PlaceForceOrder Place a trade with NO validation.

Places a specified trade in the specified account.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param manualTradeForm
 @return TradingApiPlaceForceOrderRequest
*/
func (a *TradingApiService) PlaceForceOrder(userId string, userSecret string, manualTradeForm ManualTradeForm) TradingApiPlaceForceOrderRequest {
	return TradingApiPlaceForceOrderRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		manualTradeForm: manualTradeForm,
	}
}

// Execute executes the request
//  @return AccountOrderRecord
func (a *TradingApiService) PlaceForceOrderExecute(r TradingApiPlaceForceOrderRequest) (*AccountOrderRecord, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *AccountOrderRecord
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TradingApiService.PlaceForceOrder")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/trade/place"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("userId", parameterToString(r.userId, ""))
	localVarQueryParams.Add("userSecret", parameterToString(r.userSecret, ""))
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

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
	// body params
    if !checkNilInterface(r.manualTradeForm) {
        localVarPostBody = r.manualTradeForm
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
		if localVarHTTPResponse.StatusCode == 403 {
			var v Model403FailedRequestResponse
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

type TradingApiPlaceOrderRequest struct {
	ctx context.Context
	ApiService *TradingApiService
	tradeId string
	userId string
	userSecret string
	validatedTradeBody *ValidatedTradeBody
}

func (r *TradingApiPlaceOrderRequest) ValidatedTradeBody(validatedTradeBody ValidatedTradeBody) *TradingApiPlaceOrderRequest {
	r.validatedTradeBody = &validatedTradeBody
	return r
}

func (r TradingApiPlaceOrderRequest) Execute() (*AccountOrderRecord, *http.Response, error) {
	return r.ApiService.PlaceOrderExecute(r)
}

/*
PlaceOrder Place order

Places the specified trade object. This places the order in the account and
returns the status of the order from the brokerage.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param tradeId The ID of trade object obtained from trade/impact endpoint
 @param userId
 @param userSecret
 @return TradingApiPlaceOrderRequest
*/
func (a *TradingApiService) PlaceOrder(tradeId string, userId string, userSecret string) TradingApiPlaceOrderRequest {
	return TradingApiPlaceOrderRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		tradeId: tradeId,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
//  @return AccountOrderRecord
func (a *TradingApiService) PlaceOrderExecute(r TradingApiPlaceOrderRequest) (*AccountOrderRecord, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *AccountOrderRecord
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "TradingApiService.PlaceOrder")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/trade/{tradeId}"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"tradeId"+"}", url.PathEscape(parameterToString(r.tradeId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("userId", parameterToString(r.userId, ""))
	localVarQueryParams.Add("userSecret", parameterToString(r.userSecret, ""))
	// to determine the Content-Type header
	localVarHTTPContentTypes := []string{"application/json"}

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
	// body params
    if r.validatedTradeBody != nil {
        localVarPostBody = r.validatedTradeBody
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
