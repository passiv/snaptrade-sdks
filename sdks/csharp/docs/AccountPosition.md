# SnapTrade.Net.Model.AccountPosition
Describes a single position.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**Instrument**](Instrument.md) |  | 
**Units** | **decimal?** | The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions. | [optional] 
**Price** | **decimal?** | Last known market price for the position. | [optional] 
**CostBasis** | **decimal?** | Book price or average purchase price for the position. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the position &#x60;price&#x60; and &#x60;cost_basis&#x60;. | [optional] 
**CashEquivalent** | **bool** | Present for mutual fund positions that are also counted in cash balance or buying power. | [optional] 
**TaxLots** | [**List&lt;TaxLot&gt;**](TaxLot.md) | List of tax lots for the given position (disabled by default, only available on paid plans, contact support if needed) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

