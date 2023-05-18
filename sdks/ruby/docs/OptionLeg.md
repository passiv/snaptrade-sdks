# SnapTrade::OptionLeg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **option_symbol_id** | **String** | Obtained from calling options chain endpoint (option_id) | [optional] |
| **quantity** | **Float** |  | [optional] |

## Example

```ruby
require 'snap_trade'

instance = SnapTrade::OptionLeg.new(
  action: null,
  option_symbol_id: SPY220819P00200000,
  quantity: 1
)
```

