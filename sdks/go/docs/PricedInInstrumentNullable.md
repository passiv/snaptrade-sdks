# PricedInInstrumentNullable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** | Type of security instrument. | 
**Code** | **string** | ISO-4217 code of the currency. | 
**Id** | **string** | Unique identifier for the instrument. | 
**Symbol** | **string** | The formatted trading symbol for the security. | 
**RawSymbol** | **string** | The raw symbol without any exchange suffix. | 
**Description** | Pointer to **NullableString** | Human-readable description of the security. | [optional] 
**Currency** | Pointer to **NullableString** | ISO-4217 currency code for the security listing. | [optional] 
**Exchange** | Pointer to **NullableString** | Deprecated. Crypto instruments are not tied to a listing exchange, so this field is no longer populated and is omitted from responses. It will be removed in a future version. | [optional] 
**FigiInstrument** | Pointer to [**NullableFigiInstrumentNullable**](FigiInstrumentNullable.md) |  | [optional] 

## Methods

### NewPricedInInstrumentNullable

`func NewPricedInInstrumentNullable(kind string, code string, id string, symbol string, rawSymbol string, ) *PricedInInstrumentNullable`

NewPricedInInstrumentNullable instantiates a new PricedInInstrumentNullable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPricedInInstrumentNullableWithDefaults

`func NewPricedInInstrumentNullableWithDefaults() *PricedInInstrumentNullable`

NewPricedInInstrumentNullableWithDefaults instantiates a new PricedInInstrumentNullable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *PricedInInstrumentNullable) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *PricedInInstrumentNullable) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *PricedInInstrumentNullable) SetKind(v string)`

SetKind sets Kind field to given value.


### GetCode

`func (o *PricedInInstrumentNullable) GetCode() string`

GetCode returns the Code field if non-nil, zero value otherwise.

### GetCodeOk

`func (o *PricedInInstrumentNullable) GetCodeOk() (*string, bool)`

GetCodeOk returns a tuple with the Code field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCode

`func (o *PricedInInstrumentNullable) SetCode(v string)`

SetCode sets Code field to given value.


### GetId

`func (o *PricedInInstrumentNullable) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *PricedInInstrumentNullable) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *PricedInInstrumentNullable) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *PricedInInstrumentNullable) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *PricedInInstrumentNullable) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *PricedInInstrumentNullable) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *PricedInInstrumentNullable) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *PricedInInstrumentNullable) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *PricedInInstrumentNullable) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *PricedInInstrumentNullable) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *PricedInInstrumentNullable) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *PricedInInstrumentNullable) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *PricedInInstrumentNullable) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *PricedInInstrumentNullable) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *PricedInInstrumentNullable) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *PricedInInstrumentNullable) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *PricedInInstrumentNullable) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *PricedInInstrumentNullable) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *PricedInInstrumentNullable) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *PricedInInstrumentNullable) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *PricedInInstrumentNullable) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *PricedInInstrumentNullable) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *PricedInInstrumentNullable) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *PricedInInstrumentNullable) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *PricedInInstrumentNullable) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *PricedInInstrumentNullable) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *PricedInInstrumentNullable) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetFigiInstrument

`func (o *PricedInInstrumentNullable) GetFigiInstrument() FigiInstrumentNullable`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *PricedInInstrumentNullable) GetFigiInstrumentOk() (*FigiInstrumentNullable, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *PricedInInstrumentNullable) SetFigiInstrument(v FigiInstrumentNullable)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *PricedInInstrumentNullable) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *PricedInInstrumentNullable) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *PricedInInstrumentNullable) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


