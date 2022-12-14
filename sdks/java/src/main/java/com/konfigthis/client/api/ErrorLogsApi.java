/*
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.client.api;

import com.konfigthis.client.ApiCallback;
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiResponse;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.Pair;
import com.konfigthis.client.ProgressRequestBody;
import com.konfigthis.client.ProgressResponseBody;

import com.google.gson.reflect.TypeToken;

import java.io.IOException;


import com.konfigthis.client.model.UserErrorLog;

import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.ws.rs.core.GenericType;

public class ErrorLogsApi {
    private ApiClient localVarApiClient;
    private int localHostIndex;
    private String localCustomBaseUrl;

    public ErrorLogsApi() {
        this(Configuration.getDefaultApiClient());
    }

    public ErrorLogsApi(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public ApiClient getApiClient() {
        return localVarApiClient;
    }

    public void setApiClient(ApiClient apiClient) {
        this.localVarApiClient = apiClient;
    }

    public int getHostIndex() {
        return localHostIndex;
    }

    public void setHostIndex(int hostIndex) {
        this.localHostIndex = hostIndex;
    }

    public String getCustomBaseUrl() {
        return localCustomBaseUrl;
    }

    public void setCustomBaseUrl(String customBaseUrl) {
        this.localCustomBaseUrl = customBaseUrl;
    }

    /**
     * Build call for snapTradeListUserErrorsGet
     * @param userId  (required)
     * @param userSecret  (required)
     * @param _callback Callback for upload/download progress
     * @return Call to execute
     * @throws ApiException If fail to serialize the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> A list of all user errors for a particular user in the last 90 days. </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call snapTradeListUserErrorsGetCall(String userId, String userSecret, final ApiCallback _callback) throws ApiException {
        String basePath = null;
        // Operation Servers
        String[] localBasePaths = new String[] {  };

        // Determine Base Path to Use
        if (localCustomBaseUrl != null){
            basePath = localCustomBaseUrl;
        } else if ( localBasePaths.length > 0 ) {
            basePath = localBasePaths[localHostIndex];
        } else {
            basePath = null;
        }

        Object localVarPostBody = null;

        // create path and map variables
        String localVarPath = "/snapTrade/listUserErrors";

        List<Pair> localVarQueryParams = new ArrayList<Pair>();
        List<Pair> localVarCollectionQueryParams = new ArrayList<Pair>();
        Map<String, String> localVarHeaderParams = new HashMap<String, String>();
        Map<String, String> localVarCookieParams = new HashMap<String, String>();
        Map<String, Object> localVarFormParams = new HashMap<String, Object>();

        if (userId != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("userId", userId));
        }

        if (userSecret != null) {
            localVarQueryParams.addAll(localVarApiClient.parameterToPair("userSecret", userSecret));
        }

        final String[] localVarAccepts = {
            "application/json"
        };
        final String localVarAccept = localVarApiClient.selectHeaderAccept(localVarAccepts);
        if (localVarAccept != null) {
            localVarHeaderParams.put("Accept", localVarAccept);
        }

        final String[] localVarContentTypes = {
        };
        final String localVarContentType = localVarApiClient.selectHeaderContentType(localVarContentTypes);
        if (localVarContentType != null) {
            localVarHeaderParams.put("Content-Type", localVarContentType);
        }

        String[] localVarAuthNames = new String[] { "PartnerClientId", "PartnerSignature", "PartnerTimestamp" };
        return localVarApiClient.buildCall(basePath, localVarPath, "GET", localVarQueryParams, localVarCollectionQueryParams, localVarPostBody, localVarHeaderParams, localVarCookieParams, localVarFormParams, localVarAuthNames, _callback);
    }

    @SuppressWarnings("rawtypes")
    private okhttp3.Call snapTradeListUserErrorsGetValidateBeforeCall(String userId, String userSecret, final ApiCallback _callback) throws ApiException {
        // verify the required parameter 'userId' is set
        if (userId == null) {
            throw new ApiException("Missing the required parameter 'userId' when calling snapTradeListUserErrorsGet(Async)");
        }

        // verify the required parameter 'userSecret' is set
        if (userSecret == null) {
            throw new ApiException("Missing the required parameter 'userSecret' when calling snapTradeListUserErrorsGet(Async)");
        }

        return snapTradeListUserErrorsGetCall(userId, userSecret, _callback);

    }

    /**
     * Retrieve error logs on behalf of your SnapTrade users
     * 
     * @param userId  (required)
     * @param userSecret  (required)
     * @return List&lt;UserErrorLog&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> A list of all user errors for a particular user in the last 90 days. </td><td>  -  </td></tr>
     </table>
     */
    public List<UserErrorLog> snapTradeListUserErrorsGet(String userId, String userSecret) throws ApiException {
        ApiResponse<List<UserErrorLog>> localVarResp = snapTradeListUserErrorsGetWithHttpInfo(userId, userSecret);
        return localVarResp.getData();
    }

    /**
     * Retrieve error logs on behalf of your SnapTrade users
     * 
     * @param userId  (required)
     * @param userSecret  (required)
     * @return ApiResponse&lt;List&lt;UserErrorLog&gt;&gt;
     * @throws ApiException If fail to call the API, e.g. server error or cannot deserialize the response body
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> A list of all user errors for a particular user in the last 90 days. </td><td>  -  </td></tr>
     </table>
     */
    public ApiResponse<List<UserErrorLog>> snapTradeListUserErrorsGetWithHttpInfo(String userId, String userSecret) throws ApiException {
        okhttp3.Call localVarCall = snapTradeListUserErrorsGetValidateBeforeCall(userId, userSecret, null);
        Type localVarReturnType = new TypeToken<List<UserErrorLog>>(){}.getType();
        return localVarApiClient.execute(localVarCall, localVarReturnType);
    }

    /**
     * Retrieve error logs on behalf of your SnapTrade users (asynchronously)
     * 
     * @param userId  (required)
     * @param userSecret  (required)
     * @param _callback The callback to be executed when the API call finishes
     * @return The request call
     * @throws ApiException If fail to process the API call, e.g. serializing the request body object
     * @http.response.details
     <table summary="Response Details" border="1">
        <tr><td> Status Code </td><td> Description </td><td> Response Headers </td></tr>
        <tr><td> 200 </td><td> A list of all user errors for a particular user in the last 90 days. </td><td>  -  </td></tr>
     </table>
     */
    public okhttp3.Call snapTradeListUserErrorsGetAsync(String userId, String userSecret, final ApiCallback<List<UserErrorLog>> _callback) throws ApiException {

        okhttp3.Call localVarCall = snapTradeListUserErrorsGetValidateBeforeCall(userId, userSecret, _callback);
        Type localVarReturnType = new TypeToken<List<UserErrorLog>>(){}.getType();
        localVarApiClient.executeAsync(localVarCall, localVarReturnType, _callback);
        return localVarCall;
    }
}
