# OpenapiClient::ModelPortfolio

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **name** | **String** |  | [optional] |
| **model_type** | **Integer** | Enum definitions -&gt; [-1: Unassigned, 0: Security Model Portfolio, 1: Asset Class Portfolio] | [optional][default to MODEL_TYPE::NMINUS_1] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelPortfolio.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  name: Passiv 5x Aggressive Growth Fund,
  model_type: null
)
```

