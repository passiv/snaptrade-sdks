# SnapTrade.Net.Model.TrailingStopLimitOrderType
A trailing stop-limit order. The stop price trails the market price by `trail`; once triggered, a limit order at `limit_price` is placed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Trail** | [**TrailingStop**](TrailingStop.md) |  | 
**LimitPrice** | **decimal** | The limit price that applies once triggered. | 
**StopPrice** | **decimal?** | The current trigger price, when the brokerage reports it. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

