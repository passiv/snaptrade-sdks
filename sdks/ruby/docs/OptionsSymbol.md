# SnapTrade::OptionsSymbol

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
| **security_type** | **Object** |  | [optional] |
| **listing_exchange** | **Object** |  | [optional] |
| **is_quotable** | **Boolean** |  | [optional] |
| **is_tradable** | **Boolean** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::OptionsSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  ticker: SPY 220819P00200000,
  strike_price: 200,
  expiration_date: 2022-08-19T00:00:00.000Z,
  is_mini_option: false,
  underlying_symbol: null,
  local_id: 40817960,
  security_type: {},
  listing_exchange: {},
  is_quotable: true,
  is_tradable: true
)
```

