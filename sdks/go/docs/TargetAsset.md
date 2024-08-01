# TargetAsset

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Symbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Percent** | Pointer to **float32** |  | [optional] 
**IsSupported** | Pointer to **bool** |  | [optional] 
**IsExcluded** | Pointer to **bool** |  | [optional] 
**Meta** | Pointer to **map[string]interface{}** |  | [optional] 

## Methods

### NewTargetAsset

`func NewTargetAsset() *TargetAsset`

NewTargetAsset instantiates a new TargetAsset object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTargetAssetWithDefaults

`func NewTargetAssetWithDefaults() *TargetAsset`

NewTargetAssetWithDefaults instantiates a new TargetAsset object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *TargetAsset) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *TargetAsset) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *TargetAsset) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *TargetAsset) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *TargetAsset) GetSymbol() UniversalSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TargetAsset) GetSymbolOk() (*UniversalSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TargetAsset) SetSymbol(v UniversalSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TargetAsset) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetPercent

`func (o *TargetAsset) GetPercent() float32`

GetPercent returns the Percent field if non-nil, zero value otherwise.

### GetPercentOk

`func (o *TargetAsset) GetPercentOk() (*float32, bool)`

GetPercentOk returns a tuple with the Percent field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPercent

`func (o *TargetAsset) SetPercent(v float32)`

SetPercent sets Percent field to given value.

### HasPercent

`func (o *TargetAsset) HasPercent() bool`

HasPercent returns a boolean if a field has been set.

### GetIsSupported

`func (o *TargetAsset) GetIsSupported() bool`

GetIsSupported returns the IsSupported field if non-nil, zero value otherwise.

### GetIsSupportedOk

`func (o *TargetAsset) GetIsSupportedOk() (*bool, bool)`

GetIsSupportedOk returns a tuple with the IsSupported field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsSupported

`func (o *TargetAsset) SetIsSupported(v bool)`

SetIsSupported sets IsSupported field to given value.

### HasIsSupported

`func (o *TargetAsset) HasIsSupported() bool`

HasIsSupported returns a boolean if a field has been set.

### GetIsExcluded

`func (o *TargetAsset) GetIsExcluded() bool`

GetIsExcluded returns the IsExcluded field if non-nil, zero value otherwise.

### GetIsExcludedOk

`func (o *TargetAsset) GetIsExcludedOk() (*bool, bool)`

GetIsExcludedOk returns a tuple with the IsExcluded field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetIsExcluded

`func (o *TargetAsset) SetIsExcluded(v bool)`

SetIsExcluded sets IsExcluded field to given value.

### HasIsExcluded

`func (o *TargetAsset) HasIsExcluded() bool`

HasIsExcluded returns a boolean if a field has been set.

### GetMeta

`func (o *TargetAsset) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *TargetAsset) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *TargetAsset) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *TargetAsset) HasMeta() bool`

HasMeta returns a boolean if a field has been set.

### SetMetaNil

`func (o *TargetAsset) SetMetaNil(b bool)`

 SetMetaNil sets the value for Meta to be an explicit nil

### UnsetMeta
`func (o *TargetAsset) UnsetMeta()`

UnsetMeta ensures that no value is present for Meta, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


