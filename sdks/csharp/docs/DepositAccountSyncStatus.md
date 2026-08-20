# SnapTrade.Net.Model.DepositAccountSyncStatus
Contains status updates for the account sync process between SnapTrade and the institution, used by `DepositAccount` in `Connections_listConnectionAccounts`. Each property is optional - - an institution may not report sync status for every data type. Deposit accounts don't place orders or hold positions, so unlike `ConnectionAccountSyncStatus` this type has no `orders` or `positions` field. `balances` is the timestamp of the last successful sync of that data type (null if never synced). 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Transactions** | [**TransactionsStatus**](TransactionsStatus.md) |  | [optional] 
**Balances** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

