# SnapTrade.Net.Model.ManualTradeFormComplex
Request body for placing a complex conditional order (OCO, OTO, or OTOCO).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | The complex order type. - &#x60;OCO&#x60;: One Cancels the Other — two peer orders. - &#x60;OTO&#x60;: One Triggers the Other — a trigger order and a conditional order. - &#x60;OTOCO&#x60;: One Triggers a One Cancels the Other — a trigger order and two peer orders.  | 
**Orders** | [**List&lt;ComplexOrderLeg&gt;**](ComplexOrderLeg.md) | The orders that make up the complex order. Required counts and roles per type: - &#x60;OCO&#x60;: exactly 2 orders, both &#x60;PEER&#x60; - &#x60;OTO&#x60;: exactly 2 orders, one &#x60;TRIGGER&#x60; and one &#x60;CONDITIONAL&#x60; - &#x60;OTOCO&#x60;: exactly 3 orders, one &#x60;TRIGGER&#x60; and two &#x60;PEER&#x60;  | 
**ClientOrderId** | **string** | Optional caller-supplied identifier passed through to the brokerage for idempotent order placement. Must be a canonical 36-character UUID. Idempotency enforcement is brokerage-specific - SnapTrade forwards this value to the broker but does not enforce uniqueness server-side. Refer to per-brokerage documentation for behavior on duplicate submission.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

