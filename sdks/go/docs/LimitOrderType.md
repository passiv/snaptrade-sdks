# LimitOrderType

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**LimitPrice** | **float64** | The maximum price to pay for a buy, or the minimum price to accept for a sell. | 

## Methods

### NewLimitOrderType

`func NewLimitOrderType(kind string, limitPrice float64, ) *LimitOrderType`

NewLimitOrderType instantiates a new LimitOrderType object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewLimitOrderTypeWithDefaults

`func NewLimitOrderTypeWithDefaults() *LimitOrderType`

NewLimitOrderTypeWithDefaults instantiates a new LimitOrderType object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *LimitOrderType) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *LimitOrderType) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *LimitOrderType) SetKind(v string)`

SetKind sets Kind field to given value.


### GetLimitPrice

`func (o *LimitOrderType) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *LimitOrderType) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *LimitOrderType) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


