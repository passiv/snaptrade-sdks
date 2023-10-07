# SnapTrade::UnderlyingSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **currency** | **Currency** |  | [optional] |
| **exchange** | **USExchange** |  | [optional] |
| **type** | **SecurityType** |  | [optional] |
| **currencies** | [**Array&lt;Currency&gt;**](Currency.md) |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::UnderlyingSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  symbol: SPY,
  description: SPDR S&amp;P 500 ETF Trust,
  currency: null,
  exchange: null,
  type: null,
  currencies: null
)
```

