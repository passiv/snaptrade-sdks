# SnapTrade::Balance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **cash** | **Float** |  | [optional] |
| **buying_power** | **Float** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::Balance.new(
  currency: null,
  cash: 300.71,
  buying_power: 410.71
)
```

