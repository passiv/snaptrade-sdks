

# SimpleTradeInstrument


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**symbol** | **String** | Equity ticker, OCC equity-option symbol, or brokerage-native futures symbol. Tastytrade future tickers begin with &#x60;/&#x60; and future-option tickers begin with &#x60;./&#x60;; preserve their spaces and punctuation. Webull US futures require a specific unprefixed contract symbol such as ESZ6, without whitespace; slash aliases and continuous/root-only symbols are not accepted. Universal symbol IDs are not accepted. |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| EQUITY | &quot;equity&quot; |
| OPTION | &quot;option&quot; |
| FUTURE | &quot;future&quot; |
| FUTURE_OPTION | &quot;future_option&quot; |



