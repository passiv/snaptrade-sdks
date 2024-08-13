# PositionSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 
**Description** | Pointer to **string** | This field is deprecated and the caller should use the &#x60;symbol&#x60; child property&#39;s &#x60;description&#x60; instead. | [optional] 
**Symbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**LocalId** | Pointer to **NullableString** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 
**IsQuotable** | Pointer to **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 
**IsTradable** | Pointer to **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 

## Methods

### NewPositionSymbol

`func NewPositionSymbol() *PositionSymbol`

NewPositionSymbol instantiates a new PositionSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPositionSymbolWithDefaults

`func NewPositionSymbolWithDefaults() *PositionSymbol`

NewPositionSymbolWithDefaults instantiates a new PositionSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *PositionSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PositionSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PositionSymbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *PositionSymbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetDescription

`func (o *PositionSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *PositionSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *PositionSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *PositionSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetSymbol

`func (o *PositionSymbol) GetSymbol() UniversalSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *PositionSymbol) GetSymbolOk() (*UniversalSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *PositionSymbol) SetSymbol(v UniversalSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *PositionSymbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetLocalId

`func (o *PositionSymbol) GetLocalId() string`

GetLocalId returns the LocalId field if non-nil, zero value otherwise.

### GetLocalIdOk

`func (o *PositionSymbol) GetLocalIdOk() (*string, bool)`

GetLocalIdOk returns a tuple with the LocalId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLocalId

`func (o *PositionSymbol) SetLocalId(v string)`

SetLocalId sets LocalId field to given value.

### HasLocalId

`func (o *PositionSymbol) HasLocalId() bool`

HasLocalId returns a boolean if a field has been set.

### SetLocalIdNil

`func (o *PositionSymbol) SetLocalIdNil(b bool)`

 SetLocalIdNil sets the value for LocalId to be an explicit nil

### UnsetLocalId
`func (o *PositionSymbol) UnsetLocalId()`

UnsetLocalId ensures that no value is present for LocalId, not even an explicit nil
### GetIsQuotable

`func (o *PositionSymbol) GetIsQuotable() bool`

GetIsQuotable returns the IsQuotable field if non-nil, zero value otherwise.

### GetIsQuotableOk

`func (o *PositionSymbol) GetIsQuotableOk() (*bool, bool)`

GetIsQuotableOk returns a tuple with the IsQuotable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsQuotable

`func (o *PositionSymbol) SetIsQuotable(v bool)`

SetIsQuotable sets IsQuotable field to given value.

### HasIsQuotable

`func (o *PositionSymbol) HasIsQuotable() bool`

HasIsQuotable returns a boolean if a field has been set.

### GetIsTradable

`func (o *PositionSymbol) GetIsTradable() bool`

GetIsTradable returns the IsTradable field if non-nil, zero value otherwise.

### GetIsTradableOk

`func (o *PositionSymbol) GetIsTradableOk() (*bool, bool)`

GetIsTradableOk returns a tuple with the IsTradable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsTradable

`func (o *PositionSymbol) SetIsTradable(v bool)`

SetIsTradable sets IsTradable field to given value.

### HasIsTradable

`func (o *PositionSymbol) HasIsTradable() bool`

HasIsTradable returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


