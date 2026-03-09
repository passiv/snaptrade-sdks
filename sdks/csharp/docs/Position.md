# SnapTrade.Net.Model.Position
Describes a single stock/ETF/crypto/mutual fund position in an account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**PositionSymbol**](PositionSymbol.md) |  | [optional] 
**Units** | **double?** | The number of shares of the position. This can be fractional or integer units. | [optional] 
**Price** | **double?** | Last known market price for the symbol. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices. | [optional] 
**OpenPnl** | **double?** | The profit or loss on the position since it was opened. This is calculated as the difference between the current market value of the position and the total cost of the position. It is recommended to calculate this value using the average purchase price and the current market price yourself, instead of relying on this field. | [optional] 
**AveragePurchasePrice** | **double?** | Cost basis _per share_ of this position. | [optional] 
**FractionalUnits** | **double?** | Deprecated, use the &#x60;units&#x60; field for both fractional and integer units going forward | [optional] 
**Currency** | [**PositionCurrency**](PositionCurrency.md) |  | [optional] 
**CashEquivalent** | **bool?** | If the position is a cash equivalent (usually a money market fund) that is also counted in account cash balance and buying power | [optional] 
**TaxLots** | [**List&lt;TaxLot&gt;**](TaxLot.md) | List of tax lots for the given position (disabled by default, contact support if needed) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

