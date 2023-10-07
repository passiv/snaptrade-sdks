# SnapTrade::UniversalSymbolTicker

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **raw_symbol** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **currency** | **Currency** |  | [optional] |
| **exchange** | **Exchange** |  | [optional] |
| **type** | **SecurityType** |  | [optional] |
| **currencies** | [**Array&lt;Currency&gt;**](Currency.md) |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::UniversalSymbolTicker.new(
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

