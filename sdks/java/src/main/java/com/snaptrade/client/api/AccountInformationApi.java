package com.snaptrade.client.api;

import com.snaptrade.client.ApiClient;
import com.snaptrade.client.model.Account;
import com.snaptrade.client.model.AccountHoldings;
import com.snaptrade.client.model.AccountHoldingsAccount;
import com.snaptrade.client.model.AccountInformationGetUserAccountOrderDetailRequest;
import com.snaptrade.client.model.AccountOrderRecord;
import com.snaptrade.client.model.Balance;
import java.time.LocalDate;
import com.snaptrade.client.model.PaginatedUniversalActivity;
import com.snaptrade.client.model.Position;
import com.snaptrade.client.model.RateOfReturnResponse;
import com.snaptrade.client.model.RecentOrdersResponse;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class AccountInformationApi extends AccountInformationApiGenerated {

    public AccountInformationApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class GetAccountActivitiesRequestBuilder extends GetAccountActivitiesRequestBuilderGenerated {
        public GetAccountActivitiesRequestBuilder(UUID accountId, String userId, String userSecret) {
            super(accountId, userId, userSecret);
        }
    }
    public class GetAllUserHoldingsRequestBuilder extends GetAllUserHoldingsRequestBuilderGenerated {
        public GetAllUserHoldingsRequestBuilder(String userId, String userSecret) {
            super(userId, userSecret);
        }
    }
    public class GetUserAccountBalanceRequestBuilder extends GetUserAccountBalanceRequestBuilderGenerated {
        public GetUserAccountBalanceRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountDetailsRequestBuilder extends GetUserAccountDetailsRequestBuilderGenerated {
        public GetUserAccountDetailsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountOrderDetailRequestBuilder extends GetUserAccountOrderDetailRequestBuilderGenerated {
        public GetUserAccountOrderDetailRequestBuilder(String brokerageOrderId, UUID accountId, String userId, String userSecret) {
            super(brokerageOrderId, accountId, userId, userSecret);
        }
    }
    public class GetUserAccountOrdersRequestBuilder extends GetUserAccountOrdersRequestBuilderGenerated {
        public GetUserAccountOrdersRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountPositionsRequestBuilder extends GetUserAccountPositionsRequestBuilderGenerated {
        public GetUserAccountPositionsRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountRecentOrdersRequestBuilder extends GetUserAccountRecentOrdersRequestBuilderGenerated {
        public GetUserAccountRecentOrdersRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserAccountReturnRatesRequestBuilder extends GetUserAccountReturnRatesRequestBuilderGenerated {
        public GetUserAccountReturnRatesRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
    public class GetUserHoldingsRequestBuilder extends GetUserHoldingsRequestBuilderGenerated {
        public GetUserHoldingsRequestBuilder(UUID accountId, String userId, String userSecret) {
            super(accountId, userId, userSecret);
        }
    }
    public class ListUserAccountsRequestBuilder extends ListUserAccountsRequestBuilderGenerated {
        public ListUserAccountsRequestBuilder(String userId, String userSecret) {
            super(userId, userSecret);
        }
    }
    public class UpdateUserAccountRequestBuilder extends UpdateUserAccountRequestBuilderGenerated {
        public UpdateUserAccountRequestBuilder(String userId, String userSecret, UUID accountId) {
            super(userId, userSecret, accountId);
        }
    }
}
