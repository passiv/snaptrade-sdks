# StrategyOrderPlace

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderId** | Pointer to **int32** |  | [optional] 
**Orders** | Pointer to [**[]StrategyOrderPlaceOrdersInner**](StrategyOrderPlaceOrdersInner.md) |  | [optional] 

## Methods

### NewStrategyOrderPlace

`func NewStrategyOrderPlace() *StrategyOrderPlace`

NewStrategyOrderPlace instantiates a new StrategyOrderPlace object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyOrderPlaceWithDefaults

`func NewStrategyOrderPlaceWithDefaults() *StrategyOrderPlace`

NewStrategyOrderPlaceWithDefaults instantiates a new StrategyOrderPlace object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrderId

`func (o *StrategyOrderPlace) GetOrderId() int32`

GetOrderId returns the OrderId field if non-nil, zero value otherwise.

### GetOrderIdOk

`func (o *StrategyOrderPlace) GetOrderIdOk() (*int32, bool)`

GetOrderIdOk returns a tuple with the OrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderId

`func (o *StrategyOrderPlace) SetOrderId(v int32)`

SetOrderId sets OrderId field to given value.

### HasOrderId

`func (o *StrategyOrderPlace) HasOrderId() bool`

HasOrderId returns a boolean if a field has been set.

### GetOrders

`func (o *StrategyOrderPlace) GetOrders() []StrategyOrderPlaceOrdersInner`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *StrategyOrderPlace) GetOrdersOk() (*[]StrategyOrderPlaceOrdersInner, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *StrategyOrderPlace) SetOrders(v []StrategyOrderPlaceOrdersInner)`

SetOrders sets Orders field to given value.

### HasOrders

`func (o *StrategyOrderPlace) HasOrders() bool`

HasOrders returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


