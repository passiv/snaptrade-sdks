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

import com.konfigthis.client.ApiException;
import com.konfigthis.client.model.UserErrorLog;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ErrorLogsApi
 */
@Disabled
public class ErrorLogsApiTest {

    private final ErrorLogsApi api = new ErrorLogsApi();

    /**
     * Retrieve error logs on behalf of your SnapTrade users
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void snapTradeListUserErrorsGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        List<UserErrorLog> response = api.snapTradeListUserErrorsGet(userId, userSecret);
        // TODO: test validations
    }

}
