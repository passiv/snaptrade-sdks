package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.AccountOrderRecord;
import com.konfigthis.client.model.ActionStrict;
import java.math.BigDecimal;
import com.konfigthis.client.model.CryptoSpotOrderPreview;
import com.konfigthis.client.model.CryptoSpotQuote;
import com.konfigthis.client.model.CryptocurrencyMarket;
import com.konfigthis.client.model.CryptocurrencyPair;
import java.time.OffsetDateTime;
import com.konfigthis.client.model.TradingCryptoSpotPlaceOrderRequest;
import com.konfigthis.client.model.TradingCryptoSpotQuoteRequest;
import com.konfigthis.client.model.TradingCryptoSpotSearchMarketsRequest;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CryptoSpotTradingApi extends CryptoSpotTradingApiGenerated {

    public CryptoSpotTradingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CryptoSpotPlaceOrderRequestBuilder extends CryptoSpotPlaceOrderRequestBuilderGenerated {
        public CryptoSpotPlaceOrderRequestBuilder(UUID accountId, CryptocurrencyPair symbol, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret) {
            super(accountId, symbol, side, type, timeInForce, amount, userId, userSecret);
        }
    }
    public class CryptoSpotPreviewOrderRequestBuilder extends CryptoSpotPreviewOrderRequestBuilderGenerated {
        public CryptoSpotPreviewOrderRequestBuilder(UUID accountId, CryptocurrencyPair symbol, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret) {
            super(accountId, symbol, side, type, timeInForce, amount, userId, userSecret);
        }
    }
    public class CryptoSpotQuoteRequestBuilder extends CryptoSpotQuoteRequestBuilderGenerated {
        public CryptoSpotQuoteRequestBuilder(UUID accountId, CryptocurrencyPair symbol, String userId, String userSecret) {
            super(accountId, symbol, userId, userSecret);
        }
    }
    public class CryptoSpotSearchMarketsRequestBuilder extends CryptoSpotSearchMarketsRequestBuilderGenerated {
        public CryptoSpotSearchMarketsRequestBuilder(UUID accountId, String base, String userId, String userSecret) {
            super(accountId, base, userId, userSecret);
        }
    }
}
