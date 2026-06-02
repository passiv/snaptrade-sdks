package main

import (
	"bufio"
	"crypto/rand"
	"fmt"
	"os"

	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
	// 1) Initialize a client with your clientID and consumerKey.
	configuration := snaptrade.NewConfiguration()
	configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
	configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
	client := snaptrade.NewAPIClient(configuration)

	// 2) Check that the client is able to make a request to the API server.
	apiResponse, _, _ := client.APIStatusApi.Check().Execute()
	fmt.Println(apiResponse)

	// 3) Create a new user on SnapTrade
	userId := generateUUID()
	requestBody := snaptrade.NewSnapTradeRegisterUserRequestBody(userId)
	request := client.AuthenticationApi.RegisterSnapTradeUser(*requestBody)
	registerResponse, _, _ := request.Execute()
	fmt.Println(registerResponse)

	// Note: A user secret is only generated once. It's required to access
	// resources for certain endpoints.
	userSecret := registerResponse.GetUserSecret()

	// 4) Get a redirect URI. Users will need this to connect
	// their brokerage to the SnapTrade server.
	redirectURI, _, _ := client.AuthenticationApi.LoginSnapTradeUser(userId, userSecret).Execute()
	if redirectURI.LoginRedirectURI != nil {
		fmt.Println(redirectURI.LoginRedirectURI.GetRedirectURI())
	} else {
		fmt.Println(redirectURI)
	}

	fmt.Print("Open the link in your browser. When done logging in, press Enter to continue...")
	_, _ = bufio.NewReader(os.Stdin).ReadString('\n')

	// 5) Get a list of connections
	connections, _, _ := client.ConnectionsApi.ListBrokerageAuthorizations(userId, userSecret).Execute()
	fmt.Println(connections)

	// 6) Get a list of accounts for the first connection, if available
	if len(connections) == 0 {
		fmt.Println("No brokerage connections found for the user.")
	} else {
		accounts, _, _ := client.ConnectionsApi.ListBrokerageAuthorizationAccounts(
			connections[0].GetId(),
			userId,
			userSecret,
		).Execute()
		fmt.Println(accounts)
	}

	// 6) Deleting a user
	deleteResp, _, _ := client.AuthenticationApi.DeleteSnapTradeUser(userId).Execute()
	fmt.Println(deleteResp)
}

func generateUUID() string {
	bytes := make([]byte, 16)
	if _, err := rand.Read(bytes); err != nil {
		panic(err)
	}
	bytes[6] = (bytes[6] & 0x0f) | 0x40
	bytes[8] = (bytes[8] & 0x3f) | 0x80
	return fmt.Sprintf("%x-%x-%x-%x-%x", bytes[0:4], bytes[4:6], bytes[6:8], bytes[8:10], bytes[10:])
}
