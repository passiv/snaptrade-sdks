

# OtherInstrument

Security instrument metadata for other mapped security positions.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the instrument. |  |
|**symbol** | **String** | The formatted trading symbol for the security. |  |
|**rawSymbol** | **String** | The raw symbol without any exchange suffix. |  |
|**description** | **String** | Human-readable description of the security. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the security listing. |  [optional] |
|**exchange** | **String** | Exchange MIC code or exchange code for the security. |  [optional] |
|**figiInstrument** | [**FigiInstrumentNullable**](FigiInstrumentNullable.md) |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| OTHER | &quot;other&quot; |



