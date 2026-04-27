# SnapTrade.Net.Model.ComplexOrderResponse
Response returned after successfully placing a complex order. AccountOrderRecord rows for the legs are not created synchronously — they're hydrated by the next brokerage sync, and can be queried later using the returned `brokerage_group_order_id`. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | The complex order type that was placed. | [optional] 
**BrokerageGroupOrderId** | **string** | The brokerage-assigned identifier that links all legs of this complex order together. Each leg will eventually appear as a separate AccountOrderRecord sharing this value. May be null if the brokerage does not return a group identifier.  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

