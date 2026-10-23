# OrderTypeConfiguration

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**LimitPrice** | **NullableFloat64** |  | 
**StopPrice** | **NullableFloat64** |  | 
**Trail** | [**TrailingStop**](TrailingStop.md) |  | 
**RawType** | **string** | The order type label as reported by the brokerage. | 

## Methods

### NewOrderTypeConfiguration

`func NewOrderTypeConfiguration(kind string, limitPrice NullableFloat64, stopPrice NullableFloat64, trail TrailingStop, rawType string, ) *OrderTypeConfiguration`

NewOrderTypeConfiguration instantiates a new OrderTypeConfiguration object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOrderTypeConfigurationWithDefaults

`func NewOrderTypeConfigurationWithDefaults() *OrderTypeConfiguration`

NewOrderTypeConfigurationWithDefaults instantiates a new OrderTypeConfiguration object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *OrderTypeConfiguration) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *OrderTypeConfiguration) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *OrderTypeConfiguration) SetKind(v string)`

SetKind sets Kind field to given value.


### GetLimitPrice

`func (o *OrderTypeConfiguration) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *OrderTypeConfiguration) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *OrderTypeConfiguration) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.


### SetLimitPriceNil

`func (o *OrderTypeConfiguration) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *OrderTypeConfiguration) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetStopPrice

`func (o *OrderTypeConfiguration) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *OrderTypeConfiguration) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *OrderTypeConfiguration) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.


### SetStopPriceNil

`func (o *OrderTypeConfiguration) SetStopPriceNil(b bool)`

 SetStopPriceNil sets the value for StopPrice to be an explicit nil

### UnsetStopPrice
`func (o *OrderTypeConfiguration) UnsetStopPrice()`

UnsetStopPrice ensures that no value is present for StopPrice, not even an explicit nil
### GetTrail

`func (o *OrderTypeConfiguration) GetTrail() TrailingStop`

GetTrail returns the Trail field if non-nil, zero value otherwise.

### GetTrailOk

`func (o *OrderTypeConfiguration) GetTrailOk() (*TrailingStop, bool)`

GetTrailOk returns a tuple with the Trail field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrail

`func (o *OrderTypeConfiguration) SetTrail(v TrailingStop)`

SetTrail sets Trail field to given value.


### GetRawType

`func (o *OrderTypeConfiguration) GetRawType() string`

GetRawType returns the RawType field if non-nil, zero value otherwise.

### GetRawTypeOk

`func (o *OrderTypeConfiguration) GetRawTypeOk() (*string, bool)`

GetRawTypeOk returns a tuple with the RawType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawType

`func (o *OrderTypeConfiguration) SetRawType(v string)`

SetRawType sets RawType field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


