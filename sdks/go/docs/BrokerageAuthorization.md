# BrokerageAuthorization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade. | [optional] 
**CreatedDate** | Pointer to **time.Time** | Timestamp of when the connection was established in SnapTrade. | [optional] 
**Brokerage** | Pointer to [**Brokerage**](Brokerage.md) |  | [optional] 
**Name** | Pointer to **string** | A short, human-readable name for the connection. | [optional] 
**Type** | Pointer to **string** | Whether the connection is read-only or trade-enabled. A read-only connection can only be used to fetch data, while a trade-enabled connection can be used to place trades. Valid values are &#x60;read&#x60; and &#x60;trade&#x60;. | [optional] 
**Disabled** | Pointer to **bool** | Whether the connection is disabled. A disabled connection can no longer access the latest data from the brokerage, but will continue to return the last cached state. A connection can become disabled for many reasons and differs by brokerage. Here are some common scenarios:  - The user has changed their username or password at the brokerage. - The user has explicitly removed the access grant at the brokerage. - The session has expired at the brokerage and now requires explicit user re-authentication.  Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.  | [optional] 
**DisabledDate** | Pointer to **NullableTime** | Timestamp of when the connection was disabled in SnapTrade. | [optional] 
**Meta** | Pointer to **map[string]interface{}** | Additional data about the connection. This information is specific to the brokerage and there&#39;s no standard format for this data. This field is deprecated and subject to removal in a future version. | [optional] 
**UpdatedDate** | Pointer to **time.Time** | Timestamp of when the connection was last updated in SnapTrade. This field is deprecated. Please let us know if you have a valid use case for this field. | [optional] 
**IsEligibleForPayout** | Pointer to **bool** | Whether the connection is eligible for a payout. | [optional] 

## Methods

### NewBrokerageAuthorization

`func NewBrokerageAuthorization() *BrokerageAuthorization`

NewBrokerageAuthorization instantiates a new BrokerageAuthorization object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageAuthorizationWithDefaults

`func NewBrokerageAuthorizationWithDefaults() *BrokerageAuthorization`

NewBrokerageAuthorizationWithDefaults instantiates a new BrokerageAuthorization object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *BrokerageAuthorization) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrokerageAuthorization) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrokerageAuthorization) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *BrokerageAuthorization) HasId() bool`

HasId returns a boolean if a field has been set.

### GetCreatedDate

`func (o *BrokerageAuthorization) GetCreatedDate() time.Time`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *BrokerageAuthorization) GetCreatedDateOk() (*time.Time, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *BrokerageAuthorization) SetCreatedDate(v time.Time)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *BrokerageAuthorization) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.

### GetBrokerage

`func (o *BrokerageAuthorization) GetBrokerage() Brokerage`

GetBrokerage returns the Brokerage field if non-nil, zero value otherwise.

### GetBrokerageOk

`func (o *BrokerageAuthorization) GetBrokerageOk() (*Brokerage, bool)`

GetBrokerageOk returns a tuple with the Brokerage field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerage

`func (o *BrokerageAuthorization) SetBrokerage(v Brokerage)`

SetBrokerage sets Brokerage field to given value.

### HasBrokerage

`func (o *BrokerageAuthorization) HasBrokerage() bool`

HasBrokerage returns a boolean if a field has been set.

### GetName

`func (o *BrokerageAuthorization) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *BrokerageAuthorization) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *BrokerageAuthorization) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *BrokerageAuthorization) HasName() bool`

HasName returns a boolean if a field has been set.

### GetType

`func (o *BrokerageAuthorization) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *BrokerageAuthorization) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *BrokerageAuthorization) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *BrokerageAuthorization) HasType() bool`

HasType returns a boolean if a field has been set.

### GetDisabled

`func (o *BrokerageAuthorization) GetDisabled() bool`

GetDisabled returns the Disabled field if non-nil, zero value otherwise.

### GetDisabledOk

`func (o *BrokerageAuthorization) GetDisabledOk() (*bool, bool)`

GetDisabledOk returns a tuple with the Disabled field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabled

`func (o *BrokerageAuthorization) SetDisabled(v bool)`

SetDisabled sets Disabled field to given value.

### HasDisabled

`func (o *BrokerageAuthorization) HasDisabled() bool`

HasDisabled returns a boolean if a field has been set.

### GetDisabledDate

`func (o *BrokerageAuthorization) GetDisabledDate() time.Time`

GetDisabledDate returns the DisabledDate field if non-nil, zero value otherwise.

### GetDisabledDateOk

`func (o *BrokerageAuthorization) GetDisabledDateOk() (*time.Time, bool)`

GetDisabledDateOk returns a tuple with the DisabledDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabledDate

`func (o *BrokerageAuthorization) SetDisabledDate(v time.Time)`

SetDisabledDate sets DisabledDate field to given value.

### HasDisabledDate

`func (o *BrokerageAuthorization) HasDisabledDate() bool`

HasDisabledDate returns a boolean if a field has been set.

### SetDisabledDateNil

`func (o *BrokerageAuthorization) SetDisabledDateNil(b bool)`

 SetDisabledDateNil sets the value for DisabledDate to be an explicit nil

### UnsetDisabledDate
`func (o *BrokerageAuthorization) UnsetDisabledDate()`

UnsetDisabledDate ensures that no value is present for DisabledDate, not even an explicit nil
### GetMeta

`func (o *BrokerageAuthorization) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *BrokerageAuthorization) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *BrokerageAuthorization) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *BrokerageAuthorization) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### GetUpdatedDate

`func (o *BrokerageAuthorization) GetUpdatedDate() time.Time`

GetUpdatedDate returns the UpdatedDate field if non-nil, zero value otherwise.

### GetUpdatedDateOk

`func (o *BrokerageAuthorization) GetUpdatedDateOk() (*time.Time, bool)`

GetUpdatedDateOk returns a tuple with the UpdatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedDate

`func (o *BrokerageAuthorization) SetUpdatedDate(v time.Time)`

SetUpdatedDate sets UpdatedDate field to given value.

### HasUpdatedDate

`func (o *BrokerageAuthorization) HasUpdatedDate() bool`

HasUpdatedDate returns a boolean if a field has been set.

### GetIsEligibleForPayout

`func (o *BrokerageAuthorization) GetIsEligibleForPayout() bool`

GetIsEligibleForPayout returns the IsEligibleForPayout field if non-nil, zero value otherwise.

### GetIsEligibleForPayoutOk

`func (o *BrokerageAuthorization) GetIsEligibleForPayoutOk() (*bool, bool)`

GetIsEligibleForPayoutOk returns a tuple with the IsEligibleForPayout field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsEligibleForPayout

`func (o *BrokerageAuthorization) SetIsEligibleForPayout(v bool)`

SetIsEligibleForPayout sets IsEligibleForPayout field to given value.

### HasIsEligibleForPayout

`func (o *BrokerageAuthorization) HasIsEligibleForPayout() bool`

HasIsEligibleForPayout returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


