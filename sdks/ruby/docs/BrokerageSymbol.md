# OpenapiClient::BrokerageSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] |
| **brokerage_authorization** | [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] |
| **description** | **String** |  | [optional] |
| **allows_fractional_units** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BrokerageSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  symbol: null,
  brokerage_authorization: null,
  description: VANGUARD CDN AGGREGATE BOND INDEX ETF,
  allows_fractional_units: true
)
```

