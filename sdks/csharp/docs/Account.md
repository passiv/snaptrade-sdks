# SnapTrade.Net.Model.Account
A single account at a brokerage.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. | [optional] 
**BrokerageAuthorization** | **string** | Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade. | [optional] 
**PortfolioGroup** | **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. | [optional] 
**Name** | **string** | A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity. | [optional] 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | [optional] 
**InstitutionName** | **string** | The name of the brokerage that holds the account. | [optional] 
**CreatedDate** | **DateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage. | [optional] 
**Meta** | **Dictionary&lt;string, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there&#39;s no standard format for this data. Please use at your own risk. | [optional] 
**CashRestrictions** | **List&lt;string&gt;** | This field is deprecated. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**Balance** | [**AccountBalance**](AccountBalance.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

