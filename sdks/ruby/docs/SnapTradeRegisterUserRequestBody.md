# SnapTrade::SnapTradeRegisterUserRequestBody

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **user_id** | **String** | SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user | [optional] |
| **rsa_public_key** | **String** | Open SSH RSA public key | [optional] |

## Example

```ruby
require 'snaptrade'

instance = SnapTrade::SnapTradeRegisterUserRequestBody.new(
  user_id: snaptrade-user-123,
  rsa_public_key: ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAAAgQC7vbqajDw4o6gJy8UtmIbkcpnkO3Kwc4qsEnSZp/TR+fQi62F79RHWmwKOtFmwteURgLbj7D/WGuNLGOfa/2vse3G2eHnHl5CB8ruRX9fBl/KgwCVr2JaEuUm66bBQeP5XeBotdR4cvX38uPYivCDdPjJ1QWPdspTBKcxeFbccDw&#x3D;&#x3D;
)
```

