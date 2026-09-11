# FutureOptionInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the future option instrument. | 
**Symbol** | **string** | Display symbol for the future option contract. | 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **float64** | Strike price for the option contract. | 
**ExpirationDate** | **string** | Expiration date of the option contract. | 
**Multiplier** | Pointer to **NullableFloat64** | Notional multiplier for the option contract. | [optional] 
**Description** | Pointer to **NullableString** | Human-readable description of the option contract. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the contract. | [optional] 
**Exchange** | Pointer to **NullableString** | Exchange MIC code or exchange code for the contract. | [optional] 
**Underlying** | [**FutureInstrument**](FutureInstrument.md) |  | 

## Methods

### NewFutureOptionInstrument

`func NewFutureOptionInstrument(kind string, id string, symbol string, optionType string, strikePrice float64, expirationDate string, underlying FutureInstrument, ) *FutureOptionInstrument`

NewFutureOptionInstrument instantiates a new FutureOptionInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFutureOptionInstrumentWithDefaults

`func NewFutureOptionInstrumentWithDefaults() *FutureOptionInstrument`

NewFutureOptionInstrumentWithDefaults instantiates a new FutureOptionInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *FutureOptionInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *FutureOptionInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *FutureOptionInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *FutureOptionInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *FutureOptionInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *FutureOptionInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *FutureOptionInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *FutureOptionInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *FutureOptionInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetOptionType

`func (o *FutureOptionInstrument) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *FutureOptionInstrument) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *FutureOptionInstrument) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *FutureOptionInstrument) GetStrikePrice() float64`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *FutureOptionInstrument) GetStrikePriceOk() (*float64, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *FutureOptionInstrument) SetStrikePrice(v float64)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *FutureOptionInstrument) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *FutureOptionInstrument) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *FutureOptionInstrument) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### GetMultiplier

`func (o *FutureOptionInstrument) GetMultiplier() float64`

GetMultiplier returns the Multiplier field if non-nil, zero value otherwise.

### GetMultiplierOk

`func (o *FutureOptionInstrument) GetMultiplierOk() (*float64, bool)`

GetMultiplierOk returns a tuple with the Multiplier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMultiplier

`func (o *FutureOptionInstrument) SetMultiplier(v float64)`

SetMultiplier sets Multiplier field to given value.

### HasMultiplier

`func (o *FutureOptionInstrument) HasMultiplier() bool`

HasMultiplier returns a boolean if a field has been set.

### SetMultiplierNil

`func (o *FutureOptionInstrument) SetMultiplierNil(b bool)`

 SetMultiplierNil sets the value for Multiplier to be an explicit nil

### UnsetMultiplier
`func (o *FutureOptionInstrument) UnsetMultiplier()`

UnsetMultiplier ensures that no value is present for Multiplier, not even an explicit nil
### GetDescription

`func (o *FutureOptionInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *FutureOptionInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *FutureOptionInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *FutureOptionInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *FutureOptionInstrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *FutureOptionInstrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *FutureOptionInstrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *FutureOptionInstrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *FutureOptionInstrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *FutureOptionInstrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *FutureOptionInstrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *FutureOptionInstrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *FutureOptionInstrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *FutureOptionInstrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *FutureOptionInstrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *FutureOptionInstrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *FutureOptionInstrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *FutureOptionInstrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetUnderlying

`func (o *FutureOptionInstrument) GetUnderlying() FutureInstrument`

GetUnderlying returns the Underlying field if non-nil, zero value otherwise.

### GetUnderlyingOk

`func (o *FutureOptionInstrument) GetUnderlyingOk() (*FutureInstrument, bool)`

GetUnderlyingOk returns a tuple with the Underlying field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlying

`func (o *FutureOptionInstrument) SetUnderlying(v FutureInstrument)`

SetUnderlying sets Underlying field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


