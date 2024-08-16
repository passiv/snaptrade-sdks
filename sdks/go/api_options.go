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


// OptionsApiService OptionsApi service
type OptionsApiService service

type OptionsApiGetOptionStrategyRequest struct {
	ctx context.Context
	ApiService *OptionsApiService
	userId string
	userSecret string
	accountId string
	optionsGetOptionStrategyRequest OptionsGetOptionStrategyRequest
}

func (r OptionsApiGetOptionStrategyRequest) Execute() (*StrategyQuotes, *http.Response, error) {
	return r.ApiService.GetOptionStrategyExecute(r)
}

/*
GetOptionStrategy Create options strategy

Creates an option strategy object that will be used to place an option strategy order.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId The ID of the account to create the option strategy object in.
 @param optionsGetOptionStrategyRequest
 @return OptionsApiGetOptionStrategyRequest
*/
func (a *OptionsApiService) GetOptionStrategy(userId string, userSecret string, accountId string, optionsGetOptionStrategyRequest OptionsGetOptionStrategyRequest) OptionsApiGetOptionStrategyRequest {
	return OptionsApiGetOptionStrategyRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
		optionsGetOptionStrategyRequest: optionsGetOptionStrategyRequest,
	}
}

// Execute executes the request
//  @return StrategyQuotes
func (a *OptionsApiService) GetOptionStrategyExecute(r OptionsApiGetOptionStrategyRequest) (*StrategyQuotes, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *StrategyQuotes
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsApiService.GetOptionStrategy")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/optionStrategy"
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
    if !checkNilInterface(r.optionsGetOptionStrategyRequest) {
        localVarPostBody = r.optionsGetOptionStrategyRequest
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

type OptionsApiGetOptionsChainRequest struct {
	ctx context.Context
	ApiService *OptionsApiService
	userId string
	userSecret string
	accountId string
	symbol string
}

func (r OptionsApiGetOptionsChainRequest) Execute() ([]OptionChainInner, *http.Response, error) {
	return r.ApiService.GetOptionsChainExecute(r)
}

/*
GetOptionsChain Get the options chain for a symbol

Returns the option chain for the specified symbol in the specified account.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId The ID of the account to get the options chain from.
 @param symbol Universal symbol ID if symbol
 @return OptionsApiGetOptionsChainRequest
*/
func (a *OptionsApiService) GetOptionsChain(userId string, userSecret string, accountId string, symbol string) OptionsApiGetOptionsChainRequest {
	return OptionsApiGetOptionsChainRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
		symbol: symbol,
	}
}

// Execute executes the request
//  @return []OptionChainInner
func (a *OptionsApiService) GetOptionsChainExecute(r OptionsApiGetOptionsChainRequest) ([]OptionChainInner, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []OptionChainInner
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsApiService.GetOptionsChain")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/optionsChain"
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
	localVarQueryParams.Add("symbol", parameterToString(r.symbol, ""))
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

type OptionsApiGetOptionsStrategyQuoteRequest struct {
	ctx context.Context
	ApiService *OptionsApiService
	userId string
	userSecret string
	accountId string
	optionStrategyId string
}

func (r OptionsApiGetOptionsStrategyQuoteRequest) Execute() (*StrategyQuotes, *http.Response, error) {
	return r.ApiService.GetOptionsStrategyQuoteExecute(r)
}

/*
GetOptionsStrategyQuote Get options strategy quotes

Returns a Strategy Quotes object which has latest market data of the specified option strategy.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId The ID of the account the strategy will be placed in.
 @param optionStrategyId Option strategy id obtained from response when creating option strategy object
 @return OptionsApiGetOptionsStrategyQuoteRequest
*/
func (a *OptionsApiService) GetOptionsStrategyQuote(userId string, userSecret string, accountId string, optionStrategyId string) OptionsApiGetOptionsStrategyQuoteRequest {
	return OptionsApiGetOptionsStrategyQuoteRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
		optionStrategyId: optionStrategyId,
	}
}

// Execute executes the request
//  @return StrategyQuotes
func (a *OptionsApiService) GetOptionsStrategyQuoteExecute(r OptionsApiGetOptionsStrategyQuoteRequest) (*StrategyQuotes, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *StrategyQuotes
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsApiService.GetOptionsStrategyQuote")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/optionStrategy/{optionStrategyId}"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"accountId"+"}", url.PathEscape(parameterToString(r.accountId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"optionStrategyId"+"}", url.PathEscape(parameterToString(r.optionStrategyId, "")), -1)

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("userId", parameterToString(r.userId, ""))
	localVarQueryParams.Add("userSecret", parameterToString(r.userSecret, ""))
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

type OptionsApiListOptionHoldingsRequest struct {
	ctx context.Context
	ApiService *OptionsApiService
	userId string
	userSecret string
	accountId string
}

func (r OptionsApiListOptionHoldingsRequest) Execute() ([]OptionsPosition, *http.Response, error) {
	return r.ApiService.ListOptionHoldingsExecute(r)
}

/*
ListOptionHoldings List account option positions

Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).

The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.


 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId
 @return OptionsApiListOptionHoldingsRequest
*/
func (a *OptionsApiService) ListOptionHoldings(userId string, userSecret string, accountId string) OptionsApiListOptionHoldingsRequest {
	return OptionsApiListOptionHoldingsRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
	}
}

// Execute executes the request
//  @return []OptionsPosition
func (a *OptionsApiService) ListOptionHoldingsExecute(r OptionsApiListOptionHoldingsRequest) ([]OptionsPosition, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []OptionsPosition
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsApiService.ListOptionHoldings")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/options"
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

type OptionsApiPlaceOptionStrategyRequest struct {
	ctx context.Context
	ApiService *OptionsApiService
	userId string
	userSecret string
	accountId string
	optionStrategyId string
	optionsPlaceOptionStrategyRequest OptionsPlaceOptionStrategyRequest
}

func (r OptionsApiPlaceOptionStrategyRequest) Execute() (*StrategyOrderRecord, *http.Response, error) {
	return r.ApiService.PlaceOptionStrategyExecute(r)
}

/*
PlaceOptionStrategy Place an option strategy order

Places the option strategy order and returns the order record received from the brokerage.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @param accountId The ID of the account to execute the strategy in.
 @param optionStrategyId Option strategy id obtained from response when creating option strategy object
 @param optionsPlaceOptionStrategyRequest
 @return OptionsApiPlaceOptionStrategyRequest
*/
func (a *OptionsApiService) PlaceOptionStrategy(userId string, userSecret string, accountId string, optionStrategyId string, optionsPlaceOptionStrategyRequest OptionsPlaceOptionStrategyRequest) OptionsApiPlaceOptionStrategyRequest {
	return OptionsApiPlaceOptionStrategyRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
		accountId: accountId,
		optionStrategyId: optionStrategyId,
		optionsPlaceOptionStrategyRequest: optionsPlaceOptionStrategyRequest,
	}
}

// Execute executes the request
//  @return StrategyOrderRecord
func (a *OptionsApiService) PlaceOptionStrategyExecute(r OptionsApiPlaceOptionStrategyRequest) (*StrategyOrderRecord, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *StrategyOrderRecord
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "OptionsApiService.PlaceOptionStrategy")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/accounts/{accountId}/optionStrategy/{optionStrategyId}/execute"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"accountId"+"}", url.PathEscape(parameterToString(r.accountId, "")), -1)
	localVarPath = strings.Replace(localVarPath, "{"+"optionStrategyId"+"}", url.PathEscape(parameterToString(r.optionStrategyId, "")), -1)

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
    if !checkNilInterface(r.optionsPlaceOptionStrategyRequest) {
        localVarPostBody = r.optionsPlaceOptionStrategyRequest
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
