

# InvestmentAccount

An investment account under a connection. `opening_date`, `funding_date`, and `net_value` are real-time or cached depending on the caller's plan -- see `Connections_listConnectionAccounts`. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Discriminator for the account kind. |  |
|**id** | [**UUID**](UUID.md) | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. |  |
|**connectionId** | **UUID** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. |  |
|**displayName** | **String** | A display name for the account. Either assigned by the user or by the institution itself. |  [optional] |
|**number** | **String** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****8443&#x60;). |  |
|**institutionAccountId** | **String** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. |  [optional] |
|**institutionId** | **UUID** | Unique identifier for the institution that holds the account. |  [optional] |
|**openingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. See [supported institutions](https://support.snaptrade.com/brokerages) for the full list. |  [optional] |
|**fundingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. See [supported institutions](https://support.snaptrade.com/brokerages) for the full list. |  [optional] |
|**syncStatus** | [**ConnectionAccountSyncStatus**](ConnectionAccountSyncStatus.md) |  |  |
|**rawType** | **String** | The account type as provided by the institution. |  [optional] |
|**isPaper** | **Boolean** | Indicates whether the account is a paper (simulated) trading account. |  |
|**netValue** | [**InvestmentAccountNetValue**](InvestmentAccountNetValue.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| INVESTMENT | &quot;investment&quot; |



