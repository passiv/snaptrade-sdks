package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.AccountOrderRecord;
import com.konfigthis.client.model.ActionStrict;
import com.konfigthis.client.model.ActionStrictWithOptions;
import com.konfigthis.client.model.ManualTradeAndImpact;
import com.konfigthis.client.model.ManualTradeForm;
import com.konfigthis.client.model.ManualTradeFormBracket;
import com.konfigthis.client.model.ManualTradeFormWithOptions;
import com.konfigthis.client.model.OrderTypeStrict;
import com.konfigthis.client.model.StopLoss;
import com.konfigthis.client.model.SymbolsQuotesInner;
import com.konfigthis.client.model.TakeProfit;
import com.konfigthis.client.model.TimeInForceStrict;
import com.konfigthis.client.model.TradingCancelUserAccountOrderRequest;
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
    public class CancelUserAccountOrderRequestBuilder extends CancelUserAccountOrderRequestBuilderGenerated {
        public CancelUserAccountOrderRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
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
        public PlaceBracketOrderRequestBuilder(UUID accountId, ActionStrictWithOptions action, String symbol, OrderTypeStrict orderType, TimeInForceStrict timeInForce, StopLoss stopLoss, TakeProfit takeProfit, String userId, String userSecret) {
            super(accountId, action, symbol, orderType, timeInForce, stopLoss, takeProfit, userId, userSecret);
        }
    }
    public class PlaceForceOrderRequestBuilder extends PlaceForceOrderRequestBuilderGenerated {
        public PlaceForceOrderRequestBuilder(UUID accountId, ActionStrictWithOptions action, OrderTypeStrict orderType, TimeInForceStrict timeInForce, String userId, String userSecret) {
            super(accountId, action, orderType, timeInForce, userId, userSecret);
        }
    }
    public class PlaceOrderRequestBuilder extends PlaceOrderRequestBuilderGenerated {
        public PlaceOrderRequestBuilder(UUID tradeId, String userId, String userSecret) {
            super(tradeId, userId, userSecret);
        }
    }
}
