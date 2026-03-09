# AccountInformationGetUserAccountOrderDetailRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 

## Methods

### NewAccountInformationGetUserAccountOrderDetailRequest

`func NewAccountInformationGetUserAccountOrderDetailRequest(brokerageOrderId string, ) *AccountInformationGetUserAccountOrderDetailRequest`

NewAccountInformationGetUserAccountOrderDetailRequest instantiates a new AccountInformationGetUserAccountOrderDetailRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults

`func NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults() *AccountInformationGetUserAccountOrderDetailRequest`

NewAccountInformationGetUserAccountOrderDetailRequestWithDefaults instantiates a new AccountInformationGetUserAccountOrderDetailRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *AccountInformationGetUserAccountOrderDetailRequest) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *AccountInformationGetUserAccountOrderDetailRequest) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *AccountInformationGetUserAccountOrderDetailRequest) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


