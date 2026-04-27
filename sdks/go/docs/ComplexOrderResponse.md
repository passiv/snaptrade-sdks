# ComplexOrderResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Type** | Pointer to **string** | The complex order type that was placed. | [optional] 
**BrokerageGroupOrderId** | Pointer to **NullableString** | The brokerage-assigned identifier that links all legs of this complex order together. Each leg will eventually appear as a separate AccountOrderRecord sharing this value. May be null if the brokerage does not return a group identifier.  | [optional] 

## Methods

### NewComplexOrderResponse

`func NewComplexOrderResponse() *ComplexOrderResponse`

NewComplexOrderResponse instantiates a new ComplexOrderResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewComplexOrderResponseWithDefaults

`func NewComplexOrderResponseWithDefaults() *ComplexOrderResponse`

NewComplexOrderResponseWithDefaults instantiates a new ComplexOrderResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetType

`func (o *ComplexOrderResponse) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *ComplexOrderResponse) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *ComplexOrderResponse) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *ComplexOrderResponse) HasType() bool`

HasType returns a boolean if a field has been set.

### GetBrokerageGroupOrderId

`func (o *ComplexOrderResponse) GetBrokerageGroupOrderId() string`

GetBrokerageGroupOrderId returns the BrokerageGroupOrderId field if non-nil, zero value otherwise.

### GetBrokerageGroupOrderIdOk

`func (o *ComplexOrderResponse) GetBrokerageGroupOrderIdOk() (*string, bool)`

GetBrokerageGroupOrderIdOk returns a tuple with the BrokerageGroupOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageGroupOrderId

`func (o *ComplexOrderResponse) SetBrokerageGroupOrderId(v string)`

SetBrokerageGroupOrderId sets BrokerageGroupOrderId field to given value.

### HasBrokerageGroupOrderId

`func (o *ComplexOrderResponse) HasBrokerageGroupOrderId() bool`

HasBrokerageGroupOrderId returns a boolean if a field has been set.

### SetBrokerageGroupOrderIdNil

`func (o *ComplexOrderResponse) SetBrokerageGroupOrderIdNil(b bool)`

 SetBrokerageGroupOrderIdNil sets the value for BrokerageGroupOrderId to be an explicit nil

### UnsetBrokerageGroupOrderId
`func (o *ComplexOrderResponse) UnsetBrokerageGroupOrderId()`

UnsetBrokerageGroupOrderId ensures that no value is present for BrokerageGroupOrderId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


