

# ConnectionAccountSyncStatus

Contains status updates for the account sync process between SnapTrade and the institution, used by `InvestmentAccount` in `Connections_listConnectionAccounts`. Each property is optional -- an institution may not report sync status for every data type. `orders`/`positions`/`balances` are the timestamp of the last successful sync of that data type (null if never synced). See `DepositAccountSyncStatus` for the deposit-account counterpart, which omits `orders`/`positions` since deposit accounts don't place orders or hold positions. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**transactions** | [**TransactionsStatus**](TransactionsStatus.md) |  |  [optional] |
|**orders** | **OffsetDateTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) |  [optional] |
|**positions** | **OffsetDateTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) |  [optional] |
|**balances** | **OffsetDateTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) |  [optional] |



