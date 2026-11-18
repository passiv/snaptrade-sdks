# InstrumentNullable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the instrument. | 
**Symbol** | **string** | The formatted trading symbol for the security. | 
**RawSymbol** | **string** | The raw symbol without any exchange suffix. | 
**Description** | Pointer to **NullableString** | Human-readable description of the security. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the security listing. | [optional] 
**Exchange** | Pointer to **NullableString** | Exchange MIC code or exchange code for the security. | [optional] 
**FigiInstrument** | Pointer to [**NullableFigiInstrumentNullable**](FigiInstrumentNullable.md) |  | [optional] 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **float64** | Strike price for the option contract. | 
**ExpirationDate** | **string** | Expiration date of the option contract. | 
**Multiplier** | **NullableFloat64** | Notional multiplier for the option contract. | 
**Underlying** | [**FutureInstrument**](FutureInstrument.md) |  | 
**RootSymbol** | **string** | Root symbol for the future contract. | 
**ExpirationCode** | **string** | Exchange expiration code for the contract. | 
**UnderlyingInstrument** | [**UnderlyingTokenizedAssetInstrument**](UnderlyingTokenizedAssetInstrument.md) |  | 
**Code** | **string** | ISO-4217 code of the currency. | 

## Methods

### NewInstrumentNullable

`func NewInstrumentNullable(kind string, id string, symbol string, rawSymbol string, optionType string, strikePrice float64, expirationDate string, multiplier NullableFloat64, underlying FutureInstrument, rootSymbol string, expirationCode string, underlyingInstrument UnderlyingTokenizedAssetInstrument, code string, ) *InstrumentNullable`

NewInstrumentNullable instantiates a new InstrumentNullable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstrumentNullableWithDefaults

`func NewInstrumentNullableWithDefaults() *InstrumentNullable`

NewInstrumentNullableWithDefaults instantiates a new InstrumentNullable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *InstrumentNullable) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *InstrumentNullable) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *InstrumentNullable) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *InstrumentNullable) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *InstrumentNullable) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *InstrumentNullable) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *InstrumentNullable) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *InstrumentNullable) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *InstrumentNullable) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *InstrumentNullable) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *InstrumentNullable) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *InstrumentNullable) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *InstrumentNullable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *InstrumentNullable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *InstrumentNullable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *InstrumentNullable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *InstrumentNullable) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *InstrumentNullable) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *InstrumentNullable) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *InstrumentNullable) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *InstrumentNullable) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *InstrumentNullable) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *InstrumentNullable) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *InstrumentNullable) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *InstrumentNullable) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *InstrumentNullable) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *InstrumentNullable) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *InstrumentNullable) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *InstrumentNullable) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *InstrumentNullable) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetFigiInstrument

`func (o *InstrumentNullable) GetFigiInstrument() FigiInstrumentNullable`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *InstrumentNullable) GetFigiInstrumentOk() (*FigiInstrumentNullable, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *InstrumentNullable) SetFigiInstrument(v FigiInstrumentNullable)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *InstrumentNullable) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *InstrumentNullable) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *InstrumentNullable) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil
### GetOptionType

`func (o *InstrumentNullable) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *InstrumentNullable) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *InstrumentNullable) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *InstrumentNullable) GetStrikePrice() float64`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *InstrumentNullable) GetStrikePriceOk() (*float64, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *InstrumentNullable) SetStrikePrice(v float64)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *InstrumentNullable) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *InstrumentNullable) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *InstrumentNullable) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### GetMultiplier

`func (o *InstrumentNullable) GetMultiplier() float64`

GetMultiplier returns the Multiplier field if non-nil, zero value otherwise.

### GetMultiplierOk

`func (o *InstrumentNullable) GetMultiplierOk() (*float64, bool)`

GetMultiplierOk returns a tuple with the Multiplier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMultiplier

`func (o *InstrumentNullable) SetMultiplier(v float64)`

SetMultiplier sets Multiplier field to given value.


### SetMultiplierNil

`func (o *InstrumentNullable) SetMultiplierNil(b bool)`

 SetMultiplierNil sets the value for Multiplier to be an explicit nil

### UnsetMultiplier
`func (o *InstrumentNullable) UnsetMultiplier()`

UnsetMultiplier ensures that no value is present for Multiplier, not even an explicit nil
### GetUnderlying

`func (o *InstrumentNullable) GetUnderlying() FutureInstrument`

GetUnderlying returns the Underlying field if non-nil, zero value otherwise.

### GetUnderlyingOk

`func (o *InstrumentNullable) GetUnderlyingOk() (*FutureInstrument, bool)`

GetUnderlyingOk returns a tuple with the Underlying field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlying

`func (o *InstrumentNullable) SetUnderlying(v FutureInstrument)`

SetUnderlying sets Underlying field to given value.


### GetRootSymbol

`func (o *InstrumentNullable) GetRootSymbol() string`

GetRootSymbol returns the RootSymbol field if non-nil, zero value otherwise.

### GetRootSymbolOk

`func (o *InstrumentNullable) GetRootSymbolOk() (*string, bool)`

GetRootSymbolOk returns a tuple with the RootSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootSymbol

`func (o *InstrumentNullable) SetRootSymbol(v string)`

SetRootSymbol sets RootSymbol field to given value.


### GetExpirationCode

`func (o *InstrumentNullable) GetExpirationCode() string`

GetExpirationCode returns the ExpirationCode field if non-nil, zero value otherwise.

### GetExpirationCodeOk

`func (o *InstrumentNullable) GetExpirationCodeOk() (*string, bool)`

GetExpirationCodeOk returns a tuple with the ExpirationCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationCode

`func (o *InstrumentNullable) SetExpirationCode(v string)`

SetExpirationCode sets ExpirationCode field to given value.


### GetUnderlyingInstrument

`func (o *InstrumentNullable) GetUnderlyingInstrument() UnderlyingTokenizedAssetInstrument`

GetUnderlyingInstrument returns the UnderlyingInstrument field if non-nil, zero value otherwise.

### GetUnderlyingInstrumentOk

`func (o *InstrumentNullable) GetUnderlyingInstrumentOk() (*UnderlyingTokenizedAssetInstrument, bool)`

GetUnderlyingInstrumentOk returns a tuple with the UnderlyingInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingInstrument

`func (o *InstrumentNullable) SetUnderlyingInstrument(v UnderlyingTokenizedAssetInstrument)`

SetUnderlyingInstrument sets UnderlyingInstrument field to given value.


### GetCode

`func (o *InstrumentNullable) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *InstrumentNullable) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *InstrumentNullable) SetCode(v string)`

SetCode sets Code field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


