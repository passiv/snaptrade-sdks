# SnapTrade.Net.Model.ConnectionAccountSyncStatus
Contains status updates for the account sync process between SnapTrade and the brokerage, used only by `Connections_listConnectionAccounts`. Each property is optional - - a brokerage may not report sync status for every data type. `orders`/`positions`/`balances` are the timestamp of the last successful sync of that data type (null if never synced). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Transactions** | [**TransactionsStatus**](TransactionsStatus.md) |  | [optional] 
**Orders** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 
**Positions** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 
**Balances** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

