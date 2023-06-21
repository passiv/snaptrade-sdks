package com.konfigthis.client;

import com.konfigthis.client.api.*;
import com.konfigthis.client.model.*;
import org.junit.jupiter.api.Test;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

public class GettingStartedTest {

        // 1) Initialize default client with clientID and consumerKey
        static {
                Configuration.setDefaultClientId(System.getenv("SNAPTRADE_CLIENT_ID"));
                Configuration.setDefaultConsumerKey(System.getenv("SNAPTRADE_CONSUMER_KEY"));
        }

    @Test
    public void gettingStartedTest() throws ApiException {
        ApiClient defaultClient = Configuration.getDefaultApiClient();

        // 2) Check that the client is able to make a request to the API server
        ApiStatusApi apiStatusApi = new ApiStatusApi(defaultClient);
        Status status = apiStatusApi.check().execute();
        System.out.printf("SnapTrade is online: %s\n", status.getOnline());

        // 3) Create a new user on SnapTrade
        AuthenticationApi authenticationApi = new AuthenticationApi(defaultClient);

        // The userId should be provided by you and refer to permanent value such as a
        // database row ID
        UUID userId = UUID.randomUUID();
        UserIDandSecret userIDandSecret = authenticationApi.registerSnapTradeUser().userId(userId.toString()).execute();

        new SnapTradeRegisterUserRequestBody().userId(userId.toString()));
        // Note: A user secret is only generated once. It's required to access resources
        // for certain endpoints
        System.out.printf("userID: %s, userSecret: %s\n", userIDandSecret.getUserId(), userIDandSecret.getUserSecret());

        // 4) Get a redirect URI. Users will need this to connect their brokerage to the
        // SnapTrade server
        LoginRedirectURI response = (LoginRedirectURI) authenticationApi.loginSnapTradeUser(userIDandSecret.getUserId(),
                userIDandSecret.getUserSecret()).execute();
        System.out.println(response.getRedirectURI());

        // 5) Make a portfolio group and query
        PortfolioManagementApi portfolioManagementApi = new PortfolioManagementApi(defaultClient);
        Map<String, Object> portfolioGroupPostBody = new HashMap<>();
        portfolioGroupPostBody.put("id", UUID.randomUUID().toString());
        portfolioGroupPostBody.put("name", "MyPortfolio");
        List<PortfolioGroup> portfolioGroupsFromPost = portfolioManagementApi.create(
                userIDandSecret.getUserId(), userIDandSecret.getUserSecret()).id(UUID.randomUUID()).name("MyPortfolio").execute();
        System.out.println(portfolioGroupsFromPost);
        List<PortfolioGroup> portfolioGroups = portfolioManagementApi.list(userIDandSecret.getUserId(),
                userIDandSecret.getUserSecret()).execute();
        System.out.println(portfolioGroups);


        // 7) Query holdings and available brokerages
        AccountInformationApi accountInformationApi = new AccountInformationApi(defaultClient);
        ReferenceDataApi referenceDataApi = new ReferenceDataApi(defaultClient);
        List<AccountHoldings> holdings = accountInformationApi.getAllUserHoldings(userIDandSecret.getUserId(),
                userIDandSecret.getUserSecret()).execute();
        System.out.println(holdings);
        List<Account> accounts = accountInformationApi.listUserAccounts(userIDandSecret.getUserId(),
                userIDandSecret.getUserSecret()).execute();
        System.out.println(accounts);
        List<Brokerage> brokerages = referenceDataApi.listAllBrokerages().execute();
        System.out.println(brokerages);

        // 8) Deleting a user
        DeleteUserResponse deleteUserResponse = authenticationApi
                .deleteSnapTradeUser(userIDandSecret.getUserId()).execute();
        System.out.println(deleteUserResponse);
    }

}
