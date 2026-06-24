# OptionInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the option instrument. | 
**Symbol** | **string** | OCC symbol for the option contract. | 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **float64** | Strike price for the option contract. | 
**ExpirationDate** | **string** | Expiration date of the option contract. | 
**Multiplier** | **float64** | Number of underlying shares per contract. Standard options are 100, mini options are 10. | 
**Description** | Pointer to **NullableString** | Human-readable description of the option contract. | [optional] 
**Underlying** | [**UnderlyingOptionInstrument**](UnderlyingOptionInstrument.md) |  | 

## Methods

### NewOptionInstrument

`func NewOptionInstrument(kind string, id string, symbol string, optionType string, strikePrice float64, expirationDate string, multiplier float64, underlying UnderlyingOptionInstrument, ) *OptionInstrument`

NewOptionInstrument instantiates a new OptionInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionInstrumentWithDefaults

`func NewOptionInstrumentWithDefaults() *OptionInstrument`

NewOptionInstrumentWithDefaults instantiates a new OptionInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *OptionInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *OptionInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *OptionInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *OptionInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OptionInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OptionInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *OptionInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *OptionInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *OptionInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetOptionType

`func (o *OptionInstrument) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *OptionInstrument) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *OptionInstrument) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *OptionInstrument) GetStrikePrice() float64`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *OptionInstrument) GetStrikePriceOk() (*float64, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *OptionInstrument) SetStrikePrice(v float64)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *OptionInstrument) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *OptionInstrument) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *OptionInstrument) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### GetMultiplier

`func (o *OptionInstrument) GetMultiplier() float64`

GetMultiplier returns the Multiplier field if non-nil, zero value otherwise.

### GetMultiplierOk

`func (o *OptionInstrument) GetMultiplierOk() (*float64, bool)`

GetMultiplierOk returns a tuple with the Multiplier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMultiplier

`func (o *OptionInstrument) SetMultiplier(v float64)`

SetMultiplier sets Multiplier field to given value.


### GetDescription

`func (o *OptionInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *OptionInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *OptionInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *OptionInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *OptionInstrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *OptionInstrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetUnderlying

`func (o *OptionInstrument) GetUnderlying() UnderlyingOptionInstrument`

GetUnderlying returns the Underlying field if non-nil, zero value otherwise.

### GetUnderlyingOk

`func (o *OptionInstrument) GetUnderlyingOk() (*UnderlyingOptionInstrument, bool)`

GetUnderlyingOk returns a tuple with the Underlying field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlying

`func (o *OptionInstrument) SetUnderlying(v UnderlyingOptionInstrument)`

SetUnderlying sets Underlying field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


