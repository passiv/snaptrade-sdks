# ChildBrokerageOrderIDs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TakeProfitOrderId** | Pointer to **string** | The brokerage order ID for the take profit leg of the bracket order | [optional] 
**StopLossOrderId** | Pointer to **string** | The brokerage order ID for the stop loss leg of the bracket order | [optional] 

## Methods

### NewChildBrokerageOrderIDs

`func NewChildBrokerageOrderIDs() *ChildBrokerageOrderIDs`

NewChildBrokerageOrderIDs instantiates a new ChildBrokerageOrderIDs object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewChildBrokerageOrderIDsWithDefaults

`func NewChildBrokerageOrderIDsWithDefaults() *ChildBrokerageOrderIDs`

NewChildBrokerageOrderIDsWithDefaults instantiates a new ChildBrokerageOrderIDs object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTakeProfitOrderId

`func (o *ChildBrokerageOrderIDs) GetTakeProfitOrderId() string`

GetTakeProfitOrderId returns the TakeProfitOrderId field if non-nil, zero value otherwise.

### GetTakeProfitOrderIdOk

`func (o *ChildBrokerageOrderIDs) GetTakeProfitOrderIdOk() (*string, bool)`

GetTakeProfitOrderIdOk returns a tuple with the TakeProfitOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTakeProfitOrderId

`func (o *ChildBrokerageOrderIDs) SetTakeProfitOrderId(v string)`

SetTakeProfitOrderId sets TakeProfitOrderId field to given value.

### HasTakeProfitOrderId

`func (o *ChildBrokerageOrderIDs) HasTakeProfitOrderId() bool`

HasTakeProfitOrderId returns a boolean if a field has been set.

### GetStopLossOrderId

`func (o *ChildBrokerageOrderIDs) GetStopLossOrderId() string`

GetStopLossOrderId returns the StopLossOrderId field if non-nil, zero value otherwise.

### GetStopLossOrderIdOk

`func (o *ChildBrokerageOrderIDs) GetStopLossOrderIdOk() (*string, bool)`

GetStopLossOrderIdOk returns a tuple with the StopLossOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopLossOrderId

`func (o *ChildBrokerageOrderIDs) SetStopLossOrderId(v string)`

SetStopLossOrderId sets StopLossOrderId field to given value.

### HasStopLossOrderId

`func (o *ChildBrokerageOrderIDs) HasStopLossOrderId() bool`

HasStopLossOrderId returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


