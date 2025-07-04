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
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.model.TradingSearchCryptocurrencyPairInstruments200Response;
import java.util.UUID;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for CryptoTradingApi
 */
@Disabled
public class CryptoTradingApiTest {

    private static CryptoTradingApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new CryptoTradingApi(apiClient);
    }

    /**
     * Search cryptocurrency pairs instruments
     *
     * Searches cryptocurrency pairs instruments accessible to the specified account. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void searchCryptocurrencyPairInstrumentsTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String base = null;
        String quote = null;
        TradingSearchCryptocurrencyPairInstruments200Response response = api.searchCryptocurrencyPairInstruments(userId, userSecret, accountId)
                .base(base)
                .quote(quote)
                .execute();
        // TODO: test validations
    }

}
