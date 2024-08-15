# MonthlyDividends

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | Pointer to **string** | Date used to specify timeframe for a reporting call (in YYYY-MM-DD format). These dates are inclusive. | [optional] 
**Dividends** | Pointer to [**[]DividendAtDate**](DividendAtDate.md) |  | [optional] 

## Methods

### NewMonthlyDividends

`func NewMonthlyDividends() *MonthlyDividends`

NewMonthlyDividends instantiates a new MonthlyDividends object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMonthlyDividendsWithDefaults

`func NewMonthlyDividendsWithDefaults() *MonthlyDividends`

NewMonthlyDividendsWithDefaults instantiates a new MonthlyDividends object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDate

`func (o *MonthlyDividends) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *MonthlyDividends) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *MonthlyDividends) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *MonthlyDividends) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetDividends

`func (o *MonthlyDividends) GetDividends() []DividendAtDate`

GetDividends returns the Dividends field if non-nil, zero value otherwise.

### GetDividendsOk

`func (o *MonthlyDividends) GetDividendsOk() (*[]DividendAtDate, bool)`

GetDividendsOk returns a tuple with the Dividends field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDividends

`func (o *MonthlyDividends) SetDividends(v []DividendAtDate)`

SetDividends sets Dividends field to given value.

### HasDividends

`func (o *MonthlyDividends) HasDividends() bool`

HasDividends returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


