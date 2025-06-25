package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.ActionStrict;
import com.konfigthis.client.model.CryptocurrencyPairQuote;
import java.time.OffsetDateTime;
import com.konfigthis.client.model.OrderUpdatedResponse;
import com.konfigthis.client.model.SimpleOrderForm;
import com.konfigthis.client.model.TradingInstrument;
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
    public class GetCryptocurrencyPairQuoteRequestBuilder extends GetCryptocurrencyPairQuoteRequestBuilderGenerated {
        public GetCryptocurrencyPairQuoteRequestBuilder(String userId, String userSecret, UUID accountId, String instrumentSymbol) {
            super(userId, userSecret, accountId, instrumentSymbol);
        }
    }
    public class PlaceSimpleOrderRequestBuilder extends PlaceSimpleOrderRequestBuilderGenerated {
        public PlaceSimpleOrderRequestBuilder(TradingInstrument instrument, ActionStrict side, String type, String timeInForce, String amount, String userId, String userSecret, UUID accountId) {
            super(instrument, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class SearchCryptocurrencyPairInstrumentsRequestBuilder extends SearchCryptocurrencyPairInstrumentsRequestBuilderGenerated {
        public SearchCryptocurrencyPairInstrumentsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
