# CfdInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Id** | **string** | Unique identifier for the canonical CFD instrument wrapper. | 
**Symbol** | **string** | Formatted symbol of the instrument underlying the CFD wrapper. | 
**RawSymbol** | **string** | Raw symbol of the instrument underlying the CFD wrapper. | 
**Description** | Pointer to **NullableString** | Human-readable description of the instrument underlying the CFD wrapper. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the instrument underlying the CFD wrapper. | [optional] 
**Exchange** | Pointer to **NullableString** | Exchange MIC code or exchange code for the instrument underlying the CFD wrapper. | [optional] 
**UnderlyingInstrument** | [**UnderlyingCfdInstrument**](UnderlyingCfdInstrument.md) |  | 

## Methods

### NewCfdInstrument

`func NewCfdInstrument(kind string, id string, symbol string, rawSymbol string, underlyingInstrument UnderlyingCfdInstrument, ) *CfdInstrument`

NewCfdInstrument instantiates a new CfdInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCfdInstrumentWithDefaults

`func NewCfdInstrumentWithDefaults() *CfdInstrument`

NewCfdInstrumentWithDefaults instantiates a new CfdInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *CfdInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *CfdInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *CfdInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *CfdInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *CfdInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *CfdInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *CfdInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *CfdInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *CfdInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *CfdInstrument) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *CfdInstrument) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *CfdInstrument) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *CfdInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *CfdInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *CfdInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *CfdInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *CfdInstrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *CfdInstrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *CfdInstrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *CfdInstrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *CfdInstrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *CfdInstrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *CfdInstrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *CfdInstrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *CfdInstrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *CfdInstrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *CfdInstrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *CfdInstrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *CfdInstrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *CfdInstrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetUnderlyingInstrument

`func (o *CfdInstrument) GetUnderlyingInstrument() UnderlyingCfdInstrument`

GetUnderlyingInstrument returns the UnderlyingInstrument field if non-nil, zero value otherwise.

### GetUnderlyingInstrumentOk

`func (o *CfdInstrument) GetUnderlyingInstrumentOk() (*UnderlyingCfdInstrument, bool)`

GetUnderlyingInstrumentOk returns a tuple with the UnderlyingInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingInstrument

`func (o *CfdInstrument) SetUnderlyingInstrument(v UnderlyingCfdInstrument)`

SetUnderlyingInstrument sets UnderlyingInstrument field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


