# SnapTrade.Net.Model.ManualTradeForm
Inputs for placing an order with the brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**_Action** | **ActionStrict** |  | 
**UniversalSymbolId** | **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | 
**OrderType** | **OrderTypeStrict** |  | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Price** | **double?** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Stop** | **double?** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | **double?** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | [optional] 
**NotionalValue** | [**NotionalValueNullable**](NotionalValueNullable.md) | Total notional amount for the order. Must be &#x60;null&#x60; if &#x60;units&#x60; is provided. Can only work with &#x60;Market&#x60; for &#x60;order_type&#x60; and &#x60;Day&#x60; for &#x60;time_in_force&#x60;. This is only available for certain brokerages. Please check the [integrations doc](https://support.snaptrade.com/brokerages-table?v&#x3D;e7bbcbf9f272441593f93decde660687) for more information. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

