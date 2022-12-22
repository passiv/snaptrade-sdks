

# AccountOrderRecord

Record of order in brokerageaccount

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageOrderId** | **String** | Order id returned by brokerage |  [optional] |
|**status** | **AccountOrderRecordStatus** |  |  [optional] |
|**symbol** | **UUID** |  |  [optional] |
|**universalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  |  [optional] |
|**action** | **Action** |  |  [optional] |
|**totalQuantity** | **BigDecimal** | Trade Units |  [optional] |
|**openQuantity** | **BigDecimal** | Trade Units |  [optional] |
|**canceledQuantity** | **BigDecimal** | Trade Units |  [optional] |
|**filledQuantity** | **BigDecimal** | Trade Units |  [optional] |
|**executionPrice** | **BigDecimal** | Trade Price if limit or stop limit order |  [optional] |
|**limitPrice** | **BigDecimal** | Trade Price if limit or stop limit order |  [optional] |
|**stopPrice** | **BigDecimal** | Trade Price if limit or stop limit order |  [optional] |
|**orderType** | **OrderType** |  |  [optional] |
|**timeInForce** | **TimeInForce** |  |  [optional] |
|**timePlaced** | **String** | Time |  [optional] |
|**timeUpdated** | **String** | Time |  [optional] |
|**expiryDate** | **String** | Time |  [optional] |



