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
import com.konfigthis.client.model.AccountOrderRecord;
import com.konfigthis.client.model.Action;
import com.konfigthis.client.model.ManualTradeAndImpact;
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.OrderType;
import com.konfigthis.client.model.SymbolsQuotesInner;
import com.konfigthis.client.model.TimeInForceStrict;
import com.konfigthis.client.model.TradingCancelUserAccountOrderRequest;
import java.util.UUID;
import com.konfigthis.client.model.ValidatedTradeBody;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TradingApi
 */
@Disabled
public class TradingApiTest {

    private static TradingApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new TradingApi(apiClient);
    }

    /**
     * Cancel open order in account
     *
     * Sends a signal to the brokerage to cancel the specified order. This will only work if the order has not yet been executed. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void cancelUserAccountOrderTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        UUID brokerageOrderId = null;
        AccountOrderRecord response = api.cancelUserAccountOrder(userId, userSecret, accountId)
                .brokerageOrderId(brokerageOrderId)
                .execute();
        // TODO: test validations
    }

    /**
     * Check impact of trades on account.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getOrderImpactTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        Action action = null;
        OrderType orderType = null;
        Double price = null;
        Double stop = null;
        TimeInForceStrict timeInForce = null;
        Double units = null;
        UUID universalSymbolId = null;
        Double notionalValue = null;
        ManualTradeAndImpact response = api.getOrderImpact(userId, userSecret)
                .accountId(accountId)
                .action(action)
                .orderType(orderType)
                .price(price)
                .stop(stop)
                .timeInForce(timeInForce)
                .units(units)
                .universalSymbolId(universalSymbolId)
                .notionalValue(notionalValue)
                .execute();
        // TODO: test validations
    }

    /**
     * Get symbol quotes
     *
     * Returns live quote(s) from the brokerage for the specified symbol(s).
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getUserAccountQuotesTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        String symbols = null;
        UUID accountId = null;
        Boolean useTicker = null;
        List<SymbolsQuotesInner> response = api.getUserAccountQuotes(userId, userSecret, symbols, accountId)
                .useTicker(useTicker)
                .execute();
        // TODO: test validations
    }

    /**
     * Place a trade with NO validation.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeForceOrderTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        Action action = null;
        OrderType orderType = null;
        Double price = null;
        Double stop = null;
        TimeInForceStrict timeInForce = null;
        Double units = null;
        UUID universalSymbolId = null;
        Double notionalValue = null;
        AccountOrderRecord response = api.placeForceOrder(userId, userSecret)
                .accountId(accountId)
                .action(action)
                .orderType(orderType)
                .price(price)
                .stop(stop)
                .timeInForce(timeInForce)
                .units(units)
                .universalSymbolId(universalSymbolId)
                .notionalValue(notionalValue)
                .execute();
        // TODO: test validations
    }

    /**
     * Place order
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeOrderTest() throws ApiException {
        UUID tradeId = null;
        String userId = null;
        String userSecret = null;
        Boolean waitToConfirm = null;
        AccountOrderRecord response = api.placeOrder(tradeId, userId, userSecret)
                .waitToConfirm(waitToConfirm)
                .execute();
        // TODO: test validations
    }

}
