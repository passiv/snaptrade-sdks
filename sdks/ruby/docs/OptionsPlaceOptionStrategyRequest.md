# SnapTrade::OptionsPlaceOptionStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_type** | [**OrderStrategyExecuteBodyOrderType**](OrderStrategyExecuteBodyOrderType.md) |  |  |
| **time_in_force** | [**OrderStrategyExecuteBodyTimeInForce**](OrderStrategyExecuteBodyTimeInForce.md) |  |  |
| **price** | **Float** | Trade Price if limit or stop limit order |  |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::OptionsPlaceOptionStrategyRequest.new(
  order_type: null,
  time_in_force: null,
  price: 31.33
)
```

