# OpenapiClient::MonthlyDividends

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | [optional] |
| **dividends** | [**Array&lt;DividendAtDate&gt;**](DividendAtDate.md) |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::MonthlyDividends.new(
  date: Sun Jan 23 16:00:00 PST 2022,
  dividends: null
)
```

