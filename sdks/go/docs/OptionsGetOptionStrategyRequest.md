# OptionsGetOptionStrategyRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**UnderlyingSymbolId** | **string** |  | 
**Legs** | [**[]OptionLeg**](OptionLeg.md) |  | 
**StrategyType** | **string** |  | 

## Methods

### NewOptionsGetOptionStrategyRequest

`func NewOptionsGetOptionStrategyRequest(underlyingSymbolId string, legs []OptionLeg, strategyType string, ) *OptionsGetOptionStrategyRequest`

NewOptionsGetOptionStrategyRequest instantiates a new OptionsGetOptionStrategyRequest object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsGetOptionStrategyRequestWithDefaults

`func NewOptionsGetOptionStrategyRequestWithDefaults() *OptionsGetOptionStrategyRequest`

NewOptionsGetOptionStrategyRequestWithDefaults instantiates a new OptionsGetOptionStrategyRequest object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetUnderlyingSymbolId

`func (o *OptionsGetOptionStrategyRequest) GetUnderlyingSymbolId() string`

GetUnderlyingSymbolId returns the UnderlyingSymbolId field if non-nil, zero value otherwise.

### GetUnderlyingSymbolIdOk

`func (o *OptionsGetOptionStrategyRequest) GetUnderlyingSymbolIdOk() (*string, bool)`

GetUnderlyingSymbolIdOk returns a tuple with the UnderlyingSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingSymbolId

`func (o *OptionsGetOptionStrategyRequest) SetUnderlyingSymbolId(v string)`

SetUnderlyingSymbolId sets UnderlyingSymbolId field to given value.


### GetLegs

`func (o *OptionsGetOptionStrategyRequest) GetLegs() []OptionLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *OptionsGetOptionStrategyRequest) GetLegsOk() (*[]OptionLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *OptionsGetOptionStrategyRequest) SetLegs(v []OptionLeg)`

SetLegs sets Legs field to given value.


### GetStrategyType

`func (o *OptionsGetOptionStrategyRequest) GetStrategyType() string`

GetStrategyType returns the StrategyType field if non-nil, zero value otherwise.

### GetStrategyTypeOk

`func (o *OptionsGetOptionStrategyRequest) GetStrategyTypeOk() (*string, bool)`

GetStrategyTypeOk returns a tuple with the StrategyType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategyType

`func (o *OptionsGetOptionStrategyRequest) SetStrategyType(v string)`

SetStrategyType sets StrategyType field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


