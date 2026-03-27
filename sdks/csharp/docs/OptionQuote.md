# SnapTrade.Net.Model.OptionQuote
Real-time quote for a single option contract.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The OCC-formatted option symbol. | [optional] 
**SyntheticPrice** | **double** | The derived synthetic price of the contract. | [optional] 
**ImpliedVolatility** | **double** | The implied volatility of the option contract. | [optional] 
**Timestamp** | **DateTime?** | The timestamp of the last update for the option quote. | [optional] 
**Greeks** | [**OptionQuoteGreeks**](OptionQuoteGreeks.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

