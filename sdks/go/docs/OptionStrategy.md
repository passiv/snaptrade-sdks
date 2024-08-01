# OptionStrategy

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**UnderlyingSymbolId** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**StrategyType** | Pointer to **string** |  | [optional] 
**NumberOfLegs** | Pointer to **float32** |  | [optional] 
**Legs** | Pointer to [**[]OptionStrategyLegsInner**](OptionStrategyLegsInner.md) |  | [optional] 

## Methods

### NewOptionStrategy

`func NewOptionStrategy() *OptionStrategy`

NewOptionStrategy instantiates a new OptionStrategy object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionStrategyWithDefaults

`func NewOptionStrategyWithDefaults() *OptionStrategy`

NewOptionStrategyWithDefaults instantiates a new OptionStrategy object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OptionStrategy) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OptionStrategy) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OptionStrategy) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *OptionStrategy) HasId() bool`

HasId returns a boolean if a field has been set.

### GetUnderlyingSymbolId

`func (o *OptionStrategy) GetUnderlyingSymbolId() UniversalSymbol`

GetUnderlyingSymbolId returns the UnderlyingSymbolId field if non-nil, zero value otherwise.

### GetUnderlyingSymbolIdOk

`func (o *OptionStrategy) GetUnderlyingSymbolIdOk() (*UniversalSymbol, bool)`

GetUnderlyingSymbolIdOk returns a tuple with the UnderlyingSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingSymbolId

`func (o *OptionStrategy) SetUnderlyingSymbolId(v UniversalSymbol)`

SetUnderlyingSymbolId sets UnderlyingSymbolId field to given value.

### HasUnderlyingSymbolId

`func (o *OptionStrategy) HasUnderlyingSymbolId() bool`

HasUnderlyingSymbolId returns a boolean if a field has been set.

### GetStrategyType

`func (o *OptionStrategy) GetStrategyType() string`

GetStrategyType returns the StrategyType field if non-nil, zero value otherwise.

### GetStrategyTypeOk

`func (o *OptionStrategy) GetStrategyTypeOk() (*string, bool)`

GetStrategyTypeOk returns a tuple with the StrategyType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategyType

`func (o *OptionStrategy) SetStrategyType(v string)`

SetStrategyType sets StrategyType field to given value.

### HasStrategyType

`func (o *OptionStrategy) HasStrategyType() bool`

HasStrategyType returns a boolean if a field has been set.

### GetNumberOfLegs

`func (o *OptionStrategy) GetNumberOfLegs() float32`

GetNumberOfLegs returns the NumberOfLegs field if non-nil, zero value otherwise.

### GetNumberOfLegsOk

`func (o *OptionStrategy) GetNumberOfLegsOk() (*float32, bool)`

GetNumberOfLegsOk returns a tuple with the NumberOfLegs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNumberOfLegs

`func (o *OptionStrategy) SetNumberOfLegs(v float32)`

SetNumberOfLegs sets NumberOfLegs field to given value.

### HasNumberOfLegs

`func (o *OptionStrategy) HasNumberOfLegs() bool`

HasNumberOfLegs returns a boolean if a field has been set.

### GetLegs

`func (o *OptionStrategy) GetLegs() []OptionStrategyLegsInner`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *OptionStrategy) GetLegsOk() (*[]OptionStrategyLegsInner, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *OptionStrategy) SetLegs(v []OptionStrategyLegsInner)`

SetLegs sets Legs field to given value.

### HasLegs

`func (o *OptionStrategy) HasLegs() bool`

HasLegs returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


