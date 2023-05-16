# OpenapiClient::Status

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **version** | **Integer** |  | [optional] |
| **timestamp** | **String** |  | [optional] |
| **online** | **Boolean** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Status.new(
  version: 151,
  timestamp: 2022-11-04T01:47:00.377Z,
  online: true
)
```

