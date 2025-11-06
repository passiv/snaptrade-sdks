# AccountOrdersV2Response

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Orders** | [**[]AccountOrderRecordV2**](AccountOrderRecordV2.md) | List of orders returned by the endpoint. | 

## Methods

### NewAccountOrdersV2Response

`func NewAccountOrdersV2Response(orders []AccountOrderRecordV2, ) *AccountOrdersV2Response`

NewAccountOrdersV2Response instantiates a new AccountOrdersV2Response object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrdersV2ResponseWithDefaults

`func NewAccountOrdersV2ResponseWithDefaults() *AccountOrdersV2Response`

NewAccountOrdersV2ResponseWithDefaults instantiates a new AccountOrdersV2Response object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrders

`func (o *AccountOrdersV2Response) GetOrders() []AccountOrderRecordV2`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *AccountOrdersV2Response) GetOrdersOk() (*[]AccountOrderRecordV2, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *AccountOrdersV2Response) SetOrders(v []AccountOrderRecordV2)`

SetOrders sets Orders field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


