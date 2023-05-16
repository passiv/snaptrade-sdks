# OpenapiClient::UnderlyingSymbol

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **symbol** | **String** |  | [optional] |
| **description** | **String** |  | [optional] |
| **currency** | [**Currency**](Currency.md) |  | [optional] |
| **exchange** | [**USExchange**](USExchange.md) |  | [optional] |
| **type** | [**SecurityType**](SecurityType.md) |  | [optional] |
| **currencies** | [**Array&lt;Currency&gt;**](Currency.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::UnderlyingSymbol.new(
  id: 2bcd7cc3-e922-4976-bce1-9858296801c3,
  symbol: SPY,
  description: SPDR S&amp;P 500 ETF Trust,
  currency: null,
  exchange: null,
  type: null,
  currencies: null
)
```

