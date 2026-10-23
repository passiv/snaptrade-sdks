

# AccountOrder

A single order. Single-leg orders have exactly one entry in `legs`; multi-leg orders (spreads, strangles, covered calls) have one entry per leg.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageOrderId** | **String** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. |  |
|**status** | **AccountOrderRecordStatusV2** |  |  |
|**orderType** | **Object** |  |  |
|**timeInForce** | [**TimeInForceEnum**](#TimeInForceEnum) | How long the order remains active. Brokerage values that cannot be mapped to this list are returned as &#x60;OTHER&#x60;.   - &#x60;DAY&#x60; - valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled.   - &#x60;FOK&#x60; - Fill Or Kill.   - &#x60;IOC&#x60; - Immediate Or Cancel.   - &#x60;GTD&#x60; - Good Til Date; see &#x60;expiry_date&#x60;.   - &#x60;MOO&#x60; - Market On Open.   - &#x60;EHP&#x60; - Extended Hours P.M.   - &#x60;EHA&#x60; - Extended Hours A.M.   - &#x60;OTHER&#x60; - the brokerage reported a value outside this list.  |  |
|**expiryDate** | **OffsetDateTime** | When the order expires, for orders with a &#x60;time_in_force&#x60; of &#x60;GTD&#x60;. |  [optional] |
|**priceCurrency** | **String** | ISO-4217 currency code the order prices are denominated in. For crypto pairs this is the quote asset (for example &#x60;USDC&#x60; for &#x60;ETH-USDC&#x60;). |  [optional] |
|**priceEffect** | [**PriceEffectEnum**](#PriceEffectEnum) | Direction of the net order price. CREDIT means cash is received, DEBIT means cash is paid, EVEN means the net price is zero, and UNKNOWN means the direction could not be determined. |  |
|**totalQuantity** | **BigDecimal** | Total quantity requested. For multi-leg orders this is the number of spreads, not the sum of leg quantities. |  [optional] |
|**filledQuantity** | **BigDecimal** | Quantity filled so far. |  [optional] |
|**canceledQuantity** | **BigDecimal** | Quantity canceled. |  [optional] |
|**openQuantity** | **BigDecimal** | Quantity still open (not yet filled or canceled). |  [optional] |
|**executionPrice** | **BigDecimal** | Average execution price. Per unit for single-leg orders; net price per spread for multi-leg orders. |  [optional] |
|**timePlaced** | **OffsetDateTime** | The time the order was submitted to the brokerage, when the brokerage reports it. |  [optional] |
|**timeUpdated** | **OffsetDateTime** | The time the order was last updated at the brokerage, when available. |  [optional] |
|**timeExecuted** | **OffsetDateTime** | The time the order was executed, when available. |  [optional] |
|**group** | [**AccountOrderGroupNullable**](AccountOrderGroupNullable.md) |  |  [optional] |
|**legs** | [**List&lt;AccountOrderLeg&gt;**](AccountOrderLeg.md) | The legs that make up the order. Always has at least one entry. |  |



## Enum: TimeInForceEnum

| Name | Value |
|---- | -----|
| DAY | &quot;DAY&quot; |
| GTC | &quot;GTC&quot; |
| FOK | &quot;FOK&quot; |
| IOC | &quot;IOC&quot; |
| GTD | &quot;GTD&quot; |
| MOO | &quot;MOO&quot; |
| EHP | &quot;EHP&quot; |
| EHA | &quot;EHA&quot; |
| OTHER | &quot;OTHER&quot; |



## Enum: PriceEffectEnum

| Name | Value |
|---- | -----|
| CREDIT | &quot;CREDIT&quot; |
| DEBIT | &quot;DEBIT&quot; |
| EVEN | &quot;EVEN&quot; |
| UNKNOWN | &quot;UNKNOWN&quot; |



