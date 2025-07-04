package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.TradingSearchCryptocurrencyPairInstruments200Response;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CryptoTradingApi extends CryptoTradingApiGenerated {

    public CryptoTradingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class SearchCryptocurrencyPairInstrumentsRequestBuilder extends SearchCryptocurrencyPairInstrumentsRequestBuilderGenerated {
        public SearchCryptocurrencyPairInstrumentsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
