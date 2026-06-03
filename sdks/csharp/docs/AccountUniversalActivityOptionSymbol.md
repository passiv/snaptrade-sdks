# SnapTrade.Net.Model.AccountUniversalActivityOptionSymbol
The option security for the transaction. The field is `null` if the transaction is not related to an option security (like a deposit, withdrawal, fee, etc). SnapTrade does a best effort to map the brokerage's option symbol. In cases where the brokerage option symbol is not recognized, the field will be set to `null`.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the option symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | 
**Ticker** | **string** | The [OCC symbol](https://en.wikipedia.org/wiki/Option_symbol) for the option. | 
**OptionType** | **string** | The type of option. Either \&quot;CALL\&quot; or \&quot;PUT\&quot;. | 
**StrikePrice** | **double** | The option strike price. | 
**ExpirationDate** | **DateTime** | The option expiration date. | 
**IsMiniOption** | **bool** | Whether the option is a mini option. Mini options have 10 underlying shares per contract instead of the standard 100. | [optional] 
**UnderlyingSymbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

