# OpenapiClient::PortfolioGroupPosition

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] |
| **price** | **Float** | Last known market price for the symbol | [optional] |
| **units** | **Integer** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::PortfolioGroupPosition.new(
  symbol: null,
  price: 24.81,
  units: 15
)
```

