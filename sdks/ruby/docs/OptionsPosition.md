# SnapTrade::OptionsPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **option_symbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] |
| **price** | **Float** | Trade Price if limit or stop limit order | [optional] |
| **units** | **Float** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **average_purchase_price** | **Float** | Average purchase price for this position | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::OptionsPosition.new(
  symbol: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  description: SPY PUT Aug 2022,
  option_symbol: null,
  price: 31.33,
  units: 10,
  currency: null,
  average_purchase_price: 108.3353
)
```

