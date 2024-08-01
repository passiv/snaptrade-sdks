/*
SnapTrade

Testing AccountInformationApiService

*/

// Code generated by Konfig (https://konfigthis.com);

package snaptrade

import (
    "testing"
    // "github.com/stretchr/testify/assert"
    // "github.com/stretchr/testify/require"
    // snaptrade "github.com/passiv/snaptrade-sdks/go"
)

func Test_snaptrade_AccountInformationApiService(t *testing.T) {

    // configuration := snaptrade.NewConfiguration()
    // configuration.SetHost("http://127.0.0.1:4010")
    /* 
    configuration.SetPartnerClientId("CLIENT_ID")
    configuration.SetPartnerSignature("SIGNATURE")
    configuration.SetPartnerTimestamp("TIMESTAMP")
    client := snaptrade.NewAPIClient(configuration)
    */

    t.Run("Test AccountInformationApiService GetAllUserHoldings", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetAllUserHoldings(
            "userId_example",
            "userSecret_example",
        )
        request.BrokerageAuthorizations("917c8734-8470-4a3e-a18f-57c3f2ee6631")
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService GetUserAccountBalance", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetUserAccountBalance(
            "userId_example",
            "userSecret_example",
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService GetUserAccountDetails", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetUserAccountDetails(
            "userId_example",
            "userSecret_example",
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService GetUserAccountOrders", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetUserAccountOrders(
            "userId_example",
            "userSecret_example",
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        )
        request.State("state_example")
        request.Days(30)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService GetUserAccountPositions", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetUserAccountPositions(
            "userId_example",
            "userSecret_example",
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService GetUserHoldings", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.GetUserHoldings(
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
            "userId_example",
            "userSecret_example",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService ListUserAccounts", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.ListUserAccounts(
            "userId_example",
            "userSecret_example",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test AccountInformationApiService UpdateUserAccount", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.AccountInformationApi.UpdateUserAccount(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}