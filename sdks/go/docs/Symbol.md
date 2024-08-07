# Symbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Symbol** | Pointer to **string** |  | [optional] 
**RawSymbol** | Pointer to **string** |  | [optional] 
**Name** | Pointer to **string** |  | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**Exchange** | Pointer to [**Exchange**](Exchange.md) |  | [optional] 
**Type** | Pointer to [**SecurityType**](SecurityType.md) |  | [optional] 
**FigiCode** | Pointer to **NullableString** |  | [optional] 
**FigiInstrument** | Pointer to [**NullableSymbolFigiInstrument**](SymbolFigiInstrument.md) |  | [optional] 

## Methods

### NewSymbol

`func NewSymbol() *Symbol`

NewSymbol instantiates a new Symbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSymbolWithDefaults

`func NewSymbolWithDefaults() *Symbol`

NewSymbolWithDefaults instantiates a new Symbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Symbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Symbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Symbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Symbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *Symbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Symbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Symbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Symbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetRawSymbol

`func (o *Symbol) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *Symbol) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *Symbol) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.

### HasRawSymbol

`func (o *Symbol) HasRawSymbol() bool`

HasRawSymbol returns a boolean if a field has been set.

### GetName

`func (o *Symbol) GetName() string`

GetName returns the Name field if non-nil, zero value otherwise.

### GetNameOk

`func (o *Symbol) GetNameOk() (*string, bool)`

GetNameOk returns a tuple with the Name field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetName

`func (o *Symbol) SetName(v string)`

SetName sets Name field to given value.

### HasName

`func (o *Symbol) HasName() bool`

HasName returns a boolean if a field has been set.

### GetCurrency

`func (o *Symbol) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *Symbol) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *Symbol) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *Symbol) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetExchange

`func (o *Symbol) GetExchange() Exchange`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *Symbol) GetExchangeOk() (*Exchange, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *Symbol) SetExchange(v Exchange)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *Symbol) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### GetType

`func (o *Symbol) GetType() SecurityType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *Symbol) GetTypeOk() (*SecurityType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *Symbol) SetType(v SecurityType)`

SetType sets Type field to given value.

### HasType

`func (o *Symbol) HasType() bool`

HasType returns a boolean if a field has been set.

### GetFigiCode

`func (o *Symbol) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *Symbol) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *Symbol) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *Symbol) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *Symbol) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *Symbol) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiInstrument

`func (o *Symbol) GetFigiInstrument() SymbolFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *Symbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *Symbol) SetFigiInstrument(v SymbolFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *Symbol) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *Symbol) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *Symbol) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


