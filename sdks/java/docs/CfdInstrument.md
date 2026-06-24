

# CfdInstrument

Canonical CFD wrapper instrument metadata for a V2 position.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the canonical CFD instrument wrapper. |  |
|**symbol** | **String** | Formatted symbol of the instrument underlying the CFD wrapper. |  |
|**rawSymbol** | **String** | Raw symbol of the instrument underlying the CFD wrapper. |  |
|**description** | **String** | Human-readable description of the instrument underlying the CFD wrapper. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the instrument underlying the CFD wrapper. |  [optional] |
|**exchange** | **String** | Exchange MIC code or exchange code for the instrument underlying the CFD wrapper. |  [optional] |
|**underlyingInstrument** | **Object** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| CFD | &quot;cfd&quot; |



