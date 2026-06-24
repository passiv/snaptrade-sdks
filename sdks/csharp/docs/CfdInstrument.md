# SnapTrade.Net.Model.CfdInstrument
Canonical CFD wrapper instrument metadata for a V2 position.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the canonical CFD instrument wrapper. | 
**Symbol** | **string** | Formatted symbol of the instrument underlying the CFD wrapper. | 
**RawSymbol** | **string** | Raw symbol of the instrument underlying the CFD wrapper. | 
**Description** | **string** | Human-readable description of the instrument underlying the CFD wrapper. | [optional] 
**Currency** | **string** | ISO-4217 currency code for the instrument underlying the CFD wrapper. | [optional] 
**Exchange** | **string** | Exchange MIC code or exchange code for the instrument underlying the CFD wrapper. | [optional] 
**UnderlyingInstrument** | [**UnderlyingCfdInstrument**](UnderlyingCfdInstrument.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

