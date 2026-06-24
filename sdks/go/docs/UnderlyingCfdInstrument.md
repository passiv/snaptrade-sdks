# UnderlyingCfdInstrument

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

## Methods

### NewUnderlyingCfdInstrument

`func NewUnderlyingCfdInstrument(kind string, id string, symbol string, rawSymbol string, ) *UnderlyingCfdInstrument`

NewUnderlyingCfdInstrument instantiates a new UnderlyingCfdInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUnderlyingCfdInstrumentWithDefaults

`func NewUnderlyingCfdInstrumentWithDefaults() *UnderlyingCfdInstrument`

NewUnderlyingCfdInstrumentWithDefaults instantiates a new UnderlyingCfdInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *UnderlyingCfdInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *UnderlyingCfdInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *UnderlyingCfdInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *UnderlyingCfdInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UnderlyingCfdInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UnderlyingCfdInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *UnderlyingCfdInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UnderlyingCfdInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UnderlyingCfdInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *UnderlyingCfdInstrument) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *UnderlyingCfdInstrument) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *UnderlyingCfdInstrument) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *UnderlyingCfdInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UnderlyingCfdInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UnderlyingCfdInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UnderlyingCfdInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *UnderlyingCfdInstrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *UnderlyingCfdInstrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *UnderlyingCfdInstrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UnderlyingCfdInstrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UnderlyingCfdInstrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UnderlyingCfdInstrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *UnderlyingCfdInstrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *UnderlyingCfdInstrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *UnderlyingCfdInstrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *UnderlyingCfdInstrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *UnderlyingCfdInstrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *UnderlyingCfdInstrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *UnderlyingCfdInstrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *UnderlyingCfdInstrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetFigiInstrument

`func (o *UnderlyingCfdInstrument) GetFigiInstrument() StockInstrumentFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *UnderlyingCfdInstrument) GetFigiInstrumentOk() (*StockInstrumentFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *UnderlyingCfdInstrument) SetFigiInstrument(v StockInstrumentFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *UnderlyingCfdInstrument) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *UnderlyingCfdInstrument) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *UnderlyingCfdInstrument) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


