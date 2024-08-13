# UnderlyingSymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | [optional] 
**Symbol** | Pointer to **string** | The security&#39;s trading ticker symbol. For example \&quot;AAPL\&quot; for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. | [optional] 
**RawSymbol** | Pointer to **string** | The raw symbol is &#x60;symbol&#x60; with the exchange suffix removed. For example, if &#x60;symbol&#x60; is \&quot;VAB.TO\&quot;, then &#x60;raw_symbol&#x60; is \&quot;VAB\&quot;. | [optional] 
**Description** | Pointer to **NullableString** | A human-readable description of the security. This is usually the company name or ETF name. | [optional] 
**Currency** | Pointer to [**UniversalSymbolCurrency**](UniversalSymbolCurrency.md) |  | [optional] 
**Exchange** | Pointer to [**UnderlyingSymbolExchange**](UnderlyingSymbolExchange.md) |  | [optional] 
**Type** | Pointer to [**UnderlyingSymbolType**](UnderlyingSymbolType.md) |  | [optional] 
**Currencies** | Pointer to [**[]Currency**](Currency.md) | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the &#x60;figi_code&#x60; in the &#x60;figi_instrument&#x60; child property. | [optional] 
**FigiInstrument** | Pointer to [**NullableSymbolFigiInstrument**](SymbolFigiInstrument.md) |  | [optional] 

## Methods

### NewUnderlyingSymbol

`func NewUnderlyingSymbol() *UnderlyingSymbol`

NewUnderlyingSymbol instantiates a new UnderlyingSymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewUnderlyingSymbolWithDefaults

`func NewUnderlyingSymbolWithDefaults() *UnderlyingSymbol`

NewUnderlyingSymbolWithDefaults instantiates a new UnderlyingSymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *UnderlyingSymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *UnderlyingSymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *UnderlyingSymbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *UnderlyingSymbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *UnderlyingSymbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *UnderlyingSymbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *UnderlyingSymbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *UnderlyingSymbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetRawSymbol

`func (o *UnderlyingSymbol) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *UnderlyingSymbol) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *UnderlyingSymbol) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.

### HasRawSymbol

`func (o *UnderlyingSymbol) HasRawSymbol() bool`

HasRawSymbol returns a boolean if a field has been set.

### GetDescription

`func (o *UnderlyingSymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *UnderlyingSymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *UnderlyingSymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *UnderlyingSymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *UnderlyingSymbol) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *UnderlyingSymbol) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *UnderlyingSymbol) GetCurrency() UniversalSymbolCurrency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *UnderlyingSymbol) GetCurrencyOk() (*UniversalSymbolCurrency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *UnderlyingSymbol) SetCurrency(v UniversalSymbolCurrency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *UnderlyingSymbol) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetExchange

`func (o *UnderlyingSymbol) GetExchange() UnderlyingSymbolExchange`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *UnderlyingSymbol) GetExchangeOk() (*UnderlyingSymbolExchange, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *UnderlyingSymbol) SetExchange(v UnderlyingSymbolExchange)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *UnderlyingSymbol) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### GetType

`func (o *UnderlyingSymbol) GetType() UnderlyingSymbolType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *UnderlyingSymbol) GetTypeOk() (*UnderlyingSymbolType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *UnderlyingSymbol) SetType(v UnderlyingSymbolType)`

SetType sets Type field to given value.

### HasType

`func (o *UnderlyingSymbol) HasType() bool`

HasType returns a boolean if a field has been set.

### GetCurrencies

`func (o *UnderlyingSymbol) GetCurrencies() []Currency`

GetCurrencies returns the Currencies field if non-nil, zero value otherwise.

### GetCurrenciesOk

`func (o *UnderlyingSymbol) GetCurrenciesOk() (*[]Currency, bool)`

GetCurrenciesOk returns a tuple with the Currencies field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrencies

`func (o *UnderlyingSymbol) SetCurrencies(v []Currency)`

SetCurrencies sets Currencies field to given value.

### HasCurrencies

`func (o *UnderlyingSymbol) HasCurrencies() bool`

HasCurrencies returns a boolean if a field has been set.

### GetFigiCode

`func (o *UnderlyingSymbol) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *UnderlyingSymbol) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *UnderlyingSymbol) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *UnderlyingSymbol) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *UnderlyingSymbol) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *UnderlyingSymbol) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiInstrument

`func (o *UnderlyingSymbol) GetFigiInstrument() SymbolFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *UnderlyingSymbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *UnderlyingSymbol) SetFigiInstrument(v SymbolFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *UnderlyingSymbol) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *UnderlyingSymbol) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *UnderlyingSymbol) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


