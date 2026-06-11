# SnapTrade.Net.Model.Account
A single account at a brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. | 
**BrokerageAuthorization** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**Name** | **string** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | 
**InstitutionAccountId** | **string** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. | [optional] 
**InstitutionName** | **string** | The name of the brokerage that holds the account. | 
**CreatedDate** | **DateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage. | 
**FundingDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. | [optional] 
**OpeningDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | 
**Balance** | [**AccountBalance**](AccountBalance.md) |  | 
**Status** | **string** | The current status of the account. Can be either \&quot;open\&quot;, \&quot;closed\&quot;, \&quot;archived\&quot; or null if the status is unknown or not provided by the brokerage. | [optional] 
**RawType** | **string** | The account type as provided by the brokerage | [optional] 
**AccountCategory** | **string** | The category of the account, normalized across institutions. Returns &#x60;null&#x60; if the category could not be determined. Use this field to filter out non-investment accounts if your integration only supports trading / holdings flows. See [Filtering Accounts by Category](https://docs.snaptrade.com/docs/filtering-accounts-by-category) for more information. - &#x60;INVESTMENT&#x60;: A brokerage / investment account (equities, options, crypto, etc.). - &#x60;DEPOSIT&#x60;: A bank deposit account (checking, savings). - &#x60;LOC&#x60;: A line of credit account.  | [optional] 
**Meta** | **Dictionary&lt;string, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version. | [optional] 
**PortfolioGroup** | **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a use case for it. | [optional] 
**CashRestrictions** | **List&lt;string&gt;** | This field is deprecated. | [optional] 
**IsPaper** | **bool** | Indicates whether the account is a paper (simulated) trading account. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

