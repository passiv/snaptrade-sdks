

# LineOfCreditAccount

A line-of-credit account (e.g. a credit card) under a connection. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Discriminator for the account kind. |  |
|**id** | [**UUID**](UUID.md) | Unique identifier for the connected institution account. This is the UUID used to reference the account in SnapTrade. |  |
|**connectionId** | **UUID** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. |  |
|**displayName** | **String** | A display name for the account. Either assigned by the user or by the institution itself. |  [optional] |
|**maskedAccountNumber** | **String** | The account number assigned by the institution, masked to the last 4 characters (e.g. &#x60;****1881&#x60;). |  |
|**institutionAccountId** | **String** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same institution account across multiple connections. |  [optional] |
|**institutionId** | **UUID** | Unique identifier for the institution that holds the account. |  [optional] |
|**openingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the institution. Only populated for institutions that expose this data; &#x60;null&#x60; for all other institutions. |  [optional] |
|**syncStatus** | [**LineOfCreditAccountSyncStatus**](LineOfCreditAccountSyncStatus.md) |  |  |
|**rawType** | **String** | The account type as provided by the institution. |  [optional] |
|**netValue** | [**LineOfCreditAccountNetValue**](LineOfCreditAccountNetValue.md) |  |  [optional] |
|**minimumPaymentAmount** | [**LineOfCreditAccountMinimumPaymentAmount**](LineOfCreditAccountMinimumPaymentAmount.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| LINE_OF_CREDIT | &quot;line_of_credit&quot; |



