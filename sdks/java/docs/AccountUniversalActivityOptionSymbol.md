

# AccountUniversalActivityOptionSymbol

The option security for the transaction. The field is `null` if the transaction is not related to an option security (like a deposit, withdrawal, fee, etc). SnapTrade does a best effort to map the brokerage's option symbol. In cases where the brokerage option symbol is not recognized, the field will be set to `null`.

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



