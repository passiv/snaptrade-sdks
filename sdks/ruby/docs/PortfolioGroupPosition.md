# SnapTrade::PortfolioGroupPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | **UniversalSymbol** |  | [optional] |
| **price** | **Float** | Last known market price for the symbol | [optional] |
| **units** | **Integer** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::PortfolioGroupPosition.new(
  symbol: null,
  price: 24.81,
  units: 15
)
```

