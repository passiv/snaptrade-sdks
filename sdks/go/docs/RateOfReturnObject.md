# RateOfReturnObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Timeframe** | Pointer to **string** | The timeframe this return percent is reflecting | [optional] 
**ReturnPercent** | Pointer to **float32** | The percent return of the portfolio, directly from the brokerage. 5.97 indicates a 5.97% return over the timeframe | [optional] 
**CreatedDate** | Pointer to **time.Time** | The date this was fetched | [optional] 

## Methods

### NewRateOfReturnObject

`func NewRateOfReturnObject() *RateOfReturnObject`

NewRateOfReturnObject instantiates a new RateOfReturnObject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewRateOfReturnObjectWithDefaults

`func NewRateOfReturnObjectWithDefaults() *RateOfReturnObject`

NewRateOfReturnObjectWithDefaults instantiates a new RateOfReturnObject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTimeframe

`func (o *RateOfReturnObject) GetTimeframe() string`

GetTimeframe returns the Timeframe field if non-nil, zero value otherwise.

### GetTimeframeOk

`func (o *RateOfReturnObject) GetTimeframeOk() (*string, bool)`

GetTimeframeOk returns a tuple with the Timeframe field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeframe

`func (o *RateOfReturnObject) SetTimeframe(v string)`

SetTimeframe sets Timeframe field to given value.

### HasTimeframe

`func (o *RateOfReturnObject) HasTimeframe() bool`

HasTimeframe returns a boolean if a field has been set.

### GetReturnPercent

`func (o *RateOfReturnObject) GetReturnPercent() float32`

GetReturnPercent returns the ReturnPercent field if non-nil, zero value otherwise.

### GetReturnPercentOk

`func (o *RateOfReturnObject) GetReturnPercentOk() (*float32, bool)`

GetReturnPercentOk returns a tuple with the ReturnPercent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetReturnPercent

`func (o *RateOfReturnObject) SetReturnPercent(v float32)`

SetReturnPercent sets ReturnPercent field to given value.

### HasReturnPercent

`func (o *RateOfReturnObject) HasReturnPercent() bool`

HasReturnPercent returns a boolean if a field has been set.

### GetCreatedDate

`func (o *RateOfReturnObject) GetCreatedDate() time.Time`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *RateOfReturnObject) GetCreatedDateOk() (*time.Time, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *RateOfReturnObject) SetCreatedDate(v time.Time)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *RateOfReturnObject) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


