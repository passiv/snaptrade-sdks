

# LineOfCreditAccountSyncStatus

Contains status updates for the account sync process between SnapTrade and the institution, used by `LineOfCreditAccount` in `Connections_listConnectionAccounts`. Each property is optional -- an institution may not report sync status for every data type. Line-of-credit accounts don't place orders or hold positions, so like `DepositAccountSyncStatus` this type has no `orders` or `positions` field. `balances` is the timestamp of the last successful sync of that data type (null if never synced). 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**transactions** | [**TransactionsStatus**](TransactionsStatus.md) |  |  [optional] |
|**balances** | **OffsetDateTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) |  [optional] |



