package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.ActionStrict;
import java.math.BigDecimal;
import com.konfigthis.client.model.CryptoSpotOrderPreview;
import com.konfigthis.client.model.CryptoSpotQuote;
import com.konfigthis.client.model.CryptocurrencyPair;
import java.time.OffsetDateTime;
import com.konfigthis.client.model.OrderUpdatedResponse;
import com.konfigthis.client.model.TradingCryptoSpotCancelOrderRequest;
import com.konfigthis.client.model.TradingCryptoSpotPlaceOrderRequest;
import com.konfigthis.client.model.TradingCryptoSpotSymbols200Response;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CryptoSpotTradingApi extends CryptoSpotTradingApiGenerated {

    public CryptoSpotTradingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CryptoSpotCancelOrderRequestBuilder extends CryptoSpotCancelOrderRequestBuilderGenerated {
        public CryptoSpotCancelOrderRequestBuilder(String brokerageOrderId, String userId, String userSecret, UUID accountId) {
            super(brokerageOrderId, userId, userSecret, accountId);
        }
    }
    public class CryptoSpotPlaceOrderRequestBuilder extends CryptoSpotPlaceOrderRequestBuilderGenerated {
        public CryptoSpotPlaceOrderRequestBuilder(CryptocurrencyPair symbol, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(symbol, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class CryptoSpotPreviewOrderRequestBuilder extends CryptoSpotPreviewOrderRequestBuilderGenerated {
        public CryptoSpotPreviewOrderRequestBuilder(CryptocurrencyPair symbol, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(symbol, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class CryptoSpotQuoteRequestBuilder extends CryptoSpotQuoteRequestBuilderGenerated {
        public CryptoSpotQuoteRequestBuilder(String userId, String userSecret, UUID accountId, String base, String quote) {
            super(userId, userSecret, accountId, base, quote);
        }
    }
    public class CryptoSpotSymbolsRequestBuilder extends CryptoSpotSymbolsRequestBuilderGenerated {
        public CryptoSpotSymbolsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
