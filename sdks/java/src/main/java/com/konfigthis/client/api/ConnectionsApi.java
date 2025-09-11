package com.konfigthis.client.api;

import com.konfigthis.client.ApiClient;
import com.konfigthis.client.model.BrokerageAuthorization;
import com.konfigthis.client.model.BrokerageAuthorizationDisabledConfirmation;
import com.konfigthis.client.model.BrokerageAuthorizationRefreshConfirmation;
import com.konfigthis.client.model.RateOfReturnResponse;
import com.konfigthis.client.model.SessionEvent;
import java.util.UUID;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ConnectionsApi extends ConnectionsApiGenerated {

    public ConnectionsApi(ApiClient apiClient) throws IllegalArgumentException {
        super(apiClient);
    }
    public class DetailBrokerageAuthorizationRequestBuilder extends DetailBrokerageAuthorizationRequestBuilderGenerated {
        public DetailBrokerageAuthorizationRequestBuilder(UUID authorizationId, String userId, String userSecret) {
            super(authorizationId, userId, userSecret);
        }
    }
    public class DisableBrokerageAuthorizationRequestBuilder extends DisableBrokerageAuthorizationRequestBuilderGenerated {
        public DisableBrokerageAuthorizationRequestBuilder(UUID authorizationId, String userId, String userSecret) {
            super(authorizationId, userId, userSecret);
        }
    }
    public class ListBrokerageAuthorizationsRequestBuilder extends ListBrokerageAuthorizationsRequestBuilderGenerated {
        public ListBrokerageAuthorizationsRequestBuilder(String userId, String userSecret) {
            super(userId, userSecret);
        }
    }
    public class RefreshBrokerageAuthorizationRequestBuilder extends RefreshBrokerageAuthorizationRequestBuilderGenerated {
        public RefreshBrokerageAuthorizationRequestBuilder(UUID authorizationId, String userId, String userSecret) {
            super(authorizationId, userId, userSecret);
        }
    }
    public class RemoveBrokerageAuthorizationRequestBuilder extends RemoveBrokerageAuthorizationRequestBuilderGenerated {
        public RemoveBrokerageAuthorizationRequestBuilder(UUID authorizationId, String userId, String userSecret) {
            super(authorizationId, userId, userSecret);
        }
    }
    public class ReturnRatesRequestBuilder extends ReturnRatesRequestBuilderGenerated {
        public ReturnRatesRequestBuilder(String userId, String userSecret, UUID authorizationId) {
            super(userId, userSecret, authorizationId);
        }
    }
    public class SessionEventsRequestBuilder extends SessionEventsRequestBuilderGenerated {
        public SessionEventsRequestBuilder(String partnerClientId) {
            super(partnerClientId);
        }
    }
}
