

# OptionInstrument

Option instrument metadata for a V2 position.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the option instrument. |  |
|**symbol** | **String** | OCC symbol for the option contract. |  |
|**optionType** | [**OptionTypeEnum**](#OptionTypeEnum) | Whether the contract is a call or put. |  |
|**strikePrice** | **BigDecimal** | Strike price for the option contract. |  |
|**expirationDate** | **LocalDate** | Expiration date of the option contract. |  |
|**description** | **String** | Human-readable description of the option contract. |  [optional] |
|**underlying** | **Object** |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| OPTION | &quot;option&quot; |



## Enum: OptionTypeEnum

| Name | Value |
|---- | -----|
| CALL | &quot;CALL&quot; |
| PUT | &quot;PUT&quot; |



