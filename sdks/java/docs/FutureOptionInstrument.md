

# FutureOptionInstrument

Future option (option on a futures contract) instrument metadata for a V2 position.  **Beta:** currently returned only for tastytrade and Interactive Brokers connections, and only for partners it has been enabled for. This schema may change. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) | Type of security instrument. |  |
|**id** | **UUID** | Unique identifier for the future option instrument. |  |
|**symbol** | **String** | Display symbol for the future option contract. |  |
|**optionType** | [**OptionTypeEnum**](#OptionTypeEnum) | Whether the contract is a call or put. |  |
|**strikePrice** | **BigDecimal** | Strike price for the option contract. |  |
|**expirationDate** | **LocalDate** | Expiration date of the option contract. |  |
|**multiplier** | **BigDecimal** | Notional multiplier for the option contract. |  [optional] |
|**description** | **String** | Human-readable description of the option contract. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the contract. |  [optional] |
|**exchange** | **String** | Exchange MIC code or exchange code for the contract. |  [optional] |
|**underlying** | [**FutureInstrument**](FutureInstrument.md) |  |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| FUTURE_OPTION | &quot;future_option&quot; |



## Enum: OptionTypeEnum

| Name | Value |
|---- | -----|
| CALL | &quot;CALL&quot; |
| PUT | &quot;PUT&quot; |



