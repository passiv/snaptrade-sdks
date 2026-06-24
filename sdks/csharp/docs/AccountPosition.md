# SnapTrade.Net.Model.AccountPosition
Describes a single position.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**Instrument**](Instrument.md) |  | 
**Units** | **decimal?** | The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions. | [optional] 
**Price** | **decimal?** | Last known market price _per share_. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices. | [optional] 
**CostBasis** | **decimal?** | Book price or average purchase price for the position. For options, this is per-contract. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the position &#x60;price&#x60; and &#x60;cost_basis&#x60;. | [optional] 
**CashEquivalent** | **bool** | Present for mutual fund positions that are also counted in cash balance or buying power. | [optional] 
**TaxLots** | [**List&lt;TaxLot&gt;**](TaxLot.md) | List of tax lots for the given position (disabled by default, only available on paid plans, contact support if needed) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

