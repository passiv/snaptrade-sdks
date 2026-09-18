# UnderlyingTokenizedAssetInstrument

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

## Methods

### NewUnderlyingTokenizedAssetInstrument

`func NewUnderlyingTokenizedAssetInstrument(kind string, id string, symbol string, rawSymbol string, ) *UnderlyingTokenizedAssetInstrument`

NewUnderlyingTokenizedAssetInstrument instantiates a new UnderlyingTokenizedAssetInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUnderlyingTokenizedAssetInstrumentWithDefaults

`func NewUnderlyingTokenizedAssetInstrumentWithDefaults() *UnderlyingTokenizedAssetInstrument`

NewUnderlyingTokenizedAssetInstrumentWithDefaults instantiates a new UnderlyingTokenizedAssetInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *UnderlyingTokenizedAssetInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *UnderlyingTokenizedAssetInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *UnderlyingTokenizedAssetInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetId

`func (o *UnderlyingTokenizedAssetInstrument) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UnderlyingTokenizedAssetInstrument) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UnderlyingTokenizedAssetInstrument) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *UnderlyingTokenizedAssetInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UnderlyingTokenizedAssetInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UnderlyingTokenizedAssetInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *UnderlyingTokenizedAssetInstrument) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *UnderlyingTokenizedAssetInstrument) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *UnderlyingTokenizedAssetInstrument) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *UnderlyingTokenizedAssetInstrument) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UnderlyingTokenizedAssetInstrument) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UnderlyingTokenizedAssetInstrument) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UnderlyingTokenizedAssetInstrument) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *UnderlyingTokenizedAssetInstrument) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *UnderlyingTokenizedAssetInstrument) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *UnderlyingTokenizedAssetInstrument) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UnderlyingTokenizedAssetInstrument) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UnderlyingTokenizedAssetInstrument) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UnderlyingTokenizedAssetInstrument) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *UnderlyingTokenizedAssetInstrument) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *UnderlyingTokenizedAssetInstrument) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetExchange

`func (o *UnderlyingTokenizedAssetInstrument) GetExchange() string`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *UnderlyingTokenizedAssetInstrument) GetExchangeOk() (*string, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *UnderlyingTokenizedAssetInstrument) SetExchange(v string)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *UnderlyingTokenizedAssetInstrument) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### SetExchangeNil

`func (o *UnderlyingTokenizedAssetInstrument) SetExchangeNil(b bool)`

 SetExchangeNil sets the value for Exchange to be an explicit nil

### UnsetExchange
`func (o *UnderlyingTokenizedAssetInstrument) UnsetExchange()`

UnsetExchange ensures that no value is present for Exchange, not even an explicit nil
### GetFigiInstrument

`func (o *UnderlyingTokenizedAssetInstrument) GetFigiInstrument() FigiInstrumentNullable`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *UnderlyingTokenizedAssetInstrument) GetFigiInstrumentOk() (*FigiInstrumentNullable, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *UnderlyingTokenizedAssetInstrument) SetFigiInstrument(v FigiInstrumentNullable)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *UnderlyingTokenizedAssetInstrument) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *UnderlyingTokenizedAssetInstrument) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *UnderlyingTokenizedAssetInstrument) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


