# AllAccountPositionsResponseDataFreshness

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsOf** | **time.Time** | The time the returned positions data was fetched from the brokerage. | 

## Methods

### NewAllAccountPositionsResponseDataFreshness

`func NewAllAccountPositionsResponseDataFreshness(asOf time.Time, ) *AllAccountPositionsResponseDataFreshness`

NewAllAccountPositionsResponseDataFreshness instantiates a new AllAccountPositionsResponseDataFreshness object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAllAccountPositionsResponseDataFreshnessWithDefaults

`func NewAllAccountPositionsResponseDataFreshnessWithDefaults() *AllAccountPositionsResponseDataFreshness`

NewAllAccountPositionsResponseDataFreshnessWithDefaults instantiates a new AllAccountPositionsResponseDataFreshness object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAsOf

`func (o *AllAccountPositionsResponseDataFreshness) GetAsOf() time.Time`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *AllAccountPositionsResponseDataFreshness) GetAsOfOk() (*time.Time, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *AllAccountPositionsResponseDataFreshness) SetAsOf(v time.Time)`

SetAsOf sets AsOf field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


