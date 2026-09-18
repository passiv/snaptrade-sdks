# SnapTrade.Net.Model.TokenizedAssetInstrument
Canonical tokenized asset wrapper for a V2 position. Symbol and description duplicate the listed underlying's display metadata for convenience; they are not token-specific identifiers or labels. Currency and exchange metadata are provided only in underlying_instrument. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the canonical tokenized asset wrapper. | 
**Symbol** | **string** | Display symbol of the underlying stock or ETF, not a token-specific ticker. | 
**Description** | **string** | Display name of the underlying stock or ETF, when available. | [optional] 
**UnderlyingInstrument** | [**UnderlyingTokenizedAssetInstrument**](UnderlyingTokenizedAssetInstrument.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

