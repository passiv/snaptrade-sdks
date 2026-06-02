# SnapTrade.Net.Model.TrailingStop
Trail configuration for trailing stop orders.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | **string** | The trail amount. Interpreted as dollars if &#x60;type&#x60; is &#x60;DOLLAR&#x60;, or a percentage if &#x60;type&#x60; is &#x60;PERCENT&#x60;. | 
**Type** | **string** | Whether the trail &#x60;amount&#x60; is a dollar amount (&#x60;DOLLAR&#x60;) or a percentage (&#x60;PERCENT&#x60;). For example, if &#x60;amount&#x60; is \&quot;0.60\&quot; and &#x60;type&#x60; is &#x60;DOLLAR&#x60;, the stop price will trail the market price by $0.60. If &#x60;amount&#x60; is \&quot;5\&quot; and &#x60;type&#x60; is &#x60;PERCENT&#x60;, the stop price will trail the market price by 5%. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

