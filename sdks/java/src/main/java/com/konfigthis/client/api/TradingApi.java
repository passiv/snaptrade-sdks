package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
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
import com.konfigthis.client.model.MlegLeg;
import com.konfigthis.client.model.MlegOrderResponse;
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
import com.konfigthis.client.model.TradingPlaceMlegOrderRequest;
import com.konfigthis.client.model.TradingPlaceSimpleOrderRequest;
import com.konfigthis.client.model.TradingSearchCryptocurrencyPairInstruments200Response;
import java.util.UUID;
import com.konfigthis.client.model.ValidatedTradeBody;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TradingApi extends TradingApiGenerated {

    public TradingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CancelOrderRequestBuilder extends CancelOrderRequestBuilderGenerated {
        public CancelOrderRequestBuilder(String userId, String userSecret, UUID accountId, String brokerageOrderId) {
            super(userId, userSecret, accountId, brokerageOrderId);
        }
    }
    public class CancelUserAccountOrderRequestBuilder extends CancelUserAccountOrderRequestBuilderGenerated {
        public CancelUserAccountOrderRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetCryptocurrencyPairQuoteRequestBuilder extends GetCryptocurrencyPairQuoteRequestBuilderGenerated {
        public GetCryptocurrencyPairQuoteRequestBuilder(String userId, String userSecret, UUID accountId, String instrumentSymbol) {
            super(userId, userSecret, accountId, instrumentSymbol);
        }
    }
    public class GetOrderImpactRequestBuilder extends GetOrderImpactRequestBuilderGenerated {
        public GetOrderImpactRequestBuilder(UUID accountId, ActionStrict action, UUID universalSymbolId, OrderTypeStrict orderType, TimeInForceStrict timeInForce, String userId, String userSecret) {
            super(accountId, action, universalSymbolId, orderType, timeInForce, userId, userSecret);
        }
    }
    public class GetUserAccountQuotesRequestBuilder extends GetUserAccountQuotesRequestBuilderGenerated {
        public GetUserAccountQuotesRequestBuilder(String userId, String userSecret, String symbols, UUID accountId) {
            super(userId, userSecret, symbols, accountId);
        }
    }
    public class PlaceBracketOrderRequestBuilder extends PlaceBracketOrderRequestBuilderGenerated {
        public PlaceBracketOrderRequestBuilder(ActionStrictWithOptions action, TradingInstrument instrument, OrderTypeStrict orderType, TimeInForceStrict timeInForce, StopLoss stopLoss, TakeProfit takeProfit, UUID accountId, String userId, String userSecret) {
            super(action, instrument, orderType, timeInForce, stopLoss, takeProfit, accountId, userId, userSecret);
        }
    }
    public class PlaceForceOrderRequestBuilder extends PlaceForceOrderRequestBuilderGenerated {
        public PlaceForceOrderRequestBuilder(UUID accountId, ActionStrictWithOptions action, OrderTypeStrict orderType, TimeInForceStrict timeInForce, String userId, String userSecret) {
            super(accountId, action, orderType, timeInForce, userId, userSecret);
        }
    }
    public class PlaceMlegOrderRequestBuilder extends PlaceMlegOrderRequestBuilderGenerated {
        public PlaceMlegOrderRequestBuilder(String type, TimeInForceStrict timeInForce, List<MlegLeg> legs, String userId, String userSecret, UUID accountId) {
            super(type, timeInForce, legs, userId, userSecret, accountId);
        }
    }
    public class PlaceOrderRequestBuilder extends PlaceOrderRequestBuilderGenerated {
        public PlaceOrderRequestBuilder(UUID tradeId, String userId, String userSecret) {
            super(tradeId, userId, userSecret);
        }
    }
    public class PlaceSimpleOrderRequestBuilder extends PlaceSimpleOrderRequestBuilderGenerated {
        public PlaceSimpleOrderRequestBuilder(TradingInstrument instrument, ActionStrict side, String type, TimeInForceStrict timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(instrument, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class PreviewSimpleOrderRequestBuilder extends PreviewSimpleOrderRequestBuilderGenerated {
        public PreviewSimpleOrderRequestBuilder(TradingInstrument instrument, ActionStrict side, String type, TimeInForceStrict timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(instrument, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class ReplaceOrderRequestBuilder extends ReplaceOrderRequestBuilderGenerated {
        public ReplaceOrderRequestBuilder(ActionStrict action, OrderTypeStrict orderType, TimeInForceStrict timeInForce, UUID accountId, String brokerageOrderId, String userId, String userSecret) {
            super(action, orderType, timeInForce, accountId, brokerageOrderId, userId, userSecret);
        }
    }
    public class SearchCryptocurrencyPairInstrumentsRequestBuilder extends SearchCryptocurrencyPairInstrumentsRequestBuilderGenerated {
        public SearchCryptocurrencyPairInstrumentsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
