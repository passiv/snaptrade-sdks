# SnapTrade::OptionsPlaceOptionStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **order_type** | **String** |  |  |
| **time_in_force** | **String** |  |  |
| **price** | **Float** | Trade Price if limit or stop limit order |  |

## Example

```ruby
require 'snap_trade'

instance = SnapTrade::OptionsPlaceOptionStrategyRequest.new(
  order_type: null,
  time_in_force: null,
  price: 31.33
)
```

