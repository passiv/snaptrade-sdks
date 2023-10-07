# SnapTrade::ManualTradeAndImpact

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **trade** | **ManualTrade** |  | [optional] |
| **trade_impacts** | [**Array&lt;ManualTrade&gt;**](ManualTrade.md) |  | [optional] |
| **combined_remaining_balance** | **ManualTradeBalance** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::ManualTradeAndImpact.new(
  trade: null,
  trade_impacts: null,
  combined_remaining_balance: null
)
```

