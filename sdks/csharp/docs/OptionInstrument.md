# SnapTrade.Net.Model.OptionInstrument
Option instrument metadata for a V2 position.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the option instrument. | 
**Symbol** | **string** | OCC symbol for the option contract. | 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **decimal** | Strike price for the option contract. | 
**ExpirationDate** | **DateTime** | Expiration date of the option contract. | 
**Multiplier** | **decimal** | Number of underlying shares per contract. Standard options are 100, mini options are 10. | 
**Description** | **string** | Human-readable description of the option contract. | [optional] 
**Underlying** | [**UnderlyingOptionInstrument**](UnderlyingOptionInstrument.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

