

# DepositAccount

A deposit account (checking, savings) under a connection. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Discriminator for the account kind. |  |
|**id** | [**UUID**](UUID.md) | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  |
|**connectionId** | **UUID** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. |  |
|**displayName** | **String** | A display name for the account. Either assigned by the user or by the brokerage itself. |  [optional] |
|**number** | **String** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. |  |
|**institutionAccountId** | **String** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. |  [optional] |
|**institutionId** | **UUID** | Unique identifier for the institution (brokerage) that holds the account. |  [optional] |
|**openingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data; &#x60;null&#x60; for all other brokerages. |  [optional] |
|**syncStatus** | [**ConnectionAccountSyncStatus**](ConnectionAccountSyncStatus.md) |  |  |
|**rawType** | **String** | The account type as provided by the brokerage. |  [optional] |
|**balance** | [**DepositAccountBalance**](DepositAccountBalance.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| DEPOSIT | &quot;deposit&quot; |



