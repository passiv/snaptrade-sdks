# UniversalSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | 
**Symbol** | **string** | The security&#39;s trading ticker symbol. For example \&quot;AAPL\&quot; for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. | 
**RawSymbol** | **string** | The raw symbol is &#x60;symbol&#x60; with the exchange suffix removed. For example, if &#x60;symbol&#x60; is \&quot;VAB.TO\&quot;, then &#x60;raw_symbol&#x60; is \&quot;VAB\&quot;. | 
**Description** | Pointer to **NullableString** | A human-readable description of the security. This is usually the company name or ETF name. | [optional] 
**Currency** | [**SymbolCurrency**](SymbolCurrency.md) |  | 
**Exchange** | Pointer to [**SymbolExchange**](SymbolExchange.md) |  | [optional] 
**Type** | [**SecurityType**](SecurityType.md) |  | 
**Currencies** | [**[]Currency**](Currency.md) | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | 
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the &#x60;figi_code&#x60; in the &#x60;figi_instrument&#x60; child property. | [optional] 
**FigiInstrument** | Pointer to [**NullableSymbolFigiInstrument**](SymbolFigiInstrument.md) |  | [optional] 

## Methods

### NewUniversalSymbol

`func NewUniversalSymbol(id string, symbol string, rawSymbol string, currency SymbolCurrency, type_ SecurityType, currencies []Currency, ) *UniversalSymbol`

NewUniversalSymbol instantiates a new UniversalSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUniversalSymbolWithDefaults

`func NewUniversalSymbolWithDefaults() *UniversalSymbol`

NewUniversalSymbolWithDefaults instantiates a new UniversalSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *UniversalSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UniversalSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UniversalSymbol) SetId(v string)`

SetId sets Id field to given value.


### GetSymbol

`func (o *UniversalSymbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UniversalSymbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UniversalSymbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetRawSymbol

`func (o *UniversalSymbol) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *UniversalSymbol) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *UniversalSymbol) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.


### GetDescription

`func (o *UniversalSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UniversalSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UniversalSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UniversalSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *UniversalSymbol) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *UniversalSymbol) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *UniversalSymbol) GetCurrency() SymbolCurrency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UniversalSymbol) GetCurrencyOk() (*SymbolCurrency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UniversalSymbol) SetCurrency(v SymbolCurrency)`

SetCurrency sets Currency field to given value.


### GetExchange

`func (o *UniversalSymbol) GetExchange() SymbolExchange`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *UniversalSymbol) GetExchangeOk() (*SymbolExchange, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *UniversalSymbol) SetExchange(v SymbolExchange)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *UniversalSymbol) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### GetType

`func (o *UniversalSymbol) GetType() SecurityType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UniversalSymbol) GetTypeOk() (*SecurityType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UniversalSymbol) SetType(v SecurityType)`

SetType sets Type field to given value.


### GetCurrencies

`func (o *UniversalSymbol) GetCurrencies() []Currency`

GetCurrencies returns the Currencies field if non-nil, zero value otherwise.

### GetCurrenciesOk

`func (o *UniversalSymbol) GetCurrenciesOk() (*[]Currency, bool)`

GetCurrenciesOk returns a tuple with the Currencies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrencies

`func (o *UniversalSymbol) SetCurrencies(v []Currency)`

SetCurrencies sets Currencies field to given value.


### GetFigiCode

`func (o *UniversalSymbol) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *UniversalSymbol) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *UniversalSymbol) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *UniversalSymbol) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *UniversalSymbol) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *UniversalSymbol) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiInstrument

`func (o *UniversalSymbol) GetFigiInstrument() SymbolFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *UniversalSymbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *UniversalSymbol) SetFigiInstrument(v SymbolFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *UniversalSymbol) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *UniversalSymbol) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *UniversalSymbol) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


