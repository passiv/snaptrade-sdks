# SnapTrade::AccountHoldings

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **SnapTradeHoldingsAccount** |  | [optional] |
| **balances** | [**Array&lt;Balance&gt;**](Balance.md) |  | [optional] |
| **positions** | [**Array&lt;Position&gt;**](Position.md) |  | [optional] |
| **total_value** | **SnapTradeHoldingsTotalValue** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::AccountHoldings.new(
  account: null,
  balances: null,
  positions: null,
  total_value: null
)
```

