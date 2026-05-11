# FutureInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the future instrument. | 
**Symbol** | **string** | Display symbol for the future contract. | 
**RootSymbol** | **string** | Root symbol for the future contract. | 
**ExpirationCode** | **string** | Exchange expiration code for the contract. | 
**ExpirationDate** | Pointer to **NullableString** | Expiration date of the contract. | [optional] 
**Multiplier** | Pointer to **NullableFloat64** | Multiplier for the future contract. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the contract. | [optional] 
**Exchange** | Pointer to **NullableString** | Exchange MIC code or exchange code for the contract. | [optional] 

## Methods

### NewFutureInstrument

`func NewFutureInstrument(kind string, id string, symbol string, rootSymbol string, expirationCode string, ) *FutureInstrument`

NewFutureInstrument instantiates a new FutureInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFutureInstrumentWithDefaults

`func NewFutureInstrumentWithDefaults() *FutureInstrument`

NewFutureInstrumentWithDefaults instantiates a new FutureInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *FutureInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *FutureInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *FutureInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *FutureInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *FutureInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *FutureInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *FutureInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *FutureInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *FutureInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRootSymbol

`func (o *FutureInstrument) GetRootSymbol() string`

GetRootSymbol returns the RootSymbol field if non-nil, zero value otherwise.

### GetRootSymbolOk

`func (o *FutureInstrument) GetRootSymbolOk() (*string, bool)`

GetRootSymbolOk returns a tuple with the RootSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRootSymbol

`func (o *FutureInstrument) SetRootSymbol(v string)`

SetRootSymbol sets RootSymbol field to given value.


### GetExpirationCode

`func (o *FutureInstrument) GetExpirationCode() string`

GetExpirationCode returns the ExpirationCode field if non-nil, zero value otherwise.

### GetExpirationCodeOk

`func (o *FutureInstrument) GetExpirationCodeOk() (*string, bool)`

GetExpirationCodeOk returns a tuple with the ExpirationCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationCode

`func (o *FutureInstrument) SetExpirationCode(v string)`

SetExpirationCode sets ExpirationCode field to given value.


### GetExpirationDate

`func (o *FutureInstrument) GetExpirationDate() string`

GetExpirationDate returns the ExpirationDate field if non-nil, zero value otherwise.

### GetExpirationDateOk

`func (o *FutureInstrument) GetExpirationDateOk() (*string, bool)`

GetExpirationDateOk returns a tuple with the ExpirationDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpirationDate

`func (o *FutureInstrument) SetExpirationDate(v string)`

SetExpirationDate sets ExpirationDate field to given value.

### HasExpirationDate

`func (o *FutureInstrument) HasExpirationDate() bool`

HasExpirationDate returns a boolean if a field has been set.

### SetExpirationDateNil

`func (o *FutureInstrument) SetExpirationDateNil(b bool)`

 SetExpirationDateNil sets the value for ExpirationDate to be an explicit nil

### UnsetExpirationDate
`func (o *FutureInstrument) UnsetExpirationDate()`

UnsetExpirationDate ensures that no value is present for ExpirationDate, not even an explicit nil
### GetMultiplier

`func (o *FutureInstrument) GetMultiplier() float64`

GetMultiplier returns the Multiplier field if non-nil, zero value otherwise.

### GetMultiplierOk

`func (o *FutureInstrument) GetMultiplierOk() (*float64, bool)`

GetMultiplierOk returns a tuple with the Multiplier field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMultiplier

`func (o *FutureInstrument) SetMultiplier(v float64)`

SetMultiplier sets Multiplier field to given value.

### HasMultiplier

`func (o *FutureInstrument) HasMultiplier() bool`

HasMultiplier returns a boolean if a field has been set.

### SetMultiplierNil

`func (o *FutureInstrument) SetMultiplierNil(b bool)`

 SetMultiplierNil sets the value for Multiplier to be an explicit nil

### UnsetMultiplier
`func (o *FutureInstrument) UnsetMultiplier()`

UnsetMultiplier ensures that no value is present for Multiplier, not even an explicit nil
### GetCurrency

`func (o *FutureInstrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *FutureInstrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *FutureInstrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *FutureInstrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *FutureInstrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *FutureInstrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *FutureInstrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *FutureInstrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *FutureInstrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *FutureInstrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *FutureInstrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *FutureInstrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


