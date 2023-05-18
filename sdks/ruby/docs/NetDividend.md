# SnapTrade::NetDividend

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] |
| **amount** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'snap_trade'

instance = SnapTrade::NetDividend.new(
  symbol: null,
  amount: 165.05,
  currency: USD
)
```

