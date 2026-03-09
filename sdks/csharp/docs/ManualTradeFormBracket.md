# SnapTrade.Net.Model.ManualTradeFormBracket
Inputs for placing an order with the brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**_Action** | **ActionStrictWithOptions** |  | 
**Instrument** | [**TradingInstrument**](TradingInstrument.md) |  | 
**OrderType** | **OrderTypeStrict** |  | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Price** | **double?** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Stop** | **double?** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | **double** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | [optional] 
**StopLoss** | [**StopLoss**](StopLoss.md) |  | 
**TakeProfit** | [**TakeProfit**](TakeProfit.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

