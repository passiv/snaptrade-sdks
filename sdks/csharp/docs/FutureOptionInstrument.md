# SnapTrade.Net.Model.FutureOptionInstrument
Future option (option on a futures contract) instrument metadata for a V2 position.  **Beta:** currently returned only for tastytrade and Interactive Brokers connections, and only for partners it has been enabled for. This schema may change. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the future option instrument. | 
**Symbol** | **string** | Display symbol for the future option contract. | 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **decimal** | Strike price for the option contract. | 
**ExpirationDate** | **DateTime** | Expiration date of the option contract. | 
**Multiplier** | **decimal?** | Notional multiplier for the option contract. | [optional] 
**Description** | **string** | Human-readable description of the option contract. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the contract. | [optional] 
**Exchange** | **string** | Exchange MIC code or exchange code for the contract. | [optional] 
**Underlying** | [**FutureInstrument**](FutureInstrument.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

