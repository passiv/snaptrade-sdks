# SubPeriodReturnRate

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**PeriodStart** | Pointer to **string** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | [optional] 
**PeriodEnd** | Pointer to **string** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format) | [optional] 
**RateOfReturn** | Pointer to **NullableFloat32** | The return rate for the given period | [optional] 

## Methods

### NewSubPeriodReturnRate

`func NewSubPeriodReturnRate() *SubPeriodReturnRate`

NewSubPeriodReturnRate instantiates a new SubPeriodReturnRate object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSubPeriodReturnRateWithDefaults

`func NewSubPeriodReturnRateWithDefaults() *SubPeriodReturnRate`

NewSubPeriodReturnRateWithDefaults instantiates a new SubPeriodReturnRate object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetPeriodStart

`func (o *SubPeriodReturnRate) GetPeriodStart() string`

GetPeriodStart returns the PeriodStart field if non-nil, zero value otherwise.

### GetPeriodStartOk

`func (o *SubPeriodReturnRate) GetPeriodStartOk() (*string, bool)`

GetPeriodStartOk returns a tuple with the PeriodStart field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodStart

`func (o *SubPeriodReturnRate) SetPeriodStart(v string)`

SetPeriodStart sets PeriodStart field to given value.

### HasPeriodStart

`func (o *SubPeriodReturnRate) HasPeriodStart() bool`

HasPeriodStart returns a boolean if a field has been set.

### GetPeriodEnd

`func (o *SubPeriodReturnRate) GetPeriodEnd() string`

GetPeriodEnd returns the PeriodEnd field if non-nil, zero value otherwise.

### GetPeriodEndOk

`func (o *SubPeriodReturnRate) GetPeriodEndOk() (*string, bool)`

GetPeriodEndOk returns a tuple with the PeriodEnd field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPeriodEnd

`func (o *SubPeriodReturnRate) SetPeriodEnd(v string)`

SetPeriodEnd sets PeriodEnd field to given value.

### HasPeriodEnd

`func (o *SubPeriodReturnRate) HasPeriodEnd() bool`

HasPeriodEnd returns a boolean if a field has been set.

### GetRateOfReturn

`func (o *SubPeriodReturnRate) GetRateOfReturn() float32`

GetRateOfReturn returns the RateOfReturn field if non-nil, zero value otherwise.

### GetRateOfReturnOk

`func (o *SubPeriodReturnRate) GetRateOfReturnOk() (*float32, bool)`

GetRateOfReturnOk returns a tuple with the RateOfReturn field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRateOfReturn

`func (o *SubPeriodReturnRate) SetRateOfReturn(v float32)`

SetRateOfReturn sets RateOfReturn field to given value.

### HasRateOfReturn

`func (o *SubPeriodReturnRate) HasRateOfReturn() bool`

HasRateOfReturn returns a boolean if a field has been set.

### SetRateOfReturnNil

`func (o *SubPeriodReturnRate) SetRateOfReturnNil(b bool)`

 SetRateOfReturnNil sets the value for RateOfReturn to be an explicit nil

### UnsetRateOfReturn
`func (o *SubPeriodReturnRate) UnsetRateOfReturn()`

UnsetRateOfReturn ensures that no value is present for RateOfReturn, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


