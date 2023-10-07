# SnapTrade::UniversalSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  |  |
| **symbol** | **String** |  |  |
| **raw_symbol** | **String** |  |  |
| **description** | **String** |  | [optional] |
| **currency** | **Currency** |  |  |
| **exchange** | **Exchange** |  | [optional] |
| **type** | **SecurityType** |  |  |
| **currencies** | [**Array&lt;Currency&gt;**](Currency.md) |  |  |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::UniversalSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  symbol: VAB.TO,
  raw_symbol: VAB,
  description: VANGUARD CDN AGGREGATE BOND INDEX ETF,
  currency: null,
  exchange: null,
  type: null,
  currencies: null
)
```

