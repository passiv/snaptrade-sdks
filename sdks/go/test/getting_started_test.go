package snaptrade

import (
	"os"
	"testing"

	"github.com/google/uuid"
	snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
	"github.com/stretchr/testify/assert"
	"github.com/stretchr/testify/require"
)

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
		userId := uuid.New().String()
		requestBody.SetUserId(userId)
		request := client.AuthenticationApi.RegisterSnapTradeUser(*requestBody)

		resp, httpRes, err := request.Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)
	})
}
