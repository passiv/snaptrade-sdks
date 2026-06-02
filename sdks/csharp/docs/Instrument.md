# SnapTrade.Net.Model.Instrument
Instrument metadata for a V2 position. Use `kind` to determine which schema is present.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the instrument. | 
**Symbol** | **string** | The formatted trading symbol for the security. | 
**RawSymbol** | **string** | The raw symbol without any exchange suffix. | 
**Description** | **string** | Human-readable description of the security. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the security listing. | [optional] 
**Exchange** | **string** | Exchange MIC code or exchange code for the security. | [optional] 
**FigiInstrument** | [**FigiInstrumentNullable**](FigiInstrumentNullable.md) |  | [optional] 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **decimal** | Strike price for the option contract. | 
**ExpirationDate** | **DateTime?** | Expiration date of the contract. | 
**Underlying** | [**UnderlyingOptionInstrument**](UnderlyingOptionInstrument.md) |  | 
**RootSymbol** | **string** | Root symbol for the future contract. | 
**ExpirationCode** | **string** | Exchange expiration code for the contract. | 
**Multiplier** | **decimal?** | Multiplier for the future contract. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

