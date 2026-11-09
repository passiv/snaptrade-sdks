

# AnnuityAccountSyncStatus

Contains sync status for an annuity contract's value. Transactions, orders, and positions are omitted. `balances` is derived from the last successful holdings sync and is null if never synced. It tracks the contract value, not available cash. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**balances** | **OffsetDateTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) |  [optional] |



