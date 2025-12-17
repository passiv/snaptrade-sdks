package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import com.snaptrade.client.model.AccountInformationGetUserAccountOrderDetailRequest;
import com.snaptrade.client.model.AccountOrderRecord;
import com.snaptrade.client.model.ActionStrict;
import com.snaptrade.client.model.ActionStrictWithOptions;
import java.math.BigDecimal;
import com.snaptrade.client.model.CancelOrderResponse;
import com.snaptrade.client.model.CryptoOrderForm;
import com.snaptrade.client.model.CryptoOrderPreview;
import com.snaptrade.client.model.CryptoTradingInstrument;
import com.snaptrade.client.model.CryptocurrencyPairQuote;
import com.snaptrade.client.model.ManualTradeAndImpact;
import com.snaptrade.client.model.ManualTradeForm;
import com.snaptrade.client.model.ManualTradeFormBracket;
import com.snaptrade.client.model.ManualTradeFormWithOptions;
import com.snaptrade.client.model.ManualTradeReplaceForm;
import com.snaptrade.client.model.MlegLeg;
import com.snaptrade.client.model.MlegOrderResponse;
import com.snaptrade.client.model.MlegOrderTypeStrict;
import com.snaptrade.client.model.MlegPriceEffectStrictNullable;
import com.snaptrade.client.model.MlegTradeForm;
import java.time.OffsetDateTime;
import com.snaptrade.client.model.OrderTypeStrict;
import com.snaptrade.client.model.OrderUpdatedResponse;
import com.snaptrade.client.model.StopLoss;
import com.snaptrade.client.model.SymbolsQuotesInner;
import com.snaptrade.client.model.TakeProfit;
import com.snaptrade.client.model.TimeInForceStrict;
import com.snaptrade.client.model.TradingInstrument;
import com.snaptrade.client.model.TradingSearchCryptocurrencyPairInstruments200Response;
import com.snaptrade.client.model.TradingSession;
import java.util.UUID;
import com.snaptrade.client.model.ValidatedTradeBody;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TradingApi extends TradingApiGenerated {

    public TradingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class CancelOrderRequestBuilder extends CancelOrderRequestBuilderGenerated {
        public CancelOrderRequestBuilder(String brokerageOrderId, String userId, String userSecret, UUID accountId) {
            super(brokerageOrderId, userId, userSecret, accountId);
        }
    }
    public class CancelUserAccountOrderRequestBuilder extends CancelUserAccountOrderRequestBuilderGenerated {
        public CancelUserAccountOrderRequestBuilder(String brokerageOrderId, String userId, String userSecret, UUID accountId) {
            super(brokerageOrderId, userId, userSecret, accountId);
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
    public class PlaceCryptoOrderRequestBuilder extends PlaceCryptoOrderRequestBuilderGenerated {
        public PlaceCryptoOrderRequestBuilder(CryptoTradingInstrument instrument, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(instrument, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class PlaceForceOrderRequestBuilder extends PlaceForceOrderRequestBuilderGenerated {
        public PlaceForceOrderRequestBuilder(UUID accountId, ActionStrictWithOptions action, OrderTypeStrict orderType, TimeInForceStrict timeInForce, String userId, String userSecret) {
            super(accountId, action, orderType, timeInForce, userId, userSecret);
        }
    }
    public class PlaceMlegOrderRequestBuilder extends PlaceMlegOrderRequestBuilderGenerated {
        public PlaceMlegOrderRequestBuilder(MlegOrderTypeStrict orderType, TimeInForceStrict timeInForce, List<MlegLeg> legs, String userId, String userSecret, UUID accountId) {
            super(orderType, timeInForce, legs, userId, userSecret, accountId);
        }
    }
    public class PlaceOrderRequestBuilder extends PlaceOrderRequestBuilderGenerated {
        public PlaceOrderRequestBuilder(UUID tradeId, String userId, String userSecret) {
            super(tradeId, userId, userSecret);
        }
    }
    public class PreviewCryptoOrderRequestBuilder extends PreviewCryptoOrderRequestBuilderGenerated {
        public PreviewCryptoOrderRequestBuilder(CryptoTradingInstrument instrument, ActionStrict side, String type, String timeInForce, BigDecimal amount, String userId, String userSecret, UUID accountId) {
            super(instrument, side, type, timeInForce, amount, userId, userSecret, accountId);
        }
    }
    public class ReplaceOrderRequestBuilder extends ReplaceOrderRequestBuilderGenerated {
        public ReplaceOrderRequestBuilder(String brokerageOrderId, ActionStrict action, OrderTypeStrict orderType, TimeInForceStrict timeInForce, UUID accountId, String userId, String userSecret) {
            super(brokerageOrderId, action, orderType, timeInForce, accountId, userId, userSecret);
        }
    }
    public class SearchCryptocurrencyPairInstrumentsRequestBuilder extends SearchCryptocurrencyPairInstrumentsRequestBuilderGenerated {
        public SearchCryptocurrencyPairInstrumentsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
