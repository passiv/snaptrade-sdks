

# AccountOrderRecord

Describes a single recent order in an account. Each record here represents a single order leg. For multi-leg orders, there will be multiple records.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageOrderId** | **String** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. |  [optional] |
|**status** | **AccountOrderRecordStatus** |  |  [optional] |
|**universalSymbol** | [**AccountOrderRecordUniversalSymbol**](AccountOrderRecordUniversalSymbol.md) |  |  [optional] |
|**optionSymbol** | [**AccountOrderRecordOptionSymbol**](AccountOrderRecordOptionSymbol.md) |  |  [optional] |
|**quoteUniversalSymbol** | [**AccountOrderRecordQuoteUniversalSymbol**](AccountOrderRecordQuoteUniversalSymbol.md) |  |  [optional] |
|**quoteCurrency** | [**AccountOrderRecordQuoteCurrency**](AccountOrderRecordQuoteCurrency.md) |  |  [optional] |
|**action** | **String** | The action describes the intent or side of a trade. This is usually &#x60;BUY&#x60; or &#x60;SELL&#x60; but can include other potential values like the following depending on the specific brokerage.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_OPEN   - BUY_CLOSE   - SELL_OPEN   - SELL_CLOSE  |  [optional] |
|**totalQuantity** | **Double** | The total number of shares or contracts of the order. This should be the sum of the filled, canceled, and open quantities. Can be a decimal number for fractional shares. |  [optional] |
|**openQuantity** | **Double** | The number of shares or contracts that are still open (waiting for execution). Can be a decimal number for fractional shares. |  [optional] |
|**canceledQuantity** | **Double** | The number of shares or contracts that have been canceled. Can be a decimal number for fractional shares. |  [optional] |
|**filledQuantity** | **Double** | The number of shares or contracts that have been filled. Can be a decimal number for fractional shares. |  [optional] |
|**executionPrice** | **Double** | The price at which the order was executed. |  [optional] |
|**limitPrice** | **Double** | The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**stopPrice** | **Double** | The stop price is the price at which a stop order is triggered. Should only apply to &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**orderType** | **String** | The type of order placed. The most common values are &#x60;Market&#x60;, &#x60;Limit&#x60;, &#x60;Stop&#x60;, and &#x60;StopLimit&#x60;. We try our best to map brokerage order types to these values. When mapping fails, we will return the brokerage&#39;s order type value. |  [optional] |
|**timeInForce** | **String** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage&#39;s time in force value.   - &#x60;Day&#x60; - Day. The order is valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.   - &#x60;MOO&#x60; - Market On Open. The order is to be executed at the day&#39;s opening price.   - &#x60;EHP&#x60; - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close.  |  [optional] |
|**timePlaced** | **OffsetDateTime** | The time the order was placed. This is the time the order was submitted to the brokerage. |  [optional] |
|**timeUpdated** | **OffsetDateTime** | The time the order was last updated in the brokerage system. This value is not always available from the brokerage. |  [optional] |
|**timeExecuted** | **OffsetDateTime** | The time the order was executed in the brokerage system. This value is not always available from the brokerage. |  [optional] |
|**expiryDate** | **OffsetDateTime** | The time the order expires. This value is not always available from the brokerage. |  [optional] |
|**symbol** | **UUID** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. |  [optional] |
|**childBrokerageOrderIds** | [**ChildBrokerageOrderIDsNullable**](ChildBrokerageOrderIDsNullable.md) |  |  [optional] |



