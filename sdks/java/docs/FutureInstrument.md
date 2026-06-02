

# FutureInstrument

Future instrument metadata for a V2 position.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the future instrument. |  |
|**symbol** | **String** | Display symbol for the future contract. |  |
|**rootSymbol** | **String** | Root symbol for the future contract. |  |
|**expirationCode** | **String** | Exchange expiration code for the contract. |  |
|**expirationDate** | **LocalDate** | Expiration date of the contract. |  [optional] |
|**multiplier** | **BigDecimal** | Multiplier for the future contract. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the contract. |  [optional] |
|**exchange** | **String** | Exchange MIC code or exchange code for the contract. |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| FUTURE | &quot;future&quot; |



