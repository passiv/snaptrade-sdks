

# TradingInstrument


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The instrument&#39;s trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example &#x60;AAPL  131124C00240000&#x60; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format) |  |
|**type** | [**TypeEnum**](#TypeEnum) | The instrument&#39;s type |  |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| EQUITY | &quot;EQUITY&quot; |
| OPTION | &quot;OPTION&quot; |
| CRYPTOCURRENCY | &quot;CRYPTOCURRENCY&quot; |
| CRYPTOCURRENCY_PAIR | &quot;CRYPTOCURRENCY_PAIR&quot; |



