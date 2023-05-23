# SnapTrade::SnapTradeLoginUserRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **broker** | **String** |  | [optional] |
| **immediate_redirect** | **Boolean** |  | [optional] |
| **custom_redirect** | **String** |  | [optional] |
| **reconnect** | **String** |  | [optional] |
| **connection_type** | [**ConnectionType**](ConnectionType.md) |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::SnapTradeLoginUserRequestBody.new(
  broker: ALPACA,
  immediate_redirect: true,
  custom_redirect: https://passiv.com,
  reconnect: 8b5f262d-4bb9-365d-888a-202bd3b15fa1,
  connection_type: null
)
```

