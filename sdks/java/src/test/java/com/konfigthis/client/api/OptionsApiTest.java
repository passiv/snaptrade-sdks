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
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.OptionChainInner;
import com.konfigthis.client.model.OptionsHoldings;
import com.konfigthis.client.model.StrategyImpact;
import com.konfigthis.client.model.StrategyOrderPlace;
import java.util.UUID;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for OptionsApi
 */
@Disabled
public class OptionsApiTest {

    private final OptionsApi api = new OptionsApi();

    /**
     * Get the options chain
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdOptionsChainGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        UUID symbol = null;
        List<OptionChainInner> response = api.accountsAccountIdOptionsChainGet(userId, userSecret, accountId, symbol);
        // TODO: test validations
    }

    /**
     * Get the options holdings in the account
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdOptionsGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        OptionsHoldings response = api.accountsAccountIdOptionsGet(userId, userSecret, accountId);
        // TODO: test validations
    }

    /**
     * Search for more specific option quotes from option chain. Date is required but can filter by min, max or min-max.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdOptionsSearchGetTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String date = null;
        Integer minStrike = null;
        Integer maxStrike = null;
        List<OptionChainInner> response = api.accountsAccountIdOptionsSearchGet(userId, userSecret, accountId, date, minStrike, maxStrike);
        // TODO: test validations
    }

    /**
     * Get a strategies impact on the account
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdStrategyImpactPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        Map<String, Object> strategyQuotesRecord = null;
        UUID body = null;
        Integer strikePrice = null;
        String primaryRoute = null;
        String secondarRoute = null;
        StrategyImpact response = api.accountsAccountIdStrategyImpactPost(userId, userSecret, accountId, strategyQuotesRecord, body, strikePrice, primaryRoute, secondarRoute);
        // TODO: test validations
    }

    /**
     * Place the strategy order; impact not required but the StrategyOrderQuotes object is
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdStrategyPlacePostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        Integer strategyOrder = null;
        Integer strikePrice = null;
        UUID accountId = null;
        UUID body = null;
        Integer primaryRoute = null;
        Integer secondaryRoute = null;
        StrategyOrderPlace response = api.accountsAccountIdStrategyPlacePost(userId, userSecret, strategyOrder, strikePrice, accountId, body, primaryRoute, secondaryRoute);
        // TODO: test validations
    }

    /**
     * Get a price quote for a strategy
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void accountsAccountIdStrategyQuotesPostTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        Integer legs = null;
        String strategy = null;
        String timeInForce = null;
        String orderType = null;
        UUID accountId = null;
        ManualTradeForm manualTradeForm = null;
        Object response = api.accountsAccountIdStrategyQuotesPost(userId, userSecret, legs, strategy, timeInForce, orderType, accountId, manualTradeForm);
        // TODO: test validations
    }

}
