# CancelOrderResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**RawResponse** | Pointer to **map[string]interface{}** | The raw response from the brokerage. | [optional] 

## Methods

### NewCancelOrderResponse

`func NewCancelOrderResponse(brokerageOrderId string, ) *CancelOrderResponse`

NewCancelOrderResponse instantiates a new CancelOrderResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCancelOrderResponseWithDefaults

`func NewCancelOrderResponseWithDefaults() *CancelOrderResponse`

NewCancelOrderResponseWithDefaults instantiates a new CancelOrderResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *CancelOrderResponse) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *CancelOrderResponse) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *CancelOrderResponse) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.


### GetRawResponse

`func (o *CancelOrderResponse) GetRawResponse() map[string]interface{}`

GetRawResponse returns the RawResponse field if non-nil, zero value otherwise.

### GetRawResponseOk

`func (o *CancelOrderResponse) GetRawResponseOk() (*map[string]interface{}, bool)`

GetRawResponseOk returns a tuple with the RawResponse field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawResponse

`func (o *CancelOrderResponse) SetRawResponse(v map[string]interface{})`

SetRawResponse sets RawResponse field to given value.

### HasRawResponse

`func (o *CancelOrderResponse) HasRawResponse() bool`

HasRawResponse returns a boolean if a field has been set.

### SetRawResponseNil

`func (o *CancelOrderResponse) SetRawResponseNil(b bool)`

 SetRawResponseNil sets the value for RawResponse to be an explicit nil

### UnsetRawResponse
`func (o *CancelOrderResponse) UnsetRawResponse()`

UnsetRawResponse ensures that no value is present for RawResponse, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


