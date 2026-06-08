# ManualTradeFormComplex

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | **string** | The complex order type. - &#x60;OCO&#x60;: One Cancels the Other — two peer orders. - &#x60;OTO&#x60;: One Triggers the Other — a trigger order and a conditional order. - &#x60;OTOCO&#x60;: One Triggers a One Cancels the Other — a trigger order and two peer orders.  | 
**Orders** | [**[]ComplexOrderLeg**](ComplexOrderLeg.md) | The orders that make up the complex order. Required counts and roles per type: - &#x60;OCO&#x60;: exactly 2 orders, both &#x60;PEER&#x60; - &#x60;OTO&#x60;: exactly 2 orders, one &#x60;TRIGGER&#x60; and one &#x60;CONDITIONAL&#x60; - &#x60;OTOCO&#x60;: exactly 3 orders, one &#x60;TRIGGER&#x60; and two &#x60;PEER&#x60;  | 
**ClientOrderId** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewManualTradeFormComplex

`func NewManualTradeFormComplex(type_ string, orders []ComplexOrderLeg, ) *ManualTradeFormComplex`

NewManualTradeFormComplex instantiates a new ManualTradeFormComplex object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeFormComplexWithDefaults

`func NewManualTradeFormComplexWithDefaults() *ManualTradeFormComplex`

NewManualTradeFormComplexWithDefaults instantiates a new ManualTradeFormComplex object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ManualTradeFormComplex) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ManualTradeFormComplex) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ManualTradeFormComplex) SetType(v string)`

SetType sets Type field to given value.


### GetOrders

`func (o *ManualTradeFormComplex) GetOrders() []ComplexOrderLeg`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *ManualTradeFormComplex) GetOrdersOk() (*[]ComplexOrderLeg, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *ManualTradeFormComplex) SetOrders(v []ComplexOrderLeg)`

SetOrders sets Orders field to given value.


### GetClientOrderId

`func (o *ManualTradeFormComplex) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *ManualTradeFormComplex) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *ManualTradeFormComplex) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.

### HasClientOrderId

`func (o *ManualTradeFormComplex) HasClientOrderId() bool`

HasClientOrderId returns a boolean if a field has been set.

### SetClientOrderIdNil

`func (o *ManualTradeFormComplex) SetClientOrderIdNil(b bool)`

 SetClientOrderIdNil sets the value for ClientOrderId to be an explicit nil

### UnsetClientOrderId
`func (o *ManualTradeFormComplex) UnsetClientOrderId()`

UnsetClientOrderId ensures that no value is present for ClientOrderId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


