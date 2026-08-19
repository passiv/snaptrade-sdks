# UserAumPercentileObjectNullable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | Pointer to **string** | The band the user falls into. Deliberately coarse: the underlying totals are only as current as each brokerage&#39;s last sync, so an exact percentile would imply more precision than the data supports.  | [optional] 
**Percentile** | Pointer to **int32** | The percent of the cohort the user&#39;s assets are strictly above, 0-100. Integer by design: the distribution is stored as 101 interpolated cutoffs, so a fractional percentile would not mean anything.  Prefer &#x60;bucket&#x60; for anything you display prominently. The distribution is recomputed monthly, so a user&#39;s percentile can move a few points on its own as other users&#39; holdings refresh, while their bucket stays put. Users tied on the same total all receive the lowest percentile that total spans.  | [optional] 
**CohortSize** | Pointer to **int32** | Number of your users the distribution was computed from. | [optional] 
**AsOf** | Pointer to **string** | The month whose distribution produced this placement. | [optional] 
**Currency** | Pointer to **string** | The currency the distribution was computed in. | [optional] 

## Methods

### NewUserAumPercentileObjectNullable

`func NewUserAumPercentileObjectNullable() *UserAumPercentileObjectNullable`

NewUserAumPercentileObjectNullable instantiates a new UserAumPercentileObjectNullable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserAumPercentileObjectNullableWithDefaults

`func NewUserAumPercentileObjectNullableWithDefaults() *UserAumPercentileObjectNullable`

NewUserAumPercentileObjectNullableWithDefaults instantiates a new UserAumPercentileObjectNullable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBucket

`func (o *UserAumPercentileObjectNullable) GetBucket() string`

GetBucket returns the Bucket field if non-nil, zero value otherwise.

### GetBucketOk

`func (o *UserAumPercentileObjectNullable) GetBucketOk() (*string, bool)`

GetBucketOk returns a tuple with the Bucket field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBucket

`func (o *UserAumPercentileObjectNullable) SetBucket(v string)`

SetBucket sets Bucket field to given value.

### HasBucket

`func (o *UserAumPercentileObjectNullable) HasBucket() bool`

HasBucket returns a boolean if a field has been set.

### GetPercentile

`func (o *UserAumPercentileObjectNullable) GetPercentile() int32`

GetPercentile returns the Percentile field if non-nil, zero value otherwise.

### GetPercentileOk

`func (o *UserAumPercentileObjectNullable) GetPercentileOk() (*int32, bool)`

GetPercentileOk returns a tuple with the Percentile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPercentile

`func (o *UserAumPercentileObjectNullable) SetPercentile(v int32)`

SetPercentile sets Percentile field to given value.

### HasPercentile

`func (o *UserAumPercentileObjectNullable) HasPercentile() bool`

HasPercentile returns a boolean if a field has been set.

### GetCohortSize

`func (o *UserAumPercentileObjectNullable) GetCohortSize() int32`

GetCohortSize returns the CohortSize field if non-nil, zero value otherwise.

### GetCohortSizeOk

`func (o *UserAumPercentileObjectNullable) GetCohortSizeOk() (*int32, bool)`

GetCohortSizeOk returns a tuple with the CohortSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCohortSize

`func (o *UserAumPercentileObjectNullable) SetCohortSize(v int32)`

SetCohortSize sets CohortSize field to given value.

### HasCohortSize

`func (o *UserAumPercentileObjectNullable) HasCohortSize() bool`

HasCohortSize returns a boolean if a field has been set.

### GetAsOf

`func (o *UserAumPercentileObjectNullable) GetAsOf() string`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *UserAumPercentileObjectNullable) GetAsOfOk() (*string, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *UserAumPercentileObjectNullable) SetAsOf(v string)`

SetAsOf sets AsOf field to given value.

### HasAsOf

`func (o *UserAumPercentileObjectNullable) HasAsOf() bool`

HasAsOf returns a boolean if a field has been set.

### GetCurrency

`func (o *UserAumPercentileObjectNullable) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UserAumPercentileObjectNullable) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UserAumPercentileObjectNullable) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UserAumPercentileObjectNullable) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


