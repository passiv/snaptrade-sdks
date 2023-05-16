# OpenapiClient::DeleteUserResponse

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **status** | **String** | Delete status | [optional] |
| **user_id** | **String** | SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::DeleteUserResponse.new(
  status: deleted,
  user_id: snaptrade-user-123
)
```

