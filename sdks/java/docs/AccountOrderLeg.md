

# AccountOrderLeg

One leg of an order.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**legId** | **String** | Brokerage identifier for this leg, when the brokerage assigns one. |  [optional] |
|**instrument** | **Object** |  |  |
|**action** | **String** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  |  |
|**totalQuantity** | **BigDecimal** | Total number of shares or contracts for this leg. Can be a decimal for fractional orders. |  [optional] |
|**filledQuantity** | **BigDecimal** | Number of shares or contracts filled for this leg. |  [optional] |
|**canceledQuantity** | **BigDecimal** | Number of shares or contracts canceled for this leg. |  [optional] |
|**executionPrice** | **BigDecimal** | Average execution price for this leg, when available. |  [optional] |
|**status** | **AccountOrderRecordStatusV2Nullable** |  |  [optional] |



