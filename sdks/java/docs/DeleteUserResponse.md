

# DeleteUserResponse


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**status** | **String** | This is always &#x60;deleted&#x60; when a user is queued for deletion. |  [optional] |
|**detail** | **String** | Human friendly message about the deletion status. |  [optional] |
|**userId** | **String** | SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable. |  [optional] |



