

# AccountSimple

A single brokerage account at a financial institution.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  [optional] |
|**name** | **String** | A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity. |  [optional] |
|**number** | **String** | The account number assigned by the financial institution. |  [optional] |
|**syncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  |  [optional] |



