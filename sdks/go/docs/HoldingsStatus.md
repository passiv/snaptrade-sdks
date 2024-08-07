# HoldingsStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialSyncCompleted** | Pointer to **bool** |  | [optional] 
**LastSuccessfulSync** | Pointer to **NullableString** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

## Methods

### NewHoldingsStatus

`func NewHoldingsStatus() *HoldingsStatus`

NewHoldingsStatus instantiates a new HoldingsStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewHoldingsStatusWithDefaults

`func NewHoldingsStatusWithDefaults() *HoldingsStatus`

NewHoldingsStatusWithDefaults instantiates a new HoldingsStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInitialSyncCompleted

`func (o *HoldingsStatus) GetInitialSyncCompleted() bool`

GetInitialSyncCompleted returns the InitialSyncCompleted field if non-nil, zero value otherwise.

### GetInitialSyncCompletedOk

`func (o *HoldingsStatus) GetInitialSyncCompletedOk() (*bool, bool)`

GetInitialSyncCompletedOk returns a tuple with the InitialSyncCompleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInitialSyncCompleted

`func (o *HoldingsStatus) SetInitialSyncCompleted(v bool)`

SetInitialSyncCompleted sets InitialSyncCompleted field to given value.

### HasInitialSyncCompleted

`func (o *HoldingsStatus) HasInitialSyncCompleted() bool`

HasInitialSyncCompleted returns a boolean if a field has been set.

### GetLastSuccessfulSync

`func (o *HoldingsStatus) GetLastSuccessfulSync() string`

GetLastSuccessfulSync returns the LastSuccessfulSync field if non-nil, zero value otherwise.

### GetLastSuccessfulSyncOk

`func (o *HoldingsStatus) GetLastSuccessfulSyncOk() (*string, bool)`

GetLastSuccessfulSyncOk returns a tuple with the LastSuccessfulSync field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSuccessfulSync

`func (o *HoldingsStatus) SetLastSuccessfulSync(v string)`

SetLastSuccessfulSync sets LastSuccessfulSync field to given value.

### HasLastSuccessfulSync

`func (o *HoldingsStatus) HasLastSuccessfulSync() bool`

HasLastSuccessfulSync returns a boolean if a field has been set.

### SetLastSuccessfulSyncNil

`func (o *HoldingsStatus) SetLastSuccessfulSyncNil(b bool)`

 SetLastSuccessfulSyncNil sets the value for LastSuccessfulSync to be an explicit nil

### UnsetLastSuccessfulSync
`func (o *HoldingsStatus) UnsetLastSuccessfulSync()`

UnsetLastSuccessfulSync ensures that no value is present for LastSuccessfulSync, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


