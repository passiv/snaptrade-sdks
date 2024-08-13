

# AccountOrderRecord

Describes a single recent order in an account.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageOrderId** | **String** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. |  [optional] |
|**status** | **AccountOrderRecordStatus** |  |  [optional] |
|**symbol** | **UUID** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. |  [optional] |
|**universalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  |  [optional] |
|**optionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  |  [optional] |
|**action** | **String** | Trade Action potential values include (but are not limited to) - BUY - SELL - BUY_COVER - SELL_SHORT - BUY_OPEN - BUY_CLOSE - SELL_OPEN - SELL_CLOSE |  [optional] |
|**totalQuantity** | **Double** | Trade Units. Cannot work with notional value. |  [optional] |
|**openQuantity** | **Double** | Trade Units |  [optional] |
|**canceledQuantity** | **Double** | Trade Units |  [optional] |
|**filledQuantity** | **Double** | Trade Units |  [optional] |
|**executionPrice** | **Double** | Trade Price if limit or stop limit order |  [optional] |
|**limitPrice** | **Double** | Trade Price if limit or stop limit order |  [optional] |
|**stopPrice** | **Double** | Stop Price. If stop loss or stop limit order, the price to trigger the stop |  [optional] |
|**orderType** | **String** | Order Type potential values include (but are not limited to) - Limit - Market - StopLimit - StopLoss |  [optional] |
|**timeInForce** | **String** | Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date  |  [optional] |
|**timePlaced** | **String** | Time |  [optional] |
|**timeUpdated** | **String** | Time |  [optional] |
|**timeExecuted** | **String** | Time |  [optional] |
|**expiryDate** | **String** | Time |  [optional] |



