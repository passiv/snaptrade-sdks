# AnnuityAccountSyncStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Balances** | Pointer to **NullableTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

## Methods

### NewAnnuityAccountSyncStatus

`func NewAnnuityAccountSyncStatus() *AnnuityAccountSyncStatus`

NewAnnuityAccountSyncStatus instantiates a new AnnuityAccountSyncStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAnnuityAccountSyncStatusWithDefaults

`func NewAnnuityAccountSyncStatusWithDefaults() *AnnuityAccountSyncStatus`

NewAnnuityAccountSyncStatusWithDefaults instantiates a new AnnuityAccountSyncStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBalances

`func (o *AnnuityAccountSyncStatus) GetBalances() time.Time`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *AnnuityAccountSyncStatus) GetBalancesOk() (*time.Time, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *AnnuityAccountSyncStatus) SetBalances(v time.Time)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *AnnuityAccountSyncStatus) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### SetBalancesNil

`func (o *AnnuityAccountSyncStatus) SetBalancesNil(b bool)`

 SetBalancesNil sets the value for Balances to be an explicit nil

### UnsetBalances
`func (o *AnnuityAccountSyncStatus) UnsetBalances()`

UnsetBalances ensures that no value is present for Balances, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


