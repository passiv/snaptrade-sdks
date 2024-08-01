package snaptrade

import (
	"testing"

	snaptrade "github.com/passiv/snaptrade-sdks/go"
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

	t.Run("Test GetUserAccountInformation", func(t *testing.T) {
		configuration := snaptrade.NewConfiguration()
		configuration.SetHost("http://127.0.0.1:4010")
		configuration.SetPartnerClientId("CLIENT_ID")
		client := snaptrade.NewAPIClient(configuration)

		request := client.AccountInformationApi.GetUserAccountDetails("userId", "userSecret", "accountId")

		resp, httpRes, err := request.Execute()

		require.Nil(t, err)
		require.NotNil(t, resp)
		assert.Equal(t, 200, httpRes.StatusCode)
	})
}
