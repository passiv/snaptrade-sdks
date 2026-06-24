# Instrument

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
**FigiInstrument** | Pointer to [**NullableStockInstrumentFigiInstrument**](StockInstrumentFigiInstrument.md) |  | [optional] 
**OptionType** | **string** | Whether the contract is a call or put. | 
**StrikePrice** | **float64** | Strike price for the option contract. | 
**ExpirationDate** | **NullableString** | Expiration date of the contract. | 
**Underlying** | [**UnderlyingOptionInstrument**](UnderlyingOptionInstrument.md) |  | 
**RootSymbol** | **string** | Root symbol for the future contract. | 
**ExpirationCode** | **string** | Exchange expiration code for the contract. | 
**Multiplier** | Pointer to **NullableFloat64** | Multiplier for the future contract. | [optional] 
**UnderlyingInstrument** | [**UnderlyingCfdInstrument**](UnderlyingCfdInstrument.md) |  | 

## Methods

### NewInstrument

`func NewInstrument(kind string, id string, symbol string, rawSymbol string, optionType string, strikePrice float64, expirationDate NullableString, underlying UnderlyingOptionInstrument, rootSymbol string, expirationCode string, underlyingInstrument UnderlyingCfdInstrument, ) *Instrument`

NewInstrument instantiates a new Instrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewInstrumentWithDefaults

`func NewInstrumentWithDefaults() *Instrument`

NewInstrumentWithDefaults instantiates a new Instrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *Instrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *Instrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *Instrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *Instrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Instrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Instrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *Instrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Instrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Instrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *Instrument) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *Instrument) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *Instrument) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *Instrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *Instrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *Instrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *Instrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *Instrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *Instrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *Instrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *Instrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *Instrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *Instrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *Instrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *Instrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *Instrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *Instrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *Instrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *Instrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *Instrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *Instrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetFigiInstrument

`func (o *Instrument) GetFigiInstrument() StockInstrumentFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *Instrument) GetFigiInstrumentOk() (*StockInstrumentFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *Instrument) SetFigiInstrument(v StockInstrumentFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *Instrument) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *Instrument) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *Instrument) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil
### GetOptionType

`func (o *Instrument) GetOptionType() string`

GetOptionType returns the OptionType field if non-nil, zero value otherwise.

### GetOptionTypeOk

`func (o *Instrument) GetOptionTypeOk() (*string, bool)`

GetOptionTypeOk returns a tuple with the OptionType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionType

`func (o *Instrument) SetOptionType(v string)`

SetOptionType sets OptionType field to given value.


### GetStrikePrice

`func (o *Instrument) GetStrikePrice() float64`

GetStrikePrice returns the StrikePrice field if non-nil, zero value otherwise.

### GetStrikePriceOk

`func (o *Instrument) GetStrikePriceOk() (*float64, bool)`

GetStrikePriceOk returns a tuple with the StrikePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrikePrice

`func (o *Instrument) SetStrikePrice(v float64)`

SetStrikePrice sets StrikePrice field to given value.


### GetExpirationDate

`func (o *Instrument) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *Instrument) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *Instrument) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.


### SetExpirationDateNil

`func (o *Instrument) SetExpirationDateNil(b bool)`

 SetExpirationDateNil sets the value for ExpirationDate to be an explicit nil

### UnsetExpirationDate
`func (o *Instrument) UnsetExpirationDate()`

UnsetExpirationDate ensures that no value is present for ExpirationDate, not even an explicit nil
### GetUnderlying

`func (o *Instrument) GetUnderlying() UnderlyingOptionInstrument`

GetUnderlying returns the Underlying field if non-nil, zero value otherwise.

### GetUnderlyingOk

`func (o *Instrument) GetUnderlyingOk() (*UnderlyingOptionInstrument, bool)`

GetUnderlyingOk returns a tuple with the Underlying field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlying

`func (o *Instrument) SetUnderlying(v UnderlyingOptionInstrument)`

SetUnderlying sets Underlying field to given value.


### GetRootSymbol

`func (o *Instrument) GetRootSymbol() string`

GetRootSymbol returns the RootSymbol field if non-nil, zero value otherwise.

### GetRootSymbolOk

`func (o *Instrument) GetRootSymbolOk() (*string, bool)`

GetRootSymbolOk returns a tuple with the RootSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootSymbol

`func (o *Instrument) SetRootSymbol(v string)`

SetRootSymbol sets RootSymbol field to given value.


### GetExpirationCode

`func (o *Instrument) GetExpirationCode() string`

GetExpirationCode returns the ExpirationCode field if non-nil, zero value otherwise.

### GetExpirationCodeOk

`func (o *Instrument) GetExpirationCodeOk() (*string, bool)`

GetExpirationCodeOk returns a tuple with the ExpirationCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationCode

`func (o *Instrument) SetExpirationCode(v string)`

SetExpirationCode sets ExpirationCode field to given value.


### GetMultiplier

`func (o *Instrument) GetMultiplier() float64`

GetMultiplier returns the Multiplier field if non-nil, zero value otherwise.

### GetMultiplierOk

`func (o *Instrument) GetMultiplierOk() (*float64, bool)`

GetMultiplierOk returns a tuple with the Multiplier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMultiplier

`func (o *Instrument) SetMultiplier(v float64)`

SetMultiplier sets Multiplier field to given value.

### HasMultiplier

`func (o *Instrument) HasMultiplier() bool`

HasMultiplier returns a boolean if a field has been set.

### SetMultiplierNil

`func (o *Instrument) SetMultiplierNil(b bool)`

 SetMultiplierNil sets the value for Multiplier to be an explicit nil

### UnsetMultiplier
`func (o *Instrument) UnsetMultiplier()`

UnsetMultiplier ensures that no value is present for Multiplier, not even an explicit nil
### GetUnderlyingInstrument

`func (o *Instrument) GetUnderlyingInstrument() UnderlyingCfdInstrument`

GetUnderlyingInstrument returns the UnderlyingInstrument field if non-nil, zero value otherwise.

### GetUnderlyingInstrumentOk

`func (o *Instrument) GetUnderlyingInstrumentOk() (*UnderlyingCfdInstrument, bool)`

GetUnderlyingInstrumentOk returns a tuple with the UnderlyingInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingInstrument

`func (o *Instrument) SetUnderlyingInstrument(v UnderlyingCfdInstrument)`

SetUnderlyingInstrument sets UnderlyingInstrument field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


