

# OptionsSymbol

Uniquely describes an option security + exchange combination across all brokerages.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the option symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. |  |
|**ticker** | **String** | The [OCC symbol](https://en.wikipedia.org/wiki/Option_symbol) for the option. |  |
|**optionType** | [**OptionTypeEnum**](#OptionTypeEnum) | The type of option. Either \&quot;CALL\&quot; or \&quot;PUT\&quot;. |  |
|**strikePrice** | **Double** | The option strike price. |  |
|**expirationDate** | **LocalDate** | The option expiration date. |  |
|**isMiniOption** | **Boolean** | Whether the option is a mini option. Mini options have 10 underlying shares per contract instead of the standard 100. |  [optional] |
|**underlyingSymbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  |  |



## Enum: OptionTypeEnum

| Name | Value |
|---- | -----|
| CALL | &quot;CALL&quot; |
| PUT | &quot;PUT&quot; |



