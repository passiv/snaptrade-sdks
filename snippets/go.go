package main

import (
	"fmt"
	"os"

	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func main() {
	configuration := snaptrade.NewConfiguration()
	configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
	configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
	client := snaptrade.NewAPIClient(configuration)

	// 1) Create a new user
	requestBody := snaptrade.NewSnapTradeRegisterUserRequestBody()
	userId := "USER_ID_FROM_YOU"
	requestBody.SetUserId(userId)
	request := client.AuthenticationApi.RegisterSnapTradeUser(*requestBody)
	resp, _, _ := request.Execute()

	// 2) Get user secret
	userSecret := resp.UserSecret

	// 3) Get redirect URI
	loginResp, _, _ := client.AuthenticationApi.LoginSnapTradeUser(userId, *userSecret).Execute()
	fmt.Println("Login redirect URI:", loginResp.LoginRedirectURI)

	// 4) Obtain account holdings data
	holdingsResp, _, _ := client.AccountInformationApi.GetAllUserHoldings(userId, *userSecret).Execute()
	fmt.Println("Account holdings:", holdingsResp)
	// 5) Delete the user
	deleteResp, _, _ := client.AuthenticationApi.DeleteSnapTradeUser(userId).Execute()
	fmt.Println("User deletion response:", deleteResp)
}
