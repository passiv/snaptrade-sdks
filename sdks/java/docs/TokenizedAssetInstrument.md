

# TokenizedAssetInstrument

Canonical tokenized asset wrapper for a V2 position. Symbol and description duplicate the listed underlying's display metadata for convenience; they are not token-specific identifiers or labels. Currency and exchange metadata are provided only in underlying_instrument. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the canonical tokenized asset wrapper. |  |
|**symbol** | **String** | Display symbol of the underlying stock or ETF, not a token-specific ticker. |  |
|**description** | **String** | Display name of the underlying stock or ETF, when available. |  [optional] |
|**underlyingInstrument** | **Object** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| TOKENIZED_ASSET | &quot;tokenized_asset&quot; |



