package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import com.snaptrade.client.model.AccountOrdersV2Response;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ExperimentalEndpointsApi extends ExperimentalEndpointsApiGenerated {

    public ExperimentalEndpointsApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetUserAccountOrdersV2RequestBuilder extends GetUserAccountOrdersV2RequestBuilderGenerated {
        public GetUserAccountOrdersV2RequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountRecentOrdersV2RequestBuilder extends GetUserAccountRecentOrdersV2RequestBuilderGenerated {
        public GetUserAccountRecentOrdersV2RequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
