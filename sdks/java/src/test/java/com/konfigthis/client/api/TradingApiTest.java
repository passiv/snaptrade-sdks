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
import com.konfigthis.client.model.ActionStrict;
import com.konfigthis.client.model.ActionStrictWithOptions;
import java.math.BigDecimal;
import com.konfigthis.client.model.CryptocurrencyPairQuote;
import com.konfigthis.client.model.ManualTradeAndImpact;
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.ManualTradeFormBracket;
import com.konfigthis.client.model.ManualTradeFormWithOptions;
import com.konfigthis.client.model.ManualTradeReplaceForm;
import java.time.OffsetDateTime;
import com.konfigthis.client.model.OrderTypeStrict;
import com.konfigthis.client.model.OrderUpdatedResponse;
import com.konfigthis.client.model.SimpleOrderPreview;
import com.konfigthis.client.model.StopLoss;
import com.konfigthis.client.model.SymbolsQuotesInner;
import com.konfigthis.client.model.TakeProfit;
import com.konfigthis.client.model.TimeInForceStrict;
import com.konfigthis.client.model.TradingCancelUserAccountOrderRequest;
import com.konfigthis.client.model.TradingInstrument;
import com.konfigthis.client.model.TradingPlaceSimpleOrderRequest;
import com.konfigthis.client.model.TradingSearchCryptocurrencyPairInstruments200Response;
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
     * Cancel an order.
     *
     * Cancels an order in the specified account. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void cancelOrderTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String brokerageOrderId = null;
        OrderUpdatedResponse response = api.cancelOrder(userId, userSecret, accountId, brokerageOrderId)
                .execute();
        // TODO: test validations
    }

    /**
     * Cancel order
     *
     * Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void cancelUserAccountOrderTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String brokerageOrderId = null;
        AccountOrderRecord response = api.cancelUserAccountOrder(userId, userSecret, accountId)
                .brokerageOrderId(brokerageOrderId)
                .execute();
        // TODO: test validations
    }

    /**
     * Get cryptocurrency pair quote
     *
     * Gets a quote for the specified account. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getCryptocurrencyPairQuoteTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String instrumentSymbol = null;
        CryptocurrencyPairQuote response = api.getCryptocurrencyPairQuote(userId, userSecret, accountId, instrumentSymbol)
                .execute();
        // TODO: test validations
    }

    /**
     * Check order impact
     *
     * Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a &#x60;Trade&#x60; object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the &#x60;Trade&#x60; object returned expires after 5 minutes. Any order placed using an expired &#x60;Trade&#x60; will be rejected.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getOrderImpactTest() throws ApiException {
        UUID accountId = null;
        ActionStrict action = null;
        UUID universalSymbolId = null;
        OrderTypeStrict orderType = null;
        TimeInForceStrict timeInForce = null;
        String userId = null;
        String userSecret = null;
        Double price = null;
        Double stop = null;
        Double units = null;
        Object notionalValue = null;
        ManualTradeAndImpact response = api.getOrderImpact(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret)
                .price(price)
                .stop(stop)
                .units(units)
                .notionalValue(notionalValue)
                .execute();
        // TODO: test validations
    }

    /**
     * Get symbol quotes
     *
     * Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
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
     * Place a Bracket Order
     *
     * Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeBracketOrderTest() throws ApiException {
        ActionStrictWithOptions action = null;
        TradingInstrument instrument = null;
        OrderTypeStrict orderType = null;
        TimeInForceStrict timeInForce = null;
        StopLoss stopLoss = null;
        TakeProfit takeProfit = null;
        UUID accountId = null;
        String userId = null;
        String userSecret = null;
        String symbol = null;
        Double price = null;
        Double stop = null;
        Double units = null;
        AccountOrderRecord response = api.placeBracketOrder(action, instrument, orderType, timeInForce, stopLoss, takeProfit, accountId, userId, userSecret)
                .symbol(symbol)
                .price(price)
                .stop(stop)
                .units(units)
                .execute();
        // TODO: test validations
    }

    /**
     * Place order
     *
     * Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeForceOrderTest() throws ApiException {
        UUID accountId = null;
        ActionStrictWithOptions action = null;
        OrderTypeStrict orderType = null;
        TimeInForceStrict timeInForce = null;
        String userId = null;
        String userSecret = null;
        UUID universalSymbolId = null;
        String symbol = null;
        Double price = null;
        Double stop = null;
        Double units = null;
        Object notionalValue = null;
        AccountOrderRecord response = api.placeForceOrder(accountId, action, orderType, timeInForce, userId, userSecret)
                .universalSymbolId(universalSymbolId)
                .symbol(symbol)
                .price(price)
                .stop(stop)
                .units(units)
                .notionalValue(notionalValue)
                .execute();
        // TODO: test validations
    }

    /**
     * Place checked order
     *
     * Places the previously checked order with the brokerage. The &#x60;tradeId&#x60; is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
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

    /**
     * Place order
     *
     * Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void placeSimpleOrderTest() throws ApiException {
        TradingInstrument instrument = null;
        ActionStrict side = null;
        String type = null;
        String timeInForce = null;
        BigDecimal amount = null;
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        BigDecimal limitPrice = null;
        BigDecimal stopPrice = null;
        Boolean postOnly = null;
        OffsetDateTime expirationDate = null;
        OrderUpdatedResponse response = api.placeSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
                .limitPrice(limitPrice)
                .stopPrice(stopPrice)
                .postOnly(postOnly)
                .expirationDate(expirationDate)
                .execute();
        // TODO: test validations
    }

    /**
     * Preview order
     *
     * Previews an order using the specified account. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void previewSimpleOrderTest() throws ApiException {
        TradingInstrument instrument = null;
        ActionStrict side = null;
        String type = null;
        String timeInForce = null;
        BigDecimal amount = null;
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        BigDecimal limitPrice = null;
        BigDecimal stopPrice = null;
        Boolean postOnly = null;
        OffsetDateTime expirationDate = null;
        SimpleOrderPreview response = api.previewSimpleOrder(instrument, side, type, timeInForce, amount, userId, userSecret, accountId)
                .limitPrice(limitPrice)
                .stopPrice(stopPrice)
                .postOnly(postOnly)
                .expirationDate(expirationDate)
                .execute();
        // TODO: test validations
    }

    /**
     * Replaces an order with a new one
     *
     * Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order&#39;s brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void replaceOrderTest() throws ApiException {
        ActionStrict action = null;
        OrderTypeStrict orderType = null;
        TimeInForceStrict timeInForce = null;
        UUID accountId = null;
        String brokerageOrderId = null;
        String userId = null;
        String userSecret = null;
        Double price = null;
        String symbol = null;
        Double stop = null;
        Double units = null;
        AccountOrderRecord response = api.replaceOrder(action, orderType, timeInForce, accountId, brokerageOrderId, userId, userSecret)
                .price(price)
                .symbol(symbol)
                .stop(stop)
                .units(units)
                .execute();
        // TODO: test validations
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
