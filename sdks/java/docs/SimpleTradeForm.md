

# SimpleTradeForm


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderType** | [**OrderTypeEnum**](#OrderTypeEnum) |  |  |
|**timeInForce** | [**TimeInForceEnum**](#TimeInForceEnum) | Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint. |  |
|**legs** | [**List&lt;SimpleTradeLeg&gt;**](SimpleTradeLeg.md) | Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply. |  |
|**limitPrice** | [**BigDecimal**](BigDecimal.md) | Required for limit and stop_limit orders, except that multi-leg price_effect even implies zero. Must be omitted or null for market and stop orders. For multi-leg orders this is the net strategy price. Negative prices are accepted only for futures-family orders, subject to brokerage support. |  [optional] |
|**stopPrice** | [**BigDecimal**](BigDecimal.md) | Required for stop and stop_limit orders. Must be omitted or null for market and limit orders. Must be positive for equity/option orders; futures-family trigger prices are subject to brokerage support. |  [optional] |
|**priceEffect** | [**PriceEffectEnum**](#PriceEffectEnum) | Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action. |  [optional] |
|**clientOrderId** | [**UUID**](UUID.md) | Optional canonical UUID, forwarded where the existing execution path supports it and for tastytrade futures orders. Requires the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies; SnapTrade does not enforce uniqueness. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions. |  [optional] |
|**expiryDate** | **OffsetDateTime** | ISO 8601 expiry timestamp, required for gtd and invalid with other durations. A missing timezone is treated as UTC. Supported only through existing single-leg Public and Sandbox execution paths. |  [optional] |
|**notionalValue** | [**BigDecimal**](BigDecimal.md) | Positive order value, supported only for a single-equity market order on eligible brokerages and partners. Mutually exclusive with leg units. Omit or set units to null when supplied. |  [optional] |
|**tradingSession** | [**TradingSessionEnum**](#TradingSessionEnum) | extended uses existing single-leg equity/option brokerage support and requires extended-hours enablement. Futures and multi-leg orders only accept regular. |  [optional] |



## Enum: OrderTypeEnum

| Name | Value |
|---- | -----|
| LIMIT | &quot;limit&quot; |
| MARKET | &quot;market&quot; |
| STOP | &quot;stop&quot; |
| STOP_LIMIT | &quot;stop_limit&quot; |



## Enum: TimeInForceEnum

| Name | Value |
|---- | -----|
| DAY | &quot;day&quot; |
| GTC | &quot;gtc&quot; |
| GTD | &quot;gtd&quot; |
| FOK | &quot;fok&quot; |
| IOC | &quot;ioc&quot; |



## Enum: PriceEffectEnum

| Name | Value |
|---- | -----|
| CREDIT | &quot;credit&quot; |
| DEBIT | &quot;debit&quot; |
| EVEN | &quot;even&quot; |



## Enum: TradingSessionEnum

| Name | Value |
|---- | -----|
| REGULAR | &quot;regular&quot; |
| EXTENDED | &quot;extended&quot; |



