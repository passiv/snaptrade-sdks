# SnapTrade.Net.Model.Instrument
Instrument metadata for a V2 position. Use `kind` to determine which schema is present.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Id** | **string** | Unique identifier for the option instrument. | 
**Symbol** | **string** | OCC symbol for the option contract. | 
**RawSymbol** | **string** | The raw symbol without any exchange suffix. | 
**Description** | **string** | Human-readable description of the option contract. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the contract. | [optional] 
**Exchange** | **string** | Exchange MIC code or exchange code for the contract. | [optional] 
**FigiInstrument** | [**FigiInstrumentNullable**](FigiInstrumentNullable.md) |  | [optional] 
**RootSymbol** | **string** | Root symbol for the future contract. | 
**ExpirationCode** | **string** | Exchange expiration code for the contract. | 
**ExpirationDate** | **DateTime** | Expiration date of the option contract. | 
**Multiplier** | **decimal?** | Multiplier for the future contract. | [optional] 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **decimal** | Strike price for the option contract. | 
**Underlying** | [**UnderlyingOptionInstrument**](UnderlyingOptionInstrument.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

