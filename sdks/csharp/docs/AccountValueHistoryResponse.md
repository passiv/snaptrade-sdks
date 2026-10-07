# SnapTrade.Net.Model.AccountValueHistoryResponse
The response to the account value history endpoint, containing a list of estimated account values at different points in time.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**History** | [**List&lt;AccountValueHistoryItem&gt;**](AccountValueHistoryItem.md) | List of estimated account values over time returned by the endpoint. The data may contain gaps and is best used for charting trends, rather than as a complete or exact record of historical account values. | [optional] 
**Currency** | **string** | The ISO-4217 currency code for the account values. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

