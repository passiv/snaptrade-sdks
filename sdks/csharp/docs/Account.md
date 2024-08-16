# SnapTrade.Net.Model.Account
A single brokerage account at a financial institution.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated. If you want a stable identifier for the account, use the &#x60;number&#x60; field. | [optional] 
**BrokerageAuthorization** | **string** | Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade. | [optional] 
**PortfolioGroup** | **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. | [optional] 
**Name** | **string** | A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity. | [optional] 
**Number** | **string** | The account number assigned by the financial institution. | [optional] 
**InstitutionName** | **string** | The name of the financial institution that holds the account. | [optional] 
**CreatedDate** | **DateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the financial institution. | [optional] 
**Meta** | **Dictionary&lt;string, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the financial institution and there&#39;s no standard format for this data. Please use at your own risk. | [optional] 
**CashRestrictions** | **List&lt;string&gt;** | This field is deprecated. | [optional] 
**SyncStatus** | [**AccountSyncStatus**](AccountSyncStatus.md) |  | [optional] 
**Balance** | [**AccountBalance**](AccountBalance.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

