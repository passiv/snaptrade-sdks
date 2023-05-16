# OpenapiClient::OptionLeg

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **action** | **String** |  | [optional] |
| **option_symbol_id** | **String** | Obtained from calling options chain endpoint (option_id) | [optional] |
| **quantity** | **Float** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::OptionLeg.new(
  action: null,
  option_symbol_id: SPY220819P00200000,
  quantity: 1
)
```

