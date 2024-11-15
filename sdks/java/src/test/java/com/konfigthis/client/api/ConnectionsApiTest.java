/*
 * SnapTrade
 * Connect brokerage accounts to your app for live positions and trading
 *
 * The version of the OpenAPI document: 1.0.0
 * Contact: api@snaptrade.com
 *
 * NOTE: This class is auto generated by Konfig (https://konfigthis.com).
 * Do not edit the class manually.
 */


package com.konfigthis.client.api;

import com.konfigthis.client.ApiException;
import com.konfigthis.client.ApiClient;
import com.konfigthis.client.ApiException;
import com.konfigthis.client.Configuration;
import com.konfigthis.client.model.BrokerageAuthorization;
import com.konfigthis.client.model.BrokerageAuthorizationDisabledConfirmation;
import com.konfigthis.client.model.BrokerageAuthorizationRefreshConfirmation;
import com.konfigthis.client.model.RateOfReturnResponse;
import com.konfigthis.client.model.SessionEvent;
import java.util.UUID;
import org.junit.jupiter.api.Disabled;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.BeforeAll;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * API tests for ConnectionsApi
 */
@Disabled
public class ConnectionsApiTest {

    private static ConnectionsApi api;

    
    @BeforeAll
    public static void beforeClass() {
        ApiClient apiClient = Configuration.getDefaultApiClient();
        api = new ConnectionsApi(apiClient);
    }

    /**
     * Get connection detail
     *
     * Returns a single connection for the specified ID.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void detailBrokerageAuthorizationTest() throws ApiException {
        UUID authorizationId = null;
        String userId = null;
        String userSecret = null;
        BrokerageAuthorization response = api.detailBrokerageAuthorization(authorizationId, userId, userSecret)
                .execute();
        // TODO: test validations
    }

    /**
     * Force disable connection
     *
     * Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a [&#x60;CONNECTION_BROKEN&#x60; webhook](/docs/webhooks#webhooks-connection_broken) for the connection.  *Please contact us in order to use this endpoint as it is disabled by default.* 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void disableBrokerageAuthorizationTest() throws ApiException {
        UUID authorizationId = null;
        String userId = null;
        String userSecret = null;
        BrokerageAuthorizationDisabledConfirmation response = api.disableBrokerageAuthorization(authorizationId, userId, userSecret)
                .execute();
        // TODO: test validations
    }

    /**
     * List all connections
     *
     * Returns a list of all connections for the specified user. Note that &#x60;Connection&#x60; and &#x60;Brokerage Authorization&#x60; are interchangeable, but the term &#x60;Connection&#x60; is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void listBrokerageAuthorizationsTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        List<BrokerageAuthorization> response = api.listBrokerageAuthorizations(userId, userSecret)
                .execute();
        // TODO: test validations
    }

    /**
     * Refresh holdings for a connection
     *
     * Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [&#x60;ACCOUNT_HOLDINGS_UPDATED&#x60; webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.  *Please contact support for access as this endpoint is not enabled by default.* 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void refreshBrokerageAuthorizationTest() throws ApiException {
        UUID authorizationId = null;
        String userId = null;
        String userSecret = null;
        BrokerageAuthorizationRefreshConfirmation response = api.refreshBrokerageAuthorization(authorizationId, userId, userSecret)
                .execute();
        // TODO: test validations
    }

    /**
     * Delete connection
     *
     * Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void removeBrokerageAuthorizationTest() throws ApiException {
        UUID authorizationId = null;
        String userId = null;
        String userSecret = null;
        api.removeBrokerageAuthorization(authorizationId, userId, userSecret)
                .execute();
        // TODO: test validations
    }

    /**
     * List connection rate of returns
     *
     * Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example \&quot;ALL\&quot;, \&quot;1Y\&quot;, \&quot;6M\&quot;, \&quot;3M\&quot;, \&quot;1M\&quot; 
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void returnRatesTest() throws ApiException {
        String userId = null;
        String userSecret = null;
        UUID authorizationId = null;
        RateOfReturnResponse response = api.returnRates(userId, userSecret, authorizationId)
                .execute();
        // TODO: test validations
    }

    /**
     * Get all session events for a user
     *
     * Returns a list of session events associated with a user.
     *
     * @throws ApiException if the Api call fails
     */
    @Test
    public void sessionEventsTest() throws ApiException {
        String partnerClientId = null;
        String userId = null;
        String sessionId = null;
        List<SessionEvent> response = api.sessionEvents(partnerClientId)
                .userId(userId)
                .sessionId(sessionId)
                .execute();
        // TODO: test validations
    }

}
