# SnapTrade.Net.Model.DepositAccountNetValue
Net value of the account - - cash balance for deposit accounts. Shared across all account kinds so that, e.g., a future `line_of_credit` account can report a negative net value here. Null when unknown (e.g. a real-time fetch failed and no cached value exists).

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Amount** | **double?** |  | [optional] 
**Currency** | **string** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

