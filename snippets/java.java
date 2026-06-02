import com.snaptrade.client.ApiException;
import com.snaptrade.client.Configuration;
import com.snaptrade.client.Snaptrade;
import com.snaptrade.client.model.*;
import java.util.List;
import java.util.Scanner;
import java.util.UUID;

public class Example {

        public static void main(String[] args) throws ApiException {
                // 1) Initialize a client with your clientID and consumerKey.
                Configuration configuration = new Configuration();
                configuration.clientId = System.getenv("SNAPTRADE_CLIENT_ID");
                configuration.consumerKey = System.getenv("SNAPTRADE_CONSUMER_KEY");
                Snaptrade snaptrade = new Snaptrade(configuration);

                // 2) Check that the client is able to make a request to the API server.
                Status status = snaptrade.apiStatus.check().execute();
                System.out.println(status);

                // 3) Create a new user on SnapTrade
                String userId = UUID.randomUUID().toString();
                UserIDandSecret registerResponse = snaptrade.authentication
                                .registerSnapTradeUser(userId)
                                .execute();
                System.out.println(registerResponse);

                // Note: A user secret is only generated once. It's required to access resources
                // for certain endpoints.
                String userSecret = registerResponse.getUserSecret();

                // 4) Get a redirect URI. Users will need this to connect their brokerage to the
                // SnapTrade server.
                Object redirectUri = snaptrade.authentication
                                .loginSnapTradeUser(userId, userSecret)
                                .execute();
                System.out.println(redirectUri);

                System.out.print("Open the link in your browser. When done logging in, press Enter to continue...");
                new Scanner(System.in).nextLine();

                // 5) Get a list of connections
                List<BrokerageAuthorization> connections = snaptrade.connections
                                .listBrokerageAuthorizations(userId, userSecret)
                                .execute();
                System.out.println(connections);

                // 6) Get a list of accounts for the first connection, if available
                if (connections.isEmpty()) {
                        System.out.println("No brokerage connections found for the user.");
                } else {
                        List<Account> accounts = snaptrade.connections
                                        .listBrokerageAuthorizationAccounts(
                                                        connections.get(0).getId(),
                                                        userId,
                                                        userSecret)
                                        .execute();
                        System.out.println(accounts);
                }

                // 6) Deleting a user
                DeleteUserResponse deleteUserResponse = snaptrade.authentication
                                .deleteSnapTradeUser(userId)
                                .execute();
                System.out.println(deleteUserResponse);
        }
}
