# BrokerageSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Symbol** | Pointer to [**NullableBrokerageSymbolSymbol**](BrokerageSymbolSymbol.md) |  | [optional] 
**BrokerageAuthorization** | Pointer to [**BrokerageAuthorization**](BrokerageAuthorization.md) |  | [optional] 
**Description** | Pointer to **string** |  | [optional] 
**AllowsFractionalUnits** | Pointer to **NullableBool** |  | [optional] 
**OptionSymbol** | Pointer to [**NullableBrokerageSymbolOptionSymbol**](BrokerageSymbolOptionSymbol.md) |  | [optional] 

## Methods

### NewBrokerageSymbol

`func NewBrokerageSymbol() *BrokerageSymbol`

NewBrokerageSymbol instantiates a new BrokerageSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageSymbolWithDefaults

`func NewBrokerageSymbolWithDefaults() *BrokerageSymbol`

NewBrokerageSymbolWithDefaults instantiates a new BrokerageSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *BrokerageSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrokerageSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrokerageSymbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *BrokerageSymbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *BrokerageSymbol) GetSymbol() BrokerageSymbolSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *BrokerageSymbol) GetSymbolOk() (*BrokerageSymbolSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *BrokerageSymbol) SetSymbol(v BrokerageSymbolSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *BrokerageSymbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *BrokerageSymbol) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *BrokerageSymbol) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetBrokerageAuthorization

`func (o *BrokerageSymbol) GetBrokerageAuthorization() BrokerageAuthorization`

GetBrokerageAuthorization returns the BrokerageAuthorization field if non-nil, zero value otherwise.

### GetBrokerageAuthorizationOk

`func (o *BrokerageSymbol) GetBrokerageAuthorizationOk() (*BrokerageAuthorization, bool)`

GetBrokerageAuthorizationOk returns a tuple with the BrokerageAuthorization field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBrokerageAuthorization

`func (o *BrokerageSymbol) SetBrokerageAuthorization(v BrokerageAuthorization)`

SetBrokerageAuthorization sets BrokerageAuthorization field to given value.

### HasBrokerageAuthorization

`func (o *BrokerageSymbol) HasBrokerageAuthorization() bool`

HasBrokerageAuthorization returns a boolean if a field has been set.

### GetDescription

`func (o *BrokerageSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *BrokerageSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *BrokerageSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *BrokerageSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### GetAllowsFractionalUnits

`func (o *BrokerageSymbol) GetAllowsFractionalUnits() bool`

GetAllowsFractionalUnits returns the AllowsFractionalUnits field if non-nil, zero value otherwise.

### GetAllowsFractionalUnitsOk

`func (o *BrokerageSymbol) GetAllowsFractionalUnitsOk() (*bool, bool)`

GetAllowsFractionalUnitsOk returns a tuple with the AllowsFractionalUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAllowsFractionalUnits

`func (o *BrokerageSymbol) SetAllowsFractionalUnits(v bool)`

SetAllowsFractionalUnits sets AllowsFractionalUnits field to given value.

### HasAllowsFractionalUnits

`func (o *BrokerageSymbol) HasAllowsFractionalUnits() bool`

HasAllowsFractionalUnits returns a boolean if a field has been set.

### SetAllowsFractionalUnitsNil

`func (o *BrokerageSymbol) SetAllowsFractionalUnitsNil(b bool)`

 SetAllowsFractionalUnitsNil sets the value for AllowsFractionalUnits to be an explicit nil

### UnsetAllowsFractionalUnits
`func (o *BrokerageSymbol) UnsetAllowsFractionalUnits()`

UnsetAllowsFractionalUnits ensures that no value is present for AllowsFractionalUnits, not even an explicit nil
### GetOptionSymbol

`func (o *BrokerageSymbol) GetOptionSymbol() BrokerageSymbolOptionSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *BrokerageSymbol) GetOptionSymbolOk() (*BrokerageSymbolOptionSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *BrokerageSymbol) SetOptionSymbol(v BrokerageSymbolOptionSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *BrokerageSymbol) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### SetOptionSymbolNil

`func (o *BrokerageSymbol) SetOptionSymbolNil(b bool)`

 SetOptionSymbolNil sets the value for OptionSymbol to be an explicit nil

### UnsetOptionSymbol
`func (o *BrokerageSymbol) UnsetOptionSymbol()`

UnsetOptionSymbol ensures that no value is present for OptionSymbol, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


