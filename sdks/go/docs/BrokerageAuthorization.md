# BrokerageAuthorization

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**CreatedDate** | Pointer to **string** | Time | [optional] 
**UpdatedDate** | Pointer to **string** | Time | [optional] 
**Brokerage** | Pointer to [**Brokerage**](Brokerage.md) |  | [optional] 
**Name** | Pointer to **string** | Connection Name | [optional] 
**Type** | Pointer to **string** |  | [optional] 
**Disabled** | Pointer to **bool** |  | [optional] 
**DisabledDate** | Pointer to **NullableString** | Disabled date | [optional] 
**Meta** | Pointer to **map[string]interface{}** | Additional data about brokerage authorization | [optional] 

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

`func (o *BrokerageAuthorization) GetCreatedDate() string`

GetCreatedDate returns the CreatedDate field if non-nil, zero value otherwise.

### GetCreatedDateOk

`func (o *BrokerageAuthorization) GetCreatedDateOk() (*string, bool)`

GetCreatedDateOk returns a tuple with the CreatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCreatedDate

`func (o *BrokerageAuthorization) SetCreatedDate(v string)`

SetCreatedDate sets CreatedDate field to given value.

### HasCreatedDate

`func (o *BrokerageAuthorization) HasCreatedDate() bool`

HasCreatedDate returns a boolean if a field has been set.

### GetUpdatedDate

`func (o *BrokerageAuthorization) GetUpdatedDate() string`

GetUpdatedDate returns the UpdatedDate field if non-nil, zero value otherwise.

### GetUpdatedDateOk

`func (o *BrokerageAuthorization) GetUpdatedDateOk() (*string, bool)`

GetUpdatedDateOk returns a tuple with the UpdatedDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUpdatedDate

`func (o *BrokerageAuthorization) SetUpdatedDate(v string)`

SetUpdatedDate sets UpdatedDate field to given value.

### HasUpdatedDate

`func (o *BrokerageAuthorization) HasUpdatedDate() bool`

HasUpdatedDate returns a boolean if a field has been set.

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

`func (o *BrokerageAuthorization) GetDisabledDate() string`

GetDisabledDate returns the DisabledDate field if non-nil, zero value otherwise.

### GetDisabledDateOk

`func (o *BrokerageAuthorization) GetDisabledDateOk() (*string, bool)`

GetDisabledDateOk returns a tuple with the DisabledDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDisabledDate

`func (o *BrokerageAuthorization) SetDisabledDate(v string)`

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


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


