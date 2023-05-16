# OpenapiClient::ManualTradeBalance

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **account** | [**Account**](Account.md) |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **cash** | **Float** | Cash | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ManualTradeBalance.new(
  account: null,
  currency: null,
  cash: 1.11
)
```

