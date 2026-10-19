# AccountBalancesV2ResponseDataFreshness

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AsOf** | **time.Time** | The time the returned data was fetched from the institution. | 

## Methods

### NewAccountBalancesV2ResponseDataFreshness

`func NewAccountBalancesV2ResponseDataFreshness(asOf time.Time, ) *AccountBalancesV2ResponseDataFreshness`

NewAccountBalancesV2ResponseDataFreshness instantiates a new AccountBalancesV2ResponseDataFreshness object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseDataFreshnessWithDefaults

`func NewAccountBalancesV2ResponseDataFreshnessWithDefaults() *AccountBalancesV2ResponseDataFreshness`

NewAccountBalancesV2ResponseDataFreshnessWithDefaults instantiates a new AccountBalancesV2ResponseDataFreshness object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAsOf

`func (o *AccountBalancesV2ResponseDataFreshness) GetAsOf() time.Time`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *AccountBalancesV2ResponseDataFreshness) GetAsOfOk() (*time.Time, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *AccountBalancesV2ResponseDataFreshness) SetAsOf(v time.Time)`

SetAsOf sets AsOf field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


