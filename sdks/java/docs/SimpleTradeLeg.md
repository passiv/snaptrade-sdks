

# SimpleTradeLeg


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**instrument** | [**SimpleTradeInstrument**](SimpleTradeInstrument.md) |  |  |
|**action** | [**ActionEnum**](#ActionEnum) | Equities and futures require buy or sell. Equity options and future options require buy_to_open, buy_to_close, sell_to_open, or sell_to_close. |  |
|**units** | [**BigDecimal**](BigDecimal.md) | Positive shares or contracts for this leg. Required unless the order is a single-equity market order using notional_value, in which case omit or set to null. Fractional units are supported only for single-equity orders on eligible brokerages; all other legs require whole units. Quantities are absolute units per leg, not strategy ratios. |  [optional] |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| BUY | &quot;buy&quot; |
| SELL | &quot;sell&quot; |
| BUY_TO_OPEN | &quot;buy_to_open&quot; |
| BUY_TO_CLOSE | &quot;buy_to_close&quot; |
| SELL_TO_OPEN | &quot;sell_to_open&quot; |
| SELL_TO_CLOSE | &quot;sell_to_close&quot; |



