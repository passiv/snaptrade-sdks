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
import com.konfigthis.client.model.AccountOrderRecord;
import com.konfigthis.client.model.ManualTradeAndImpact;
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.Model400FailedRequestResponse;
import com.konfigthis.client.model.Model403FailedRequestResponse;
import com.konfigthis.client.model.SymbolsQuotes;
import com.konfigthis.client.model.Trade;
import com.konfigthis.client.model.TradeExecutionStatus;
import com.konfigthis.client.model.TradeImpact;
import com.konfigthis.client.model.TradeOcoPostRequest;
import java.util.UUID;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for TradingApi
 */
@Disabled
public class TradingApiTest {

    private final TradingApi api = new TradingApi();

    /**
     * Cancel open order in account
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdOrdersCancelPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        UUID body = null;
        AccountOrderRecord response = api.accountsAccountIdOrdersCancelPost(userId, userSecret, accountId, body);
        // TODO: test validations
    }

    /**
     * Get all history of orders placed in account
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdOrdersGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String state = null;
        List<AccountOrderRecord> response = api.accountsAccountIdOrdersGet(userId, userSecret, accountId, state);
        // TODO: test validations
    }

    /**
     * Get symbol quotes
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdQuotesGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID symbols = null;
        UUID accountId = null;
        Boolean useTicker = null;
        SymbolsQuotes response = api.accountsAccountIdQuotesGet(userId, userSecret, symbols, accountId, useTicker);
        // TODO: test validations
    }

    /**
     * Return the impact of placing a series of trades on the portfolio
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGetTest() throws ApiException {
        UUID portfolioGroupId = null;
        UUID calculatedTradeId = null;
        List<TradeImpact> response = api.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdImpactGet(portfolioGroupId, calculatedTradeId);
        // TODO: test validations
    }

    /**
     * Return details of a specific trade before it&#39;s placed
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGetTest() throws ApiException {
        UUID portfolioGroupId = null;
        UUID calculatedTradeId = null;
        UUID tradeId = null;
        Trade response = api.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdGet(portfolioGroupId, calculatedTradeId, tradeId);
        // TODO: test validations
    }

    /**
     * Modify units of a trade before it is placed
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatchTest() throws ApiException {
        UUID portfolioGroupId = null;
        UUID calculatedTradeId = null;
        UUID tradeId = null;
        Trade trade = null;
        Trade response = api.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdModifyTradeIdPatch(portfolioGroupId, calculatedTradeId, tradeId, trade);
        // TODO: test validations
    }

    /**
     * Place orders for the CalculatedTrades in series
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPostTest() throws ApiException {
        UUID portfolioGroupId = null;
        UUID calculatedTradeId = null;
        List<TradeExecutionStatus> response = api.portfolioGroupsPortfolioGroupIdCalculatedtradesCalculatedTradeIdPlaceOrdersPost(portfolioGroupId, calculatedTradeId);
        // TODO: test validations
    }

    /**
     * Check impact of trades on account.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void tradeImpactPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        ManualTradeForm manualTradeForm = null;
        ManualTradeAndImpact response = api.tradeImpactPost(userId, userSecret, manualTradeForm);
        // TODO: test validations
    }

    /**
     * Place a OCO (One Cancels Other) order
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void tradeOcoPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        TradeOcoPostRequest tradeOcoPostRequest = null;
        AccountOrderRecord response = api.tradeOcoPost(userId, userSecret, tradeOcoPostRequest);
        // TODO: test validations
    }

    /**
     * Place order
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void tradeTradeIdPostTest() throws ApiException {
        UUID tradeId = null;
        String userId = null;
        String userSecret = null;
        AccountOrderRecord response = api.tradeTradeIdPost(tradeId, userId, userSecret);
        // TODO: test validations
    }

}
