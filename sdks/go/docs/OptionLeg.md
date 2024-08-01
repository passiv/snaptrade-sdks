# OptionLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Action** | Pointer to **string** |  | [optional] 
**OptionSymbolId** | Pointer to **string** | Obtained from calling options chain endpoint (option_id) | [optional] 
**Quantity** | Pointer to **float32** |  | [optional] 

## Methods

### NewOptionLeg

`func NewOptionLeg() *OptionLeg`

NewOptionLeg instantiates a new OptionLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionLegWithDefaults

`func NewOptionLegWithDefaults() *OptionLeg`

NewOptionLegWithDefaults instantiates a new OptionLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAction

`func (o *OptionLeg) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *OptionLeg) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *OptionLeg) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *OptionLeg) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetOptionSymbolId

`func (o *OptionLeg) GetOptionSymbolId() string`

GetOptionSymbolId returns the OptionSymbolId field if non-nil, zero value otherwise.

### GetOptionSymbolIdOk

`func (o *OptionLeg) GetOptionSymbolIdOk() (*string, bool)`

GetOptionSymbolIdOk returns a tuple with the OptionSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbolId

`func (o *OptionLeg) SetOptionSymbolId(v string)`

SetOptionSymbolId sets OptionSymbolId field to given value.

### HasOptionSymbolId

`func (o *OptionLeg) HasOptionSymbolId() bool`

HasOptionSymbolId returns a boolean if a field has been set.

### GetQuantity

`func (o *OptionLeg) GetQuantity() float32`

GetQuantity returns the Quantity field if non-nil, zero value otherwise.

### GetQuantityOk

`func (o *OptionLeg) GetQuantityOk() (*float32, bool)`

GetQuantityOk returns a tuple with the Quantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuantity

`func (o *OptionLeg) SetQuantity(v float32)`

SetQuantity sets Quantity field to given value.

### HasQuantity

`func (o *OptionLeg) HasQuantity() bool`

HasQuantity returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


