# SnapTrade::BrokerageSymbolOptionSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **ticker** | **String** |  | [optional] |
| **strike_price** | **Float** |  | [optional] |
| **expiration_date** | **String** |  | [optional] |
| **is_mini_option** | **Boolean** |  | [optional] |
| **underlying_symbol** | [**UnderlyingSymbol**](UnderlyingSymbol.md) |  | [optional] |
| **local_id** | **String** |  | [optional] |
| **exchange_id** | **String** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::BrokerageSymbolOptionSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  ticker: SPY 220819P00200000,
  strike_price: 200,
  expiration_date: 2017-07-17T15:13:07.177712+00:00,
  is_mini_option: false,
  underlying_symbol: null,
  local_id: 40817960,
  exchange_id: null
)
```

