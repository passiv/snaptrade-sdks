# SnapTrade::ManualTradeBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | **Account** |  | [optional] |
| **currency** | **Currency** |  | [optional] |
| **cash** | **Float** | Cash | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::ManualTradeBalance.new(
  account: null,
  currency: null,
  cash: 1.11
)
```

