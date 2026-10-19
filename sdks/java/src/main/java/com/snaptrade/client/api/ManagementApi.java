package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import com.snaptrade.client.model.PartnerStats;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ManagementApi extends ManagementApiGenerated {

    public ManagementApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetStatsRequestBuilder extends GetStatsRequestBuilderGenerated {
        public GetStatsRequestBuilder() {
            super();
        }
    }
}
