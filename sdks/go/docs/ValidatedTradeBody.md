# ValidatedTradeBody

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**WaitToConfirm** | Pointer to **NullableBool** | Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status &#x60;PENDING&#x60; as we will not wait to check on the status before responding to the request. | [optional] 

## Methods

### NewValidatedTradeBody

`func NewValidatedTradeBody() *ValidatedTradeBody`

NewValidatedTradeBody instantiates a new ValidatedTradeBody object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewValidatedTradeBodyWithDefaults

`func NewValidatedTradeBodyWithDefaults() *ValidatedTradeBody`

NewValidatedTradeBodyWithDefaults instantiates a new ValidatedTradeBody object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetWaitToConfirm

`func (o *ValidatedTradeBody) GetWaitToConfirm() bool`

GetWaitToConfirm returns the WaitToConfirm field if non-nil, zero value otherwise.

### GetWaitToConfirmOk

`func (o *ValidatedTradeBody) GetWaitToConfirmOk() (*bool, bool)`

GetWaitToConfirmOk returns a tuple with the WaitToConfirm field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetWaitToConfirm

`func (o *ValidatedTradeBody) SetWaitToConfirm(v bool)`

SetWaitToConfirm sets WaitToConfirm field to given value.

### HasWaitToConfirm

`func (o *ValidatedTradeBody) HasWaitToConfirm() bool`

HasWaitToConfirm returns a boolean if a field has been set.

### SetWaitToConfirmNil

`func (o *ValidatedTradeBody) SetWaitToConfirmNil(b bool)`

 SetWaitToConfirmNil sets the value for WaitToConfirm to be an explicit nil

### UnsetWaitToConfirm
`func (o *ValidatedTradeBody) UnsetWaitToConfirm()`

UnsetWaitToConfirm ensures that no value is present for WaitToConfirm, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


