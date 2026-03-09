package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import java.time.LocalDate;
import com.snaptrade.client.model.PerformanceCustom;
import com.snaptrade.client.model.UniversalActivity;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class TransactionsAndReportingApi extends TransactionsAndReportingApiGenerated {

    public TransactionsAndReportingApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetActivitiesRequestBuilder extends GetActivitiesRequestBuilderGenerated {
        public GetActivitiesRequestBuilder(String userId, String userSecret) {
            super(userId, userSecret);
        }
    }
    public class GetReportingCustomRangeRequestBuilder extends GetReportingCustomRangeRequestBuilderGenerated {
        public GetReportingCustomRangeRequestBuilder(LocalDate startDate, LocalDate endDate, String userId, String userSecret) {
            super(startDate, endDate, userId, userSecret);
        }
    }
}
