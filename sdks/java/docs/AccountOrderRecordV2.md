

# AccountOrderRecordV2

Describes a single order in the standardized V2 format.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageOrderId** | **String** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. |  [optional] |
|**status** | **AccountOrderRecordStatus** |  |  [optional] |
|**orderType** | **String** | The type of order placed.   - &#x60;MARKET&#x60;   - &#x60;LIMIT&#x60;   - &#x60;STOP&#x60;   - &#x60;STOP_LIMIT&#x60;  |  [optional] |
|**timeInForce** | **String** | The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage&#39;s time in force value.   - &#x60;DAY&#x60; - Day. The order is valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled. The order is valid until it is executed or canceled.   - &#x60;FOK&#x60; - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - &#x60;IOC&#x60; - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - &#x60;GTD&#x60; - Good Til Date. The order is valid until the specified date.   - &#x60;MOO&#x60; - Market On Open. The order is to be executed at the day&#39;s opening price.   - &#x60;EHP&#x60; - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close.  |  [optional] |
|**timePlaced** | **OffsetDateTime** | The time the order was placed. This is the time the order was submitted to the brokerage. |  [optional] |
|**timeExecuted** | **OffsetDateTime** | The time the order was executed in the brokerage system. This value is not always available from the brokerage. |  [optional] |
|**quoteCurrency** | **String** | Quote currency code for the order. |  [optional] |
|**executionPrice** | **Double** | The price at which the order was executed. |  [optional] |
|**limitPrice** | **Double** | The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**stopPrice** | **Double** | The stop price is the price at which a stop order is triggered. Should only apply to &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. |  [optional] |
|**legs** | [**List&lt;AccountOrderRecordLeg&gt;**](AccountOrderRecordLeg.md) | List of legs that make up the order. |  [optional] |



