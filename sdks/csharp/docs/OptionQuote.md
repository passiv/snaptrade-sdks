# SnapTrade.Net.Model.OptionQuote
Real-time quote for a single option contract.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The OCC-formatted option symbol. | [optional] 
**BidPrice** | **double** | The best bid price for the option contract. | [optional] 
**BidSize** | **int** | The number of contracts available at the bid price. | [optional] 
**AskPrice** | **double** | The best ask price for the option contract. | [optional] 
**AskSize** | **int** | The number of contracts available at the ask price. | [optional] 
**LastPrice** | **double** | The price of the last trade for the option contract. | [optional] 
**LastSize** | **int** | The number of contracts in the last trade. | [optional] 
**OpenInterest** | **int** | The total number of outstanding contracts. | [optional] 
**Volume** | **int** | The total number of contracts traded during the current session. | [optional] 
**ImpliedVolatility** | **double** | The implied volatility of the option contract. | [optional] 
**UnderlyingPrice** | **double** | The current price of the underlying security. | [optional] 
**Timestamp** | **DateTime?** | The timestamp of the quote. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

