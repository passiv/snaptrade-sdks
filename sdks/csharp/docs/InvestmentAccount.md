# SnapTrade.Net.Model.InvestmentAccount
An investment/brokerage account under a connection. `opening_date`, `funding_date`, and `market_value` are real-time or cached depending on the caller's plan - - see `Connections_listConnectionAccounts`. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Discriminator for the account kind. | 
**Id** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**ConnectionId** | **string** | Unique identifier for the connection (brokerage_authorization_id). This is the UUID used to reference the connection in SnapTrade. | 
**DisplayName** | **string** | A display name for the account. Either assigned by the user or by the brokerage itself. | [optional] 
**Number** | **string** | The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons. | 
**InstitutionAccountId** | **string** | A stable and unique account identifier provided by the institution. Will be set to null if not provided. When present, can be used to check if a user has connected the same brokerage account across multiple connections. | [optional] 
**InstitutionId** | **string** | Unique identifier for the institution (brokerage) that holds the account. | [optional] 
**OpeningDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was opened at the brokerage. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); &#x60;null&#x60; for all other brokerages. | [optional] 
**SyncStatus** | [**ConnectionAccountSyncStatus**](ConnectionAccountSyncStatus.md) |  | 
**RawType** | **string** | The account type as provided by the brokerage. | [optional] 
**FundingDate** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was funded. Only populated for brokerages that expose this data (Tastytrade, eToro, moomoo, Public, and Unlok); &#x60;null&#x60; for all other brokerages. | [optional] 
**IsPaper** | **bool** | Indicates whether the account is a paper (simulated) trading account. | 
**MarketValue** | [**InvestmentAccountMarketValue**](InvestmentAccountMarketValue.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

