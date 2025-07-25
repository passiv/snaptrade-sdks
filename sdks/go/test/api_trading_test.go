/*
SnapTrade

Testing TradingApiService

*/

// Code generated by Konfig (https://konfigthis.com);

package snaptrade

import (
    "testing"
    // "github.com/stretchr/testify/assert"
    // "github.com/stretchr/testify/require"
    // snaptrade "github.com/passiv/snaptrade-sdks/sdks/go"
)

func Test_snaptrade_TradingApiService(t *testing.T) {

    // configuration := snaptrade.NewConfiguration()
    // configuration.SetHost("http://127.0.0.1:4010")
    /* 
    configuration.SetPartnerClientId(os.Getenv("SNAPTRADE_CLIENT_ID"))
    configuration.SetConsumerKey(os.Getenv("SNAPTRADE_CONSUMER_KEY"))
    client := snaptrade.NewAPIClient(configuration)
    */

    t.Run("Test TradingApiService CancelOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.TradingApi.CancelOrder(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            "brokerageOrderId_example",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService CancelUserAccountOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        tradingCancelUserAccountOrderRequest := *snaptrade.NewTradingCancelUserAccountOrderRequest()
        tradingCancelUserAccountOrderRequest.SetBrokerageOrderId("66a033fa-da74-4fcf-b527-feefdec9257e")
        
        request := client.TradingApi.CancelUserAccountOrder(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            tradingCancelUserAccountOrderRequest,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService GetCryptocurrencyPairQuote", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.TradingApi.GetCryptocurrencyPairQuote(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            "instrumentSymbol_example",
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService GetOrderImpact", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        units := *snaptrade.Newfloat32()
        notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
        
        manualTradeForm := *snaptrade.NewManualTradeForm(
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
            null,
            "2bcd7cc3-e922-4976-bce1-9858296801c3",
            null,
            null,
        )
        manualTradeForm.SetPrice(31.33)
        manualTradeForm.SetStop(31.33)
        manualTradeForm.SetUnits(units)
        manualTradeForm.SetNotionalValue(notionalValue)
        
        request := client.TradingApi.GetOrderImpact(
            "userId_example",
            "userSecret_example",
            manualTradeForm,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService GetUserAccountQuotes", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.TradingApi.GetUserAccountQuotes(
            "userId_example",
            "userSecret_example",
            "symbols_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        )
        request.UseTicker(true)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PlaceBracketOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        instrument := *snaptrade.NewTradingInstrument()
        stopLoss := *snaptrade.NewStopLoss()
        takeProfit := *snaptrade.NewTakeProfit()
        
        manualTradeFormBracket := *snaptrade.NewManualTradeFormBracket(
            null,
            instrument,
            null,
            null,
            stopLoss,
            takeProfit,
        )
        manualTradeFormBracket.SetSymbol("AAPL")
        manualTradeFormBracket.SetPrice(31.33)
        manualTradeFormBracket.SetStop(31.33)
        manualTradeFormBracket.SetUnits(10.5)
        
        request := client.TradingApi.PlaceBracketOrder(
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            "userId_example",
            "userSecret_example",
            manualTradeFormBracket,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PlaceForceOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        universalSymbolId := *snaptrade.Newstring()
        units := *snaptrade.Newfloat32()
        notionalValue := *snaptrade.NewManualTradeFormNotionalValue()
        
        manualTradeFormWithOptions := *snaptrade.NewManualTradeFormWithOptions(
            "917c8734-8470-4a3e-a18f-57c3f2ee6631",
            null,
            null,
            null,
        )
        manualTradeFormWithOptions.SetUniversalSymbolId(universalSymbolId)
        manualTradeFormWithOptions.SetSymbol("AAPL  131124C00240000")
        manualTradeFormWithOptions.SetPrice(31.33)
        manualTradeFormWithOptions.SetStop(31.33)
        manualTradeFormWithOptions.SetUnits(units)
        manualTradeFormWithOptions.SetNotionalValue(notionalValue)
        
        request := client.TradingApi.PlaceForceOrder(
            "userId_example",
            "userSecret_example",
            manualTradeFormWithOptions,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PlaceMlegOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        priceEffect := *snaptrade.NewMlegPriceEffectStrict()
        
        mlegTradeForm := *snaptrade.NewMlegTradeForm(
            null,
            null,
            null,
        )
        mlegTradeForm.SetLimitPrice("")
        mlegTradeForm.SetStopPrice("")
        mlegTradeForm.SetPriceEffect(priceEffect)
        
        request := client.TradingApi.PlaceMlegOrder(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            mlegTradeForm,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PlaceOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        
        validatedTradeBody := *snaptrade.NewValidatedTradeBody()
        validatedTradeBody.SetWaitToConfirm(true)
        
        request := client.TradingApi.PlaceOrder(
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            "userId_example",
            "userSecret_example",
        )
        request.ValidatedTradeBody(validatedTradeBody)
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PlaceSimpleOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        instrument := *snaptrade.NewTradingInstrument()
        
        simpleOrderForm := *snaptrade.NewSimpleOrderForm(
            instrument,
            null,
            "null",
            "null",
            "123.45",
        )
        simpleOrderForm.SetLimitPrice("123.45")
        simpleOrderForm.SetStopPrice("123.45")
        simpleOrderForm.SetPostOnly(false)
        simpleOrderForm.SetExpirationDate(2024-01-01T00:00Z)
        
        request := client.TradingApi.PlaceSimpleOrder(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            simpleOrderForm,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService PreviewSimpleOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        instrument := *snaptrade.NewTradingInstrument()
        
        simpleOrderForm := *snaptrade.NewSimpleOrderForm(
            instrument,
            null,
            "null",
            "null",
            "123.45",
        )
        simpleOrderForm.SetLimitPrice("123.45")
        simpleOrderForm.SetStopPrice("123.45")
        simpleOrderForm.SetPostOnly(false)
        simpleOrderForm.SetExpirationDate(2024-01-01T00:00Z)
        
        request := client.TradingApi.PreviewSimpleOrder(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            simpleOrderForm,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService ReplaceOrder", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        units := *snaptrade.Newfloat32()
        
        manualTradeReplaceForm := *snaptrade.NewManualTradeReplaceForm(
            null,
            null,
            null,
        )
        manualTradeReplaceForm.SetPrice(31.33)
        manualTradeReplaceForm.SetSymbol("AAPL")
        manualTradeReplaceForm.SetStop(31.33)
        manualTradeReplaceForm.SetUnits(units)
        
        request := client.TradingApi.ReplaceOrder(
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
            "brokerageOrderId_example",
            "userId_example",
            "userSecret_example",
            manualTradeReplaceForm,
        )
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

    t.Run("Test TradingApiService SearchCryptocurrencyPairInstruments", func(t *testing.T) {
        /* TODO: ENG-1367 Fix parameter values for Go SDK generated tests
        request := client.TradingApi.SearchCryptocurrencyPairInstruments(
            "userId_example",
            "userSecret_example",
            ""38400000-8cf0-11bd-b23e-10b96e4ef00d"",
        )
        request.Base("base_example")
        request.Quote("quote_example")
        
        resp, httpRes, err := request.Execute()

        require.Nil(t, err)
        require.NotNil(t, resp)
        assert.Equal(t, 200, httpRes.StatusCode)
        */
    })

}