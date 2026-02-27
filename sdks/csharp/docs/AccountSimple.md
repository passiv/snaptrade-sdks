# SnapTrade.Net.Model.AccountSimple
A single account at a brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**Name** | **string** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | [optional] 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | [optional] 
**InstitutionAccountId** | **string** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

