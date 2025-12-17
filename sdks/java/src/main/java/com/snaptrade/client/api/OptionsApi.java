package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import com.snaptrade.client.model.OptionChainInner;
import com.snaptrade.client.model.OptionsPosition;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class OptionsApi extends OptionsApiGenerated {

    public OptionsApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetOptionsChainRequestBuilder extends GetOptionsChainRequestBuilderGenerated {
        public GetOptionsChainRequestBuilder(String userId, String userSecret, UUID accountId, UUID symbol) {
            super(userId, userSecret, accountId, symbol);
        }
    }
    public class ListOptionHoldingsRequestBuilder extends ListOptionHoldingsRequestBuilderGenerated {
        public ListOptionHoldingsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
