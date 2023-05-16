# OpenapiClient::OptionsGetOptionStrategyRequest

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **underlying_symbol_id** | **String** |  |  |
| **legs** | [**Array&lt;OptionLeg&gt;**](OptionLeg.md) |  |  |
| **strategy_type** | **String** |  |  |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OptionsGetOptionStrategyRequest.new(
  underlying_symbol_id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  legs: null,
  strategy_type: null
)
```

