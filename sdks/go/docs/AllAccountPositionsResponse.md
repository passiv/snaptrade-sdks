# AllAccountPositionsResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Count** | **int32** | The total number of positions available across all pages. | 
**Next** | **NullableString** | The URL for the next page of results, or &#x60;null&#x60; if there is no next page. | 
**Previous** | **NullableString** | The URL for the previous page of results, or &#x60;null&#x60; if there is no previous page. | 
**Results** | [**[]AccountPosition**](AccountPosition.md) | Positions returned for the current page. | 

## Methods

### NewAllAccountPositionsResponse

`func NewAllAccountPositionsResponse(count int32, next NullableString, previous NullableString, results []AccountPosition, ) *AllAccountPositionsResponse`

NewAllAccountPositionsResponse instantiates a new AllAccountPositionsResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAllAccountPositionsResponseWithDefaults

`func NewAllAccountPositionsResponseWithDefaults() *AllAccountPositionsResponse`

NewAllAccountPositionsResponseWithDefaults instantiates a new AllAccountPositionsResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetCount

`func (o *AllAccountPositionsResponse) GetCount() int32`

GetCount returns the Count field if non-nil, zero value otherwise.

### GetCountOk

`func (o *AllAccountPositionsResponse) GetCountOk() (*int32, bool)`

GetCountOk returns a tuple with the Count field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCount

`func (o *AllAccountPositionsResponse) SetCount(v int32)`

SetCount sets Count field to given value.


### GetNext

`func (o *AllAccountPositionsResponse) GetNext() string`

GetNext returns the Next field if non-nil, zero value otherwise.

### GetNextOk

`func (o *AllAccountPositionsResponse) GetNextOk() (*string, bool)`

GetNextOk returns a tuple with the Next field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNext

`func (o *AllAccountPositionsResponse) SetNext(v string)`

SetNext sets Next field to given value.


### SetNextNil

`func (o *AllAccountPositionsResponse) SetNextNil(b bool)`

 SetNextNil sets the value for Next to be an explicit nil

### UnsetNext
`func (o *AllAccountPositionsResponse) UnsetNext()`

UnsetNext ensures that no value is present for Next, not even an explicit nil
### GetPrevious

`func (o *AllAccountPositionsResponse) GetPrevious() string`

GetPrevious returns the Previous field if non-nil, zero value otherwise.

### GetPreviousOk

`func (o *AllAccountPositionsResponse) GetPreviousOk() (*string, bool)`

GetPreviousOk returns a tuple with the Previous field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrevious

`func (o *AllAccountPositionsResponse) SetPrevious(v string)`

SetPrevious sets Previous field to given value.


### SetPreviousNil

`func (o *AllAccountPositionsResponse) SetPreviousNil(b bool)`

 SetPreviousNil sets the value for Previous to be an explicit nil

### UnsetPrevious
`func (o *AllAccountPositionsResponse) UnsetPrevious()`

UnsetPrevious ensures that no value is present for Previous, not even an explicit nil
### GetResults

`func (o *AllAccountPositionsResponse) GetResults() []AccountPosition`

GetResults returns the Results field if non-nil, zero value otherwise.

### GetResultsOk

`func (o *AllAccountPositionsResponse) GetResultsOk() (*[]AccountPosition, bool)`

GetResultsOk returns a tuple with the Results field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetResults

`func (o *AllAccountPositionsResponse) SetResults(v []AccountPosition)`

SetResults sets Results field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


