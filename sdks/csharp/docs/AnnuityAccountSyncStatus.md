# SnapTrade.Net.Model.AnnuityAccountSyncStatus
Contains sync status for an annuity contract's value. Akoya annuity accounts do not expose transactions, orders, or positions, so those fields are omitted. `balances` is derived from the last successful holdings sync and is null if never synced. It tracks the contract value, not available cash. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Balances** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

