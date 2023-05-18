# SnapTrade::StrategyOrderPlace

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_id** | **Integer** |  | [optional] |
| **orders** | [**Array&lt;StrategyOrderPlaceOrdersInner&gt;**](StrategyOrderPlaceOrdersInner.md) |  | [optional] |

## Example

```ruby
require 'snap_trade'

instance = SnapTrade::StrategyOrderPlace.new(
  order_id: 1069605761,
  orders: null
)
```

