# SnapTrade.Net.Model.OptionsPosition
Describes a single option position in an account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**OptionBrokerageSymbol**](OptionBrokerageSymbol.md) |  | [optional] 
**Price** | **double?** | Last known market price _per share_ of the option contract. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices. | [optional] 
**Units** | **double** | The number of contracts for this option position. A positive number indicates a long position, while a negative number indicates a short position. | [optional] 
**Currency** | [**CurrencyNullable**](CurrencyNullable.md) |  | [optional] 
**AveragePurchasePrice** | **double?** | Cost basis _per contract_ of this option position. To get the cost basis _per share_, divide this value by the number of shares per contract (usually 100). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

