# EncryptedResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EncryptedSharedKey** | Pointer to **string** |  | [optional] 
**EncryptedMessageData** | Pointer to [**EncryptedResponseEncryptedMessageData**](EncryptedResponseEncryptedMessageData.md) |  | [optional] 

## Methods

### NewEncryptedResponse

`func NewEncryptedResponse() *EncryptedResponse`

NewEncryptedResponse instantiates a new EncryptedResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewEncryptedResponseWithDefaults

`func NewEncryptedResponseWithDefaults() *EncryptedResponse`

NewEncryptedResponseWithDefaults instantiates a new EncryptedResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEncryptedSharedKey

`func (o *EncryptedResponse) GetEncryptedSharedKey() string`

GetEncryptedSharedKey returns the EncryptedSharedKey field if non-nil, zero value otherwise.

### GetEncryptedSharedKeyOk

`func (o *EncryptedResponse) GetEncryptedSharedKeyOk() (*string, bool)`

GetEncryptedSharedKeyOk returns a tuple with the EncryptedSharedKey field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncryptedSharedKey

`func (o *EncryptedResponse) SetEncryptedSharedKey(v string)`

SetEncryptedSharedKey sets EncryptedSharedKey field to given value.

### HasEncryptedSharedKey

`func (o *EncryptedResponse) HasEncryptedSharedKey() bool`

HasEncryptedSharedKey returns a boolean if a field has been set.

### GetEncryptedMessageData

`func (o *EncryptedResponse) GetEncryptedMessageData() EncryptedResponseEncryptedMessageData`

GetEncryptedMessageData returns the EncryptedMessageData field if non-nil, zero value otherwise.

### GetEncryptedMessageDataOk

`func (o *EncryptedResponse) GetEncryptedMessageDataOk() (*EncryptedResponseEncryptedMessageData, bool)`

GetEncryptedMessageDataOk returns a tuple with the EncryptedMessageData field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEncryptedMessageData

`func (o *EncryptedResponse) SetEncryptedMessageData(v EncryptedResponseEncryptedMessageData)`

SetEncryptedMessageData sets EncryptedMessageData field to given value.

### HasEncryptedMessageData

`func (o *EncryptedResponse) HasEncryptedMessageData() bool`

HasEncryptedMessageData returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


