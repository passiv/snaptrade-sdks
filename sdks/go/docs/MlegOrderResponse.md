# MlegOrderResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**Orders** | [**[]AccountOrderRecord**](AccountOrderRecord.md) |  | 

## Methods

### NewMlegOrderResponse

`func NewMlegOrderResponse(brokerageOrderId string, orders []AccountOrderRecord, ) *MlegOrderResponse`

NewMlegOrderResponse instantiates a new MlegOrderResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMlegOrderResponseWithDefaults

`func NewMlegOrderResponseWithDefaults() *MlegOrderResponse`

NewMlegOrderResponseWithDefaults instantiates a new MlegOrderResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *MlegOrderResponse) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *MlegOrderResponse) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *MlegOrderResponse) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.


### GetOrders

`func (o *MlegOrderResponse) GetOrders() []AccountOrderRecord`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *MlegOrderResponse) GetOrdersOk() (*[]AccountOrderRecord, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *MlegOrderResponse) SetOrders(v []AccountOrderRecord)`

SetOrders sets Orders field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


