# SnapTrade.Net.Model.AccountSimple
A single brokerage account at a financial institution.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**Name** | **string** | A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity. | [optional] 
**Number** | **string** | The account number assigned by the financial institution. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

