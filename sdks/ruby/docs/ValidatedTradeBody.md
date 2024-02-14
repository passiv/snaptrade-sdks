# SnapTrade::ValidatedTradeBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **wait_to_confirm** | **Boolean** | Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status PENDING as we will not wait to check on the status before responding to the request | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::ValidatedTradeBody.new(
  wait_to_confirm: true
)
```

