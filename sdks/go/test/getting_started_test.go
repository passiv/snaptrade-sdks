package snaptrade

import (
	"fmt"
	"math/rand"
	"os"
	"testing"
	"time"

	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

func generateUUID() string {
	t := time.Now().UnixNano()
	rand.Seed(t)
	u := make([]byte, 16)
	rand.Read(u)
	u[8] = (u[8] | 0x40) & 0x7F
	u[6] = (u[6] & 0xF) | (4 << 4)
	return fmt.Sprintf("%x-%x-%x-%x-%x", u[0:4], u[4:6], u[6:8], u[8:10], u[10:])
}

func Test_snaptrade_GettingStarted(t *testing.T) {

	t.Run("Test ApiStatus", func(t *testing.T) {
		configuration := snaptrade.NewConfiguration()
		configuration.SetHost("http://127.0.0.1:4010")
		configuration.SetPartnerClientId("CLIENT_ID")
		client := snaptrade.NewAPIClient(configuration)

		request := client.APIStatusApi.Check()

		resp, httpRes, err := request.Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)
	})

	t.Run("Test GettingStarted", func(t *testing.T) {
		configuration := snaptrade.NewConfiguration()
		configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
		configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
		client := snaptrade.NewAPIClient(configuration)

		// 1) Create a new user
		requestBody := snaptrade.NewSnapTradeRegisterUserRequestBody()
		userId := generateUUID()
		requestBody.SetUserId(userId)
		request := client.AuthenticationApi.RegisterSnapTradeUser(*requestBody)

		resp, httpRes, err := request.Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)

		// 2) Get user secret
		userSecret := resp.UserSecret
		require.NotEmpty(t, userSecret)

		// List users to ensure it was created
		listResp, _, _ := client.AuthenticationApi.ListSnapTradeUsers().Execute()
		require.Contains(t, listResp, userId)

		// 3) Get redirect URI
		loginResp, httpRes, err := client.AuthenticationApi.LoginSnapTradeUser(userId, *userSecret).Execute()
		require.Nil(t, err)
		require.NotNil(t, loginResp)
		assert.Equal(t, 200, httpRes.StatusCode)
		assert.NotEmpty(t, loginResp.LoginRedirectURI)

		// 4) Obtain account holdings data
		holdingsResp, httpRes, err := client.AccountInformationApi.GetAllUserHoldings(userId, *userSecret).Execute()
		require.Nil(t, err)
		require.NotNil(t, holdingsResp)
		assert.Equal(t, 200, httpRes.StatusCode)

		// 5) Delete the user
		deleteResp, httpRes, err := client.AuthenticationApi.DeleteSnapTradeUser(userId).Execute()
		require.Nil(t, err)
		require.NotNil(t, deleteResp)
		assert.Equal(t, 200, httpRes.StatusCode)
	})
}
