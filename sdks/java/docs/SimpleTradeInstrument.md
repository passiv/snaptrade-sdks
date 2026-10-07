

# SimpleTradeInstrument


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**symbol** | **String** | Equity ticker, OCC equity-option symbol, or exact tastytrade BrokerageInstrument ticker for a future or future option. Future tickers begin with &#x60;/&#x60;; future-option tickers begin with &#x60;./&#x60;. Preserve spaces and punctuation. Universal symbol IDs are not accepted. |  |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| EQUITY | &quot;equity&quot; |
| OPTION | &quot;option&quot; |
| FUTURE | &quot;future&quot; |
| FUTURE_OPTION | &quot;future_option&quot; |



