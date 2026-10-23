# AllAccountOrdersResponseDataFreshness

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsOf** | **time.Time** | The time the returned orders data was fetched from the brokerage. | 

## Methods

### NewAllAccountOrdersResponseDataFreshness

`func NewAllAccountOrdersResponseDataFreshness(asOf time.Time, ) *AllAccountOrdersResponseDataFreshness`

NewAllAccountOrdersResponseDataFreshness instantiates a new AllAccountOrdersResponseDataFreshness object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAllAccountOrdersResponseDataFreshnessWithDefaults

`func NewAllAccountOrdersResponseDataFreshnessWithDefaults() *AllAccountOrdersResponseDataFreshness`

NewAllAccountOrdersResponseDataFreshnessWithDefaults instantiates a new AllAccountOrdersResponseDataFreshness object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAsOf

`func (o *AllAccountOrdersResponseDataFreshness) GetAsOf() time.Time`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *AllAccountOrdersResponseDataFreshness) GetAsOfOk() (*time.Time, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *AllAccountOrdersResponseDataFreshness) SetAsOf(v time.Time)`

SetAsOf sets AsOf field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


