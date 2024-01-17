# SnapTrade::PastValue

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **date** | **Date** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | [optional] |
| **value** | **Float** |  | [optional] |
| **currency** | **String** |  | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::PastValue.new(
  date: Mon Jan 24 00:00:00 UTC 2022,
  value: 52.74,
  currency: CAD
)
```

