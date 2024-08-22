

# ManualTrade

Contains the details of a submitted order.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the submitted order through SnapTrade. |  [optional] |
|**account** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  [optional] |
|**orderType** | **OrderTypeStrict** |  |  [optional] |
|**timeInForce** | **TimeInForceStrict** |  |  [optional] |
|**symbol** | [**ManualTradeSymbol**](ManualTradeSymbol.md) |  |  [optional] |
|**action** | **ActionStrict** |  |  [optional] |
|**units** | **Double** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. |  [optional] |
|**price** | **Double** | Trade Price if limit or stop limit order |  [optional] |



