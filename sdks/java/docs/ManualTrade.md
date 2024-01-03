

# ManualTrade

A manual trade object

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** |  |  [optional] |
|**account** | **String** |  |  [optional] |
|**orderType** | **OrderType** |  |  [optional] |
|**timeInForce** | **TimeInForce** |  |  [optional] |
|**symbol** | [**ManualTradeSymbol**](ManualTradeSymbol.md) |  |  [optional] |
|**action** | **Action** |  |  [optional] |
|**units** | **Double** | Trade Units. Cannot work with notional value. |  [optional] |
|**price** | **Double** | Trade Price if limit or stop limit order |  [optional] |



