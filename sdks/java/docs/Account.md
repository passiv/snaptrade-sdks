

# Account

A single account at a brokerage.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | [**UUID**](UUID.md) | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. |  |
|**brokerageAuthorization** | **UUID** | Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade. |  |
|**name** | **String** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. |  |
|**number** | **String** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. |  |
|**institutionAccountId** | **String** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. |  [optional] |
|**institutionName** | **String** | The name of the brokerage that holds the account. |  |
|**createdDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage. |  |
|**fundingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. |  [optional] |
|**openingDate** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. |  [optional] |
|**syncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  |  |
|**balance** | [**AccountBalance**](AccountBalance.md) |  |  |
|**status** | [**StatusEnum**](#StatusEnum) | The current status of the account. Can be either \&quot;open\&quot;, \&quot;closed\&quot;, \&quot;archived\&quot; or null if the status is unknown or not provided by the brokerage. |  [optional] |
|**rawType** | **String** | The account type as provided by the brokerage |  [optional] |
|**meta** | **Map&lt;String, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version. |  [optional] |
|**portfolioGroup** | **UUID** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. |  [optional] |
|**cashRestrictions** | **List&lt;String&gt;** | This field is deprecated. |  [optional] |
|**isPaper** | **Boolean** | Indicates whether the account is a paper (simulated) trading account. |  |



## Enum: StatusEnum

| Name | Value |
|---- | -----|
| OPEN | &quot;open&quot; |
| CLOSED | &quot;closed&quot; |
| ARCHIVED | &quot;archived&quot; |
| UNAVAILABLE | &quot;unavailable&quot; |



