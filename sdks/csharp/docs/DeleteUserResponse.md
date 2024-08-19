# SnapTrade.Net.Model.DeleteUserResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Status** | **string** | This is always &#x60;deleted&#x60; when a user is queued for deletion. | [optional] 
**Detail** | **string** | Human friendly message about the deletion status. | [optional] 
**UserId** | **string** | SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

