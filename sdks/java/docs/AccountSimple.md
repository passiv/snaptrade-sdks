

# AccountSimple

A single account at a brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  [optional] |
|**name** | **String** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. |  [optional] |
|**number** | **String** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. |  [optional] |
|**syncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  |  [optional] |



