# UserAumPercentileObject

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bucket** | Pointer to **string** | The band the user falls into. Deliberately coarse: the underlying totals are only as current as each brokerage&#39;s last sync, so an exact percentile would imply more precision than the data supports.  | [optional] 
**Percentile** | Pointer to **int32** | The percent of the cohort the user&#39;s assets are strictly above, 0-100. Integer by design: the distribution is stored as 101 interpolated cutoffs, so a fractional percentile would not mean anything.  Prefer &#x60;bucket&#x60; for anything you display prominently. The distribution is recomputed monthly, so a user&#39;s percentile can move a few points on its own as other users&#39; holdings refresh, while their bucket stays put. Users tied on the same total all receive the lowest percentile that total spans.  | [optional] 
**CohortSize** | Pointer to **int32** | Number of your users the distribution was computed from. | [optional] 
**AsOf** | Pointer to **string** | The month whose distribution produced this placement. | [optional] 
**Currency** | Pointer to **string** | The currency the distribution was computed in. | [optional] 

## Methods

### NewUserAumPercentileObject

`func NewUserAumPercentileObject() *UserAumPercentileObject`

NewUserAumPercentileObject instantiates a new UserAumPercentileObject object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUserAumPercentileObjectWithDefaults

`func NewUserAumPercentileObjectWithDefaults() *UserAumPercentileObject`

NewUserAumPercentileObjectWithDefaults instantiates a new UserAumPercentileObject object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBucket

`func (o *UserAumPercentileObject) GetBucket() string`

GetBucket returns the Bucket field if non-nil, zero value otherwise.

### GetBucketOk

`func (o *UserAumPercentileObject) GetBucketOk() (*string, bool)`

GetBucketOk returns a tuple with the Bucket field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBucket

`func (o *UserAumPercentileObject) SetBucket(v string)`

SetBucket sets Bucket field to given value.

### HasBucket

`func (o *UserAumPercentileObject) HasBucket() bool`

HasBucket returns a boolean if a field has been set.

### GetPercentile

`func (o *UserAumPercentileObject) GetPercentile() int32`

GetPercentile returns the Percentile field if non-nil, zero value otherwise.

### GetPercentileOk

`func (o *UserAumPercentileObject) GetPercentileOk() (*int32, bool)`

GetPercentileOk returns a tuple with the Percentile field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPercentile

`func (o *UserAumPercentileObject) SetPercentile(v int32)`

SetPercentile sets Percentile field to given value.

### HasPercentile

`func (o *UserAumPercentileObject) HasPercentile() bool`

HasPercentile returns a boolean if a field has been set.

### GetCohortSize

`func (o *UserAumPercentileObject) GetCohortSize() int32`

GetCohortSize returns the CohortSize field if non-nil, zero value otherwise.

### GetCohortSizeOk

`func (o *UserAumPercentileObject) GetCohortSizeOk() (*int32, bool)`

GetCohortSizeOk returns a tuple with the CohortSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCohortSize

`func (o *UserAumPercentileObject) SetCohortSize(v int32)`

SetCohortSize sets CohortSize field to given value.

### HasCohortSize

`func (o *UserAumPercentileObject) HasCohortSize() bool`

HasCohortSize returns a boolean if a field has been set.

### GetAsOf

`func (o *UserAumPercentileObject) GetAsOf() string`

GetAsOf returns the AsOf field if non-nil, zero value otherwise.

### GetAsOfOk

`func (o *UserAumPercentileObject) GetAsOfOk() (*string, bool)`

GetAsOfOk returns a tuple with the AsOf field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsOf

`func (o *UserAumPercentileObject) SetAsOf(v string)`

SetAsOf sets AsOf field to given value.

### HasAsOf

`func (o *UserAumPercentileObject) HasAsOf() bool`

HasAsOf returns a boolean if a field has been set.

### GetCurrency

`func (o *UserAumPercentileObject) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UserAumPercentileObject) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UserAumPercentileObject) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UserAumPercentileObject) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


