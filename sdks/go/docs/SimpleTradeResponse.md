# SimpleTradeResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | The brokerage-assigned ID of the submitted order. | 

## Methods

### NewSimpleTradeResponse

`func NewSimpleTradeResponse(brokerageOrderId string, ) *SimpleTradeResponse`

NewSimpleTradeResponse instantiates a new SimpleTradeResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSimpleTradeResponseWithDefaults

`func NewSimpleTradeResponseWithDefaults() *SimpleTradeResponse`

NewSimpleTradeResponseWithDefaults instantiates a new SimpleTradeResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBrokerageOrderId

`func (o *SimpleTradeResponse) GetBrokerageOrderId() string`

GetBrokerageOrderId returns the BrokerageOrderId field if non-nil, zero value otherwise.

### GetBrokerageOrderIdOk

`func (o *SimpleTradeResponse) GetBrokerageOrderIdOk() (*string, bool)`

GetBrokerageOrderIdOk returns a tuple with the BrokerageOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageOrderId

`func (o *SimpleTradeResponse) SetBrokerageOrderId(v string)`

SetBrokerageOrderId sets BrokerageOrderId field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


