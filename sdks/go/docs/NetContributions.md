# NetContributions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | Pointer to **string** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format). These dates are inclusive. | [optional] 
**Contributions** | Pointer to **NullableFloat32** |  | [optional] 
**Currency** | Pointer to **string** |  | [optional] 

## Methods

### NewNetContributions

`func NewNetContributions() *NetContributions`

NewNetContributions instantiates a new NetContributions object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNetContributionsWithDefaults

`func NewNetContributionsWithDefaults() *NetContributions`

NewNetContributionsWithDefaults instantiates a new NetContributions object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDate

`func (o *NetContributions) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *NetContributions) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *NetContributions) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *NetContributions) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetContributions

`func (o *NetContributions) GetContributions() float32`

GetContributions returns the Contributions field if non-nil, zero value otherwise.

### GetContributionsOk

`func (o *NetContributions) GetContributionsOk() (*float32, bool)`

GetContributionsOk returns a tuple with the Contributions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetContributions

`func (o *NetContributions) SetContributions(v float32)`

SetContributions sets Contributions field to given value.

### HasContributions

`func (o *NetContributions) HasContributions() bool`

HasContributions returns a boolean if a field has been set.

### SetContributionsNil

`func (o *NetContributions) SetContributionsNil(b bool)`

 SetContributionsNil sets the value for Contributions to be an explicit nil

### UnsetContributions
`func (o *NetContributions) UnsetContributions()`

UnsetContributions ensures that no value is present for Contributions, not even an explicit nil
### GetCurrency

`func (o *NetContributions) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *NetContributions) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *NetContributions) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *NetContributions) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


