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
import com.konfigthis.client.model.Account;
import com.konfigthis.client.model.AccountBalance;
import com.konfigthis.client.model.AccountOrderRecord;
import com.konfigthis.client.model.AccountOrderRecordStatus;
import com.konfigthis.client.model.AccountSyncStatus;
import com.konfigthis.client.model.Action;
import com.konfigthis.client.model.CashRestriction;
import com.konfigthis.client.model.Currency;
import com.konfigthis.client.model.Exchange;
import com.konfigthis.client.model.ManualTrade;
import com.konfigthis.client.model.ManualTradeAndImpact;
import com.konfigthis.client.model.ManualTradeBalance;
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.ManualTradeSymbol;
import com.konfigthis.client.model.OptionsSymbol;
import com.konfigthis.client.model.OrderType;
import com.konfigthis.client.model.SecurityType;
import com.konfigthis.client.model.SymbolsQuotesInner;
import com.konfigthis.client.model.TimeInForce;
import com.konfigthis.client.model.TradingCancelUserAccountOrderRequest;
import com.konfigthis.client.model.TradingPlaceOCOOrderRequest;
import com.konfigthis.client.model.USExchange;
import java.util.UUID;
import com.konfigthis.client.model.UnderlyingSymbol;
import com.konfigthis.client.model.UniversalSymbol;
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
        TimeInForce timeInForce = null;
        Double units = null;
        UUID universalSymbolId = null;
        ManualTradeAndImpact response = api.getOrderImpact(userId, userSecret)
                .accountId(accountId)
                .action(action)
                .orderType(orderType)
                .price(price)
                .stop(stop)
                .timeInForce(timeInForce)
                .units(units)
                .universalSymbolId(universalSymbolId)
                .execute();
        // TODO: test validations
    }

    /**
     * Get symbol quotes
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getUserAccountQuotesTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        String symbols = null;
        String accountId = null;
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
        TimeInForce timeInForce = null;
        Double units = null;
        UUID universalSymbolId = null;
        AccountOrderRecord response = api.placeForceOrder(userId, userSecret)
                .accountId(accountId)
                .action(action)
                .orderType(orderType)
                .price(price)
                .stop(stop)
                .timeInForce(timeInForce)
                .units(units)
                .universalSymbolId(universalSymbolId)
                .execute();
        // TODO: test validations
    }

    /**
     * Place a OCO (One Cancels Other) order
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeOCOOrderTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        Object firstTradeId = null;
        Object secondTradeId = null;
        AccountOrderRecord response = api.placeOCOOrder(userId, userSecret)
                .firstTradeId(firstTradeId)
                .secondTradeId(secondTradeId)
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
        AccountOrderRecord response = api.placeOrder(tradeId, userId, userSecret)
                .execute();
        // TODO: test validations
    }

}
