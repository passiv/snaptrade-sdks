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
import com.konfigthis.client.model.Status;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ApiStatusApi
 */
@Disabled
public class ApiStatusApiTest {

    private final ApiStatusApi api = new ApiStatusApi();

    /**
     * Get API Status
     *
     * Check whether the API is operational and verify timestamps.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void rootGetTest() throws ApiException {
        Status response = api.rootGet();
        // TODO: test validations
    }

}
