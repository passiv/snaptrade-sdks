# BrokerageSymbolSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | 
**Symbol** | **string** |  | 
**RawSymbol** | **string** |  | 
**Description** | Pointer to **NullableString** |  | [optional] 
**Currency** | [**Currency**](Currency.md) |  | 
**Exchange** | Pointer to [**Exchange**](Exchange.md) |  | [optional] 
**Type** | [**SecurityType**](SecurityType.md) |  | 
**Currencies** | [**[]Currency**](Currency.md) |  | 
**FigiCode** | Pointer to **NullableString** |  | [optional] 
**FigiInstrument** | Pointer to [**NullableSymbolFigiInstrument**](SymbolFigiInstrument.md) |  | [optional] 

## Methods

### NewBrokerageSymbolSymbol

`func NewBrokerageSymbolSymbol(id string, symbol string, rawSymbol string, currency Currency, type_ SecurityType, currencies []Currency, ) *BrokerageSymbolSymbol`

NewBrokerageSymbolSymbol instantiates a new BrokerageSymbolSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageSymbolSymbolWithDefaults

`func NewBrokerageSymbolSymbolWithDefaults() *BrokerageSymbolSymbol`

NewBrokerageSymbolSymbolWithDefaults instantiates a new BrokerageSymbolSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *BrokerageSymbolSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *BrokerageSymbolSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *BrokerageSymbolSymbol) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *BrokerageSymbolSymbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *BrokerageSymbolSymbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *BrokerageSymbolSymbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *BrokerageSymbolSymbol) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *BrokerageSymbolSymbol) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *BrokerageSymbolSymbol) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *BrokerageSymbolSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *BrokerageSymbolSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *BrokerageSymbolSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *BrokerageSymbolSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *BrokerageSymbolSymbol) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *BrokerageSymbolSymbol) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *BrokerageSymbolSymbol) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *BrokerageSymbolSymbol) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *BrokerageSymbolSymbol) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.


### GetExchange

`func (o *BrokerageSymbolSymbol) GetExchange() Exchange`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *BrokerageSymbolSymbol) GetExchangeOk() (*Exchange, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *BrokerageSymbolSymbol) SetExchange(v Exchange)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *BrokerageSymbolSymbol) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### GetType

`func (o *BrokerageSymbolSymbol) GetType() SecurityType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *BrokerageSymbolSymbol) GetTypeOk() (*SecurityType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *BrokerageSymbolSymbol) SetType(v SecurityType)`

SetType sets Type field to given value.


### GetCurrencies

`func (o *BrokerageSymbolSymbol) GetCurrencies() []Currency`

GetCurrencies returns the Currencies field if non-nil, zero value otherwise.

### GetCurrenciesOk

`func (o *BrokerageSymbolSymbol) GetCurrenciesOk() (*[]Currency, bool)`

GetCurrenciesOk returns a tuple with the Currencies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrencies

`func (o *BrokerageSymbolSymbol) SetCurrencies(v []Currency)`

SetCurrencies sets Currencies field to given value.


### GetFigiCode

`func (o *BrokerageSymbolSymbol) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *BrokerageSymbolSymbol) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *BrokerageSymbolSymbol) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *BrokerageSymbolSymbol) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *BrokerageSymbolSymbol) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *BrokerageSymbolSymbol) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiInstrument

`func (o *BrokerageSymbolSymbol) GetFigiInstrument() SymbolFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *BrokerageSymbolSymbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *BrokerageSymbolSymbol) SetFigiInstrument(v SymbolFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *BrokerageSymbolSymbol) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *BrokerageSymbolSymbol) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *BrokerageSymbolSymbol) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


