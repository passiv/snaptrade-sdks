# SnapTrade.Net.Model.SnapTradeHoldingsAccountAccountId
A single brokerage account at a financial institution.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**BrokerageAuthorization** | **string** | Unique identifier for the connection (brokerage authorization). This is the UUID used to reference the connection in SnapTrade. | [optional] 
**PortfolioGroup** | **string** | Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it. | [optional] 
**Name** | **string** | A display name for the account. Either assigned by the user or by the financial institution itself. For certain institutions, SnapTrade appends the institution name to the account name for clarity. | [optional] 
**Number** | **string** | The account number assigned by the financial institution. | [optional] 
**InstitutionName** | **string** | The name of the financial institution that holds the account. | [optional] 
**Balance** | [**AccountBalanceNullable**](AccountBalanceNullable.md) |  | [optional] 
**Meta** | **Dictionary&lt;string, Object&gt;** | Additional information about the account, such as account type, status, etc. This information is specific to the financial institution and there&#39;s no standard format for this data. Please use at your own risk. | [optional] 
**CashRestrictions** | [**List&lt;CashRestriction&gt;**](CashRestriction.md) | This field is deprecated. | [optional] 
**CreatedDate** | **DateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the financial institution. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

