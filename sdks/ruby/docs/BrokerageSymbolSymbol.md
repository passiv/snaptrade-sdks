# SnapTrade::BrokerageSymbolSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **raw_symbol** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **exchange** | [**Exchange**](Exchange.md) |  | [optional] |
| **type** | [**SecurityType**](SecurityType.md) |  | [optional] |
| **currencies** | [**Array&lt;Currency&gt;**](Currency.md) |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::BrokerageSymbolSymbol.new(
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

