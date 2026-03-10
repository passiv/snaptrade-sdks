# SnapTrade.Net.Model.OptionImpact
Estimated cash change and fees for an option order before it is placed.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EstimatedCashChange** | **string** | Estimated cash change for the order, before fees. | [optional] 
**CashChangeDirection** | **string** | Direction of the cash change. CREDIT means cash is received, DEBIT means cash is paid out, EVEN means no cash changes hands. UNKNOWN if the direction cannot be determined from the request. | [optional] 
**EstimatedFeeTotal** | **string** | Estimated total transaction fees and commissions for the order. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

