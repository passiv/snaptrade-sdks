# AccountInformationGetUserAccountOrderDetailRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExternalOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 

## Methods

### NewAccountInformationGetUserAccountOrderDetailRequest

`func NewAccountInformationGetUserAccountOrderDetailRequest(externalOrderId string, ) *AccountInformationGetUserAccountOrderDetailRequest`

NewAccountInformationGetUserAccountOrderDetailRequest instantiates a new AccountInformationGetUserAccountOrderDetailRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults

`func NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults() *AccountInformationGetUserAccountOrderDetailRequest`

NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults instantiates a new AccountInformationGetUserAccountOrderDetailRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExternalOrderId

`func (o *AccountInformationGetUserAccountOrderDetailRequest) GetExternalOrderId() string`

GetExternalOrderId returns the ExternalOrderId field if non-nil, zero value otherwise.

### GetExternalOrderIdOk

`func (o *AccountInformationGetUserAccountOrderDetailRequest) GetExternalOrderIdOk() (*string, bool)`

GetExternalOrderIdOk returns a tuple with the ExternalOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExternalOrderId

`func (o *AccountInformationGetUserAccountOrderDetailRequest) SetExternalOrderId(v string)`

SetExternalOrderId sets ExternalOrderId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


