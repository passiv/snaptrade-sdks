# SnapTrade.Net.Model.Account
A single account at a brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. | 
**BrokerageAuthorization** | **string** | Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade. | 
**Name** | **string** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | 
**InstitutionName** | **string** | The name of the brokerage that holds the account. | 
**CreatedDate** | **DateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage. | 
**FundingDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. | [optional] 
**OpeningDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | 
**Balance** | [**AccountBalance**](AccountBalance.md) |  | 
**Status** | **string** | The current status of the account. Can be either \&quot;open\&quot;, \&quot;closed\&quot;, \&quot;archived\&quot; or null if the status is unknown or not provided by the brokerage. | [optional] 
**RawType** | **string** | The account type as provided by the brokerage | [optional] 
**Meta** | **Dictionary&lt;string, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version. | [optional] 
**PortfolioGroup** | **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. | [optional] 
**CashRestrictions** | **List&lt;string&gt;** | This field is deprecated. | [optional] 
**IsPaper** | **bool** | Indicates whether the account is a paper (simulated) trading account. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

