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
import com.konfigthis.client.model.Brokerage;
import com.konfigthis.client.model.BrokerageAuthorizationTypeReadOnly;
import com.konfigthis.client.model.Currency;
import com.konfigthis.client.model.Exchange;
import com.konfigthis.client.model.ExchangeRatePairs;
import com.konfigthis.client.model.PartnerData;
import com.konfigthis.client.model.SecurityType;
import com.konfigthis.client.model.SymbolQuery;
import java.util.UUID;
import com.konfigthis.client.model.UniversalSymbol;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ReferenceDataApi
 */
@Disabled
public class ReferenceDataApiTest {

    private static ReferenceDataApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new ReferenceDataApi(apiClient);
    }

    /**
     * Get exchange rate of a currency pair
     *
     * Returns an Exchange Rate Pair object for the specified Currency Pair.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getCurrencyExchangeRatePairTest() throws ApiException {
        String currencyPair = null;
        ExchangeRatePairs response = api.getCurrencyExchangeRatePair(currencyPair)
                .execute();
        // TODO: test validations
    }

    /**
     * Get Client Info
     *
     * Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getPartnerInfoTest() throws ApiException {
        PartnerData response = api.getPartnerInfo()
                .execute();
        // TODO: test validations
    }

    /**
     * List security types
     *
     * Return all available security types supported by SnapTrade.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getSecurityTypesTest() throws ApiException {
        List<SecurityType> response = api.getSecurityTypes()
                .execute();
        // TODO: test validations
    }

    /**
     * Get exchanges
     *
     * Returns a list of all supported Exchanges.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getStockExchangesTest() throws ApiException {
        List<Exchange> response = api.getStockExchanges()
                .execute();
        // TODO: test validations
    }

    /**
     * Search symbols
     *
     * Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getSymbolsTest() throws ApiException {
        String substring = null;
        List<UniversalSymbol> response = api.getSymbols()
                .substring(substring)
                .execute();
        // TODO: test validations
    }

    /**
     * Get symbol detail
     *
     * Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void getSymbolsByTickerTest() throws ApiException {
        String query = null;
        UniversalSymbol response = api.getSymbolsByTicker(query)
                .execute();
        // TODO: test validations
    }

    /**
     * Get all brokerage authorization types
     *
     * Returns a list of all defined Brokerage authorization Type objects.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listAllBrokerageAuthorizationTypeTest() throws ApiException {
        String brokerage = null;
        List<BrokerageAuthorizationTypeReadOnly> response = api.listAllBrokerageAuthorizationType()
                .brokerage(brokerage)
                .execute();
        // TODO: test validations
    }

    /**
     * Get brokerages
     *
     * Returns a list of all defined Brokerage objects.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listAllBrokeragesTest() throws ApiException {
        List<Brokerage> response = api.listAllBrokerages()
                .execute();
        // TODO: test validations
    }

    /**
     * Get currencies
     *
     * Returns a list of all defined Currency objects.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listAllCurrenciesTest() throws ApiException {
        List<Currency> response = api.listAllCurrencies()
                .execute();
        // TODO: test validations
    }

    /**
     * Get currency exchange rates
     *
     * Returns a list of all Exchange Rate Pairs for all supported Currencies.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listAllCurrenciesRatesTest() throws ApiException {
        List<ExchangeRatePairs> response = api.listAllCurrenciesRates()
                .execute();
        // TODO: test validations
    }

    /**
     * Search account symbols
     *
     * Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.  The search results are further limited to the symbols supported by the brokerage for which the account is under. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void symbolSearchUserAccountTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID accountId = null;
        String substring = null;
        List<UniversalSymbol> response = api.symbolSearchUserAccount(userId, userSecret, accountId)
                .substring(substring)
                .execute();
        // TODO: test validations
    }

}
