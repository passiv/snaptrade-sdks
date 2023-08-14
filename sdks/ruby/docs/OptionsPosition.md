# SnapTrade::OptionsPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] |
| **price** | **Float** | Trade Price if limit or stop limit order | [optional] |
| **units** | **Float** |  | [optional] |
| **currency** | [**OptionsPositionCurrency**](OptionsPositionCurrency.md) |  | [optional] |
| **average_purchase_price** | **Float** | Average purchase price for this position | [optional] |
| **open_pnl** | **Float** |  | [optional] |
| **fractional_units** | **Float** | Deprecated, use the units field for both fractional and integer units going forward | [optional] |
| **book_price** | **Float** | The book price of the asset | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::OptionsPosition.new(
  symbol: null,
  price: 31.33,
  units: 10,
  currency: null,
  average_purchase_price: 108.3353,
  open_pnl: 0.44,
  fractional_units: 1.44,
  book_price: 5
)
```

