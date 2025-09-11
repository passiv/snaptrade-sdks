# OrderUpdatedResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**Order** | Pointer to [**AccountOrderRecord**](AccountOrderRecord.md) |  | [optional] 

## Methods

### NewOrderUpdatedResponse

`func NewOrderUpdatedResponse(brokerageOrderId string, ) *OrderUpdatedResponse`

NewOrderUpdatedResponse instantiates a new OrderUpdatedResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderUpdatedResponseWithDefaults

`func NewOrderUpdatedResponseWithDefaults() *OrderUpdatedResponse`

NewOrderUpdatedResponseWithDefaults instantiates a new OrderUpdatedResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *OrderUpdatedResponse) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *OrderUpdatedResponse) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *OrderUpdatedResponse) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.


### GetOrder

`func (o *OrderUpdatedResponse) GetOrder() AccountOrderRecord`

GetOrder returns the Order field if non-nil, zero value otherwise.

### GetOrderOk

`func (o *OrderUpdatedResponse) GetOrderOk() (*AccountOrderRecord, bool)`

GetOrderOk returns a tuple with the Order field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrder

`func (o *OrderUpdatedResponse) SetOrder(v AccountOrderRecord)`

SetOrder sets Order field to given value.

### HasOrder

`func (o *OrderUpdatedResponse) HasOrder() bool`

HasOrder returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


