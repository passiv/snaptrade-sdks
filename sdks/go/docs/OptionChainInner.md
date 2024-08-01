# OptionChainInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**ExpiryDate** | Pointer to **string** |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**ListingExchange** | Pointer to **string** |  | [optional] 
**OptionExerciseType** | Pointer to **string** |  | [optional] 
**ChainPerRoot** | Pointer to [**[]OptionChainInnerChainPerRootInner**](OptionChainInnerChainPerRootInner.md) |  | [optional] 

## Methods

### NewOptionChainInner

`func NewOptionChainInner() *OptionChainInner`

NewOptionChainInner instantiates a new OptionChainInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionChainInnerWithDefaults

`func NewOptionChainInnerWithDefaults() *OptionChainInner`

NewOptionChainInnerWithDefaults instantiates a new OptionChainInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetExpiryDate

`func (o *OptionChainInner) GetExpiryDate() string`

GetExpiryDate returns the ExpiryDate field if non-nil, zero value otherwise.

### GetExpiryDateOk

`func (o *OptionChainInner) GetExpiryDateOk() (*string, bool)`

GetExpiryDateOk returns a tuple with the ExpiryDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiryDate

`func (o *OptionChainInner) SetExpiryDate(v string)`

SetExpiryDate sets ExpiryDate field to given value.

### HasExpiryDate

`func (o *OptionChainInner) HasExpiryDate() bool`

HasExpiryDate returns a boolean if a field has been set.

### GetDescription

`func (o *OptionChainInner) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *OptionChainInner) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *OptionChainInner) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *OptionChainInner) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetListingExchange

`func (o *OptionChainInner) GetListingExchange() string`

GetListingExchange returns the ListingExchange field if non-nil, zero value otherwise.

### GetListingExchangeOk

`func (o *OptionChainInner) GetListingExchangeOk() (*string, bool)`

GetListingExchangeOk returns a tuple with the ListingExchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetListingExchange

`func (o *OptionChainInner) SetListingExchange(v string)`

SetListingExchange sets ListingExchange field to given value.

### HasListingExchange

`func (o *OptionChainInner) HasListingExchange() bool`

HasListingExchange returns a boolean if a field has been set.

### GetOptionExerciseType

`func (o *OptionChainInner) GetOptionExerciseType() string`

GetOptionExerciseType returns the OptionExerciseType field if non-nil, zero value otherwise.

### GetOptionExerciseTypeOk

`func (o *OptionChainInner) GetOptionExerciseTypeOk() (*string, bool)`

GetOptionExerciseTypeOk returns a tuple with the OptionExerciseType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionExerciseType

`func (o *OptionChainInner) SetOptionExerciseType(v string)`

SetOptionExerciseType sets OptionExerciseType field to given value.

### HasOptionExerciseType

`func (o *OptionChainInner) HasOptionExerciseType() bool`

HasOptionExerciseType returns a boolean if a field has been set.

### GetChainPerRoot

`func (o *OptionChainInner) GetChainPerRoot() []OptionChainInnerChainPerRootInner`

GetChainPerRoot returns the ChainPerRoot field if non-nil, zero value otherwise.

### GetChainPerRootOk

`func (o *OptionChainInner) GetChainPerRootOk() (*[]OptionChainInnerChainPerRootInner, bool)`

GetChainPerRootOk returns a tuple with the ChainPerRoot field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetChainPerRoot

`func (o *OptionChainInner) SetChainPerRoot(v []OptionChainInnerChainPerRootInner)`

SetChainPerRoot sets ChainPerRoot field to given value.

### HasChainPerRoot

`func (o *OptionChainInner) HasChainPerRoot() bool`

HasChainPerRoot returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


