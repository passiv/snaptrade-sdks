/*
SnapTrade

Testing OptionsApiService

*/

// Code generated by Konfig (https://konfigthis.com);

package snaptrade

import (
    "testing"
    // "github.com/stretchr/testify/assert"
    // "github.com/stretchr/testify/require"
    // snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func Test_snaptrade_OptionsApiService(t *testing.T) {

    // configuration := snaptrade.NewConfiguration()
    // configuration.SetHost("http://127.0.0.1:4010")
    /* 
    configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
    configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
    client := snaptrade.NewAPIClient(configuration)
    */

    t.Run("Test OptionsApiService GetOptionStrategy", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        optionsGetOptionStrategyRequest := *snaptrade.NewOptionsGetOptionStrategyRequest(
            "2bcd7cc3-e922-4976-bce1-9858296801c3",
            null,
            "null",
        )
        
        request := client.OptionsApi.GetOptionStrategy(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            optionsGetOptionStrategyRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test OptionsApiService GetOptionsChain", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.OptionsApi.GetOptionsChain(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test OptionsApiService GetOptionsStrategyQuote", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.OptionsApi.GetOptionsStrategyQuote(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test OptionsApiService ListOptionHoldings", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.OptionsApi.ListOptionHoldings(
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

    t.Run("Test OptionsApiService PlaceOptionStrategy", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        optionsPlaceOptionStrategyRequest := *snaptrade.NewOptionsPlaceOptionStrategyRequest(
            null,
            null,
        )
        optionsPlaceOptionStrategyRequest.SetPrice(31.33)
        
        request := client.OptionsApi.PlaceOptionStrategy(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            optionsPlaceOptionStrategyRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}