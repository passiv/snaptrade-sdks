

# ConnectionAccountSyncStatus

Contains status updates for the account sync process between SnapTrade and the brokerage, used only by `Connections_listConnectionAccounts`. Each property is optional -- a brokerage may not report sync status for every data type. `orders`/`positions`/`balances` are the timestamp of the last successful sync of that data type (null if never synced). 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**transactions** | [**TransactionsStatus**](TransactionsStatus.md) |  |  [optional] |
|**orders** | [**OffsetDateTime**](OffsetDateTime.md) | The last time orders were successfully synced by SnapTrade. |  [optional] |
|**positions** | [**OffsetDateTime**](OffsetDateTime.md) | The last time positions were successfully synced by SnapTrade. |  [optional] |
|**balances** | [**OffsetDateTime**](OffsetDateTime.md) | The last time balances were successfully synced by SnapTrade. |  [optional] |



