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


// ConnectionsApiService ConnectionsApi service
type ConnectionsApiService service

type ConnectionsApiDetailBrokerageAuthorizationRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	authorizationId string
	userId string
	userSecret string
}

func (r ConnectionsApiDetailBrokerageAuthorizationRequest) Execute() (*BrokerageAuthorization, *http.Response, error) {
	return r.ApiService.DetailBrokerageAuthorizationExecute(r)
}

/*
DetailBrokerageAuthorization Get brokerage authorization details

Returns a single brokerage authorization object for the specified ID.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param authorizationId The ID of a brokerage authorization object.
 @param userId
 @param userSecret
 @return ConnectionsApiDetailBrokerageAuthorizationRequest
*/
func (a *ConnectionsApiService) DetailBrokerageAuthorization(authorizationId string, userId string, userSecret string) ConnectionsApiDetailBrokerageAuthorizationRequest {
	return ConnectionsApiDetailBrokerageAuthorizationRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		authorizationId: authorizationId,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
//  @return BrokerageAuthorization
func (a *ConnectionsApiService) DetailBrokerageAuthorizationExecute(r ConnectionsApiDetailBrokerageAuthorizationRequest) (*BrokerageAuthorization, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *BrokerageAuthorization
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.DetailBrokerageAuthorization")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/authorizations/{authorizationId}"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"authorizationId"+"}", url.PathEscape(parameterToString(r.authorizationId, "")), -1)

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

type ConnectionsApiDisableBrokerageAuthorizationRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	authorizationId string
	userId string
	userSecret string
}

func (r ConnectionsApiDisableBrokerageAuthorizationRequest) Execute() (*BrokerageAuthorizationDisabledConfirmation, *http.Response, error) {
	return r.ApiService.DisableBrokerageAuthorizationExecute(r)
}

/*
DisableBrokerageAuthorization Manually disable a connection for testing

Manually disable a connection. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a CONNECTION_BROKEN webhook for the connection. Please contact us in order to use this endpoint as it is disabled by default.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param authorizationId The ID of a brokerage authorization object.
 @param userId
 @param userSecret
 @return ConnectionsApiDisableBrokerageAuthorizationRequest
*/
func (a *ConnectionsApiService) DisableBrokerageAuthorization(authorizationId string, userId string, userSecret string) ConnectionsApiDisableBrokerageAuthorizationRequest {
	return ConnectionsApiDisableBrokerageAuthorizationRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		authorizationId: authorizationId,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
//  @return BrokerageAuthorizationDisabledConfirmation
func (a *ConnectionsApiService) DisableBrokerageAuthorizationExecute(r ConnectionsApiDisableBrokerageAuthorizationRequest) (*BrokerageAuthorizationDisabledConfirmation, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *BrokerageAuthorizationDisabledConfirmation
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.DisableBrokerageAuthorization")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/authorizations/{authorizationId}/disable"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"authorizationId"+"}", url.PathEscape(parameterToString(r.authorizationId, "")), -1)

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
		if localVarHTTPResponse.StatusCode == 401 {
			var v Model401FailedRequestResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 402 {
			var v Model402BrokerageAuthAlreadyDisabledException
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
			var v Model403FeatureNotEnabledResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 404 {
			var v Model404FailedRequestResponse
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

type ConnectionsApiListBrokerageAuthorizationsRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	userId string
	userSecret string
}

func (r ConnectionsApiListBrokerageAuthorizationsRequest) Execute() ([]BrokerageAuthorization, *http.Response, error) {
	return r.ApiService.ListBrokerageAuthorizationsExecute(r)
}

/*
ListBrokerageAuthorizations List all brokerage authorizations for the User

Returns a list of Brokerage Authorization objects for the user

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param userId
 @param userSecret
 @return ConnectionsApiListBrokerageAuthorizationsRequest
*/
func (a *ConnectionsApiService) ListBrokerageAuthorizations(userId string, userSecret string) ConnectionsApiListBrokerageAuthorizationsRequest {
	return ConnectionsApiListBrokerageAuthorizationsRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
//  @return []BrokerageAuthorization
func (a *ConnectionsApiService) ListBrokerageAuthorizationsExecute(r ConnectionsApiListBrokerageAuthorizationsRequest) ([]BrokerageAuthorization, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []BrokerageAuthorization
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.ListBrokerageAuthorizations")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/authorizations"
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

type ConnectionsApiRefreshBrokerageAuthorizationRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	authorizationId string
	userId string
	userSecret string
}

func (r ConnectionsApiRefreshBrokerageAuthorizationRequest) Execute() (*BrokerageAuthorizationRefreshConfirmation, *http.Response, error) {
	return r.ApiService.RefreshBrokerageAuthorizationExecute(r)
}

/*
RefreshBrokerageAuthorization Refresh holdings for a connection

Trigger a holdings update for all accounts under this authorization. Updates will be queued asynchronously. ACCOUNT_HOLDINGS_UPDATED webhook will be sent once the sync completes. Please contact support for access as this endpoint is not enabled by default

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param authorizationId The ID of a brokerage authorization object.
 @param userId
 @param userSecret
 @return ConnectionsApiRefreshBrokerageAuthorizationRequest
*/
func (a *ConnectionsApiService) RefreshBrokerageAuthorization(authorizationId string, userId string, userSecret string) ConnectionsApiRefreshBrokerageAuthorizationRequest {
	return ConnectionsApiRefreshBrokerageAuthorizationRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		authorizationId: authorizationId,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
//  @return BrokerageAuthorizationRefreshConfirmation
func (a *ConnectionsApiService) RefreshBrokerageAuthorizationExecute(r ConnectionsApiRefreshBrokerageAuthorizationRequest) (*BrokerageAuthorizationRefreshConfirmation, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodPost
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  *BrokerageAuthorizationRefreshConfirmation
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.RefreshBrokerageAuthorization")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/authorizations/{authorizationId}/refresh"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"authorizationId"+"}", url.PathEscape(parameterToString(r.authorizationId, "")), -1)

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
		if localVarHTTPResponse.StatusCode == 401 {
			var v Model401FailedRequestResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 402 {
			var v Model402BrokerageAuthDisabledResponse
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
			var v Model403FeatureNotEnabledResponse
			err = a.client.decode(&v, localVarBody, localVarHTTPResponse.Header.Get("Content-Type"))
			if err != nil {
				newErr.error = err.Error()
				return localVarReturnValue, localVarHTTPResponse, newErr
			}
            		newErr.error = formatErrorMessage(localVarHTTPResponse.Status, &v)
            		newErr.model = v
			return localVarReturnValue, localVarHTTPResponse, newErr
		}
		if localVarHTTPResponse.StatusCode == 404 {
			var v Model404FailedRequestResponse
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

type ConnectionsApiRemoveBrokerageAuthorizationRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	authorizationId string
	userId string
	userSecret string
}

func (r ConnectionsApiRemoveBrokerageAuthorizationRequest) Execute() (*http.Response, error) {
	return r.ApiService.RemoveBrokerageAuthorizationExecute(r)
}

/*
RemoveBrokerageAuthorization Delete brokerage authorization

Deletes a specified brokerage authorization given by the ID.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param authorizationId The ID of the Authorization to delete.
 @param userId
 @param userSecret
 @return ConnectionsApiRemoveBrokerageAuthorizationRequest
*/
func (a *ConnectionsApiService) RemoveBrokerageAuthorization(authorizationId string, userId string, userSecret string) ConnectionsApiRemoveBrokerageAuthorizationRequest {
	return ConnectionsApiRemoveBrokerageAuthorizationRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		authorizationId: authorizationId,
		userId: userId,
		userSecret: userSecret,
	}
}

// Execute executes the request
func (a *ConnectionsApiService) RemoveBrokerageAuthorizationExecute(r ConnectionsApiRemoveBrokerageAuthorizationRequest) (*http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodDelete
		localVarPostBody     interface{}
		formFiles            []formFile
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.RemoveBrokerageAuthorization")
	if err != nil {
		return nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/authorizations/{authorizationId}"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}
	localVarPath = strings.Replace(localVarPath, "{"+"authorizationId"+"}", url.PathEscape(parameterToString(r.authorizationId, "")), -1)

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
	localVarHTTPHeaderAccepts := []string{}

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
		return nil, err
	}

	localVarHTTPResponse, err := a.client.callAPI(req)
	if err != nil || localVarHTTPResponse == nil {
		return localVarHTTPResponse, err
	}

	localVarBody, err := ioutil.ReadAll(localVarHTTPResponse.Body)
	localVarHTTPResponse.Body.Close()
	localVarHTTPResponse.Body = ioutil.NopCloser(bytes.NewBuffer(localVarBody))
	if err != nil {
		return localVarHTTPResponse, err
	}

	if localVarHTTPResponse.StatusCode >= 300 {
		newErr := &GenericOpenAPIError{
			body:  localVarBody,
			error: localVarHTTPResponse.Status,
		}
		return localVarHTTPResponse, newErr
	}

	return localVarHTTPResponse, nil
}

type ConnectionsApiSessionEventsRequest struct {
	ctx context.Context
	ApiService *ConnectionsApiService
	partnerClientId string
	userId *string
	sessionId *string
}

// Optional comma seperated list of user IDs used to filter the request on specific users
func (r *ConnectionsApiSessionEventsRequest) UserId(userId string) *ConnectionsApiSessionEventsRequest {
	r.userId = &userId
	return r
}

// Optional comma seperated list of session IDs used to filter the request on specific users
func (r *ConnectionsApiSessionEventsRequest) SessionId(sessionId string) *ConnectionsApiSessionEventsRequest {
	r.sessionId = &sessionId
	return r
}

func (r ConnectionsApiSessionEventsRequest) Execute() ([]SessionEvent, *http.Response, error) {
	return r.ApiService.SessionEventsExecute(r)
}

/*
SessionEvents Get all session events for a user

Returns a list of session events associated with a user.

 @param ctx context.Context - for authentication, logging, cancellation, deadlines, tracing, etc. Passed from http.Request or context.Background().
 @param partnerClientId
 @return ConnectionsApiSessionEventsRequest
*/
func (a *ConnectionsApiService) SessionEvents(partnerClientId string) ConnectionsApiSessionEventsRequest {
	return ConnectionsApiSessionEventsRequest{
		ApiService: a,
		ctx: a.client.cfg.Context,
		partnerClientId: partnerClientId,
	}
}

// Execute executes the request
//  @return []SessionEvent
func (a *ConnectionsApiService) SessionEventsExecute(r ConnectionsApiSessionEventsRequest) ([]SessionEvent, *http.Response, error) {
	var (
		localVarHTTPMethod   = http.MethodGet
		localVarPostBody     interface{}
		formFiles            []formFile
		localVarReturnValue  []SessionEvent
	)

	localBasePath, err := a.client.cfg.ServerURLWithContext(r.ctx, "ConnectionsApiService.SessionEvents")
	if err != nil {
		return localVarReturnValue, nil, &GenericOpenAPIError{error: err.Error()}
	}

    subpath := "/sessionEvents"
	localVarPath := localBasePath + subpath
	if a.client.cfg.Host != "" {
		localVarPath = a.client.cfg.Scheme + "://" + a.client.cfg.Host + subpath
	}

	localVarHeaderParams := make(map[string]string)
	localVarQueryParams := url.Values{}
	localVarFormParams := url.Values{}

	localVarQueryParams.Add("PartnerClientId", parameterToString(r.partnerClientId, ""))
	if r.userId != nil {
		localVarQueryParams.Add("userId", parameterToString(*r.userId, ""))
	}
	if r.sessionId != nil {
		localVarQueryParams.Add("sessionId", parameterToString(*r.sessionId, ""))
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