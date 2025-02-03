# AccountUniversalActivitySymbol

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | [optional] 
**Symbol** | Pointer to **string** | The security&#39;s trading ticker symbol. For example \&quot;AAPL\&quot; for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. | [optional] 
**RawSymbol** | Pointer to **string** | The raw symbol is &#x60;symbol&#x60; with the exchange suffix removed. For example, if &#x60;symbol&#x60; is \&quot;VAB.TO\&quot;, then &#x60;raw_symbol&#x60; is \&quot;VAB\&quot;. | [optional] 
**Description** | Pointer to **NullableString** | A human-readable description of the security. This is usually the company name or ETF name. | [optional] 
**Currency** | Pointer to [**SymbolCurrency**](SymbolCurrency.md) |  | [optional] 
**Exchange** | Pointer to [**SymbolExchange**](SymbolExchange.md) |  | [optional] 
**Type** | Pointer to [**SecurityType**](SecurityType.md) |  | [optional] 
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the &#x60;figi_code&#x60; in the &#x60;figi_instrument&#x60; child property. | [optional] 
**FigiInstrument** | Pointer to [**NullableSymbolFigiInstrument**](SymbolFigiInstrument.md) |  | [optional] 

## Methods

### NewAccountUniversalActivitySymbol

`func NewAccountUniversalActivitySymbol() *AccountUniversalActivitySymbol`

NewAccountUniversalActivitySymbol instantiates a new AccountUniversalActivitySymbol object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountUniversalActivitySymbolWithDefaults

`func NewAccountUniversalActivitySymbolWithDefaults() *AccountUniversalActivitySymbol`

NewAccountUniversalActivitySymbolWithDefaults instantiates a new AccountUniversalActivitySymbol object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *AccountUniversalActivitySymbol) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *AccountUniversalActivitySymbol) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *AccountUniversalActivitySymbol) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *AccountUniversalActivitySymbol) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *AccountUniversalActivitySymbol) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *AccountUniversalActivitySymbol) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *AccountUniversalActivitySymbol) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *AccountUniversalActivitySymbol) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetRawSymbol

`func (o *AccountUniversalActivitySymbol) GetRawSymbol() string`

GetRawSymbol returns the RawSymbol field if non-nil, zero value otherwise.

### GetRawSymbolOk

`func (o *AccountUniversalActivitySymbol) GetRawSymbolOk() (*string, bool)`

GetRawSymbolOk returns a tuple with the RawSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetRawSymbol

`func (o *AccountUniversalActivitySymbol) SetRawSymbol(v string)`

SetRawSymbol sets RawSymbol field to given value.

### HasRawSymbol

`func (o *AccountUniversalActivitySymbol) HasRawSymbol() bool`

HasRawSymbol returns a boolean if a field has been set.

### GetDescription

`func (o *AccountUniversalActivitySymbol) GetDescription() string`

GetDescription returns the Description field if non-nil, zero value otherwise.

### GetDescriptionOk

`func (o *AccountUniversalActivitySymbol) GetDescriptionOk() (*string, bool)`

GetDescriptionOk returns a tuple with the Description field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDescription

`func (o *AccountUniversalActivitySymbol) SetDescription(v string)`

SetDescription sets Description field to given value.

### HasDescription

`func (o *AccountUniversalActivitySymbol) HasDescription() bool`

HasDescription returns a boolean if a field has been set.

### SetDescriptionNil

`func (o *AccountUniversalActivitySymbol) SetDescriptionNil(b bool)`

 SetDescriptionNil sets the value for Description to be an explicit nil

### UnsetDescription
`func (o *AccountUniversalActivitySymbol) UnsetDescription()`

UnsetDescription ensures that no value is present for Description, not even an explicit nil
### GetCurrency

`func (o *AccountUniversalActivitySymbol) GetCurrency() SymbolCurrency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountUniversalActivitySymbol) GetCurrencyOk() (*SymbolCurrency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountUniversalActivitySymbol) SetCurrency(v SymbolCurrency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *AccountUniversalActivitySymbol) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetExchange

`func (o *AccountUniversalActivitySymbol) GetExchange() SymbolExchange`

GetExchange returns the Exchange field if non-nil, zero value otherwise.

### GetExchangeOk

`func (o *AccountUniversalActivitySymbol) GetExchangeOk() (*SymbolExchange, bool)`

GetExchangeOk returns a tuple with the Exchange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchange

`func (o *AccountUniversalActivitySymbol) SetExchange(v SymbolExchange)`

SetExchange sets Exchange field to given value.

### HasExchange

`func (o *AccountUniversalActivitySymbol) HasExchange() bool`

HasExchange returns a boolean if a field has been set.

### GetType

`func (o *AccountUniversalActivitySymbol) GetType() SecurityType`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *AccountUniversalActivitySymbol) GetTypeOk() (*SecurityType, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *AccountUniversalActivitySymbol) SetType(v SecurityType)`

SetType sets Type field to given value.

### HasType

`func (o *AccountUniversalActivitySymbol) HasType() bool`

HasType returns a boolean if a field has been set.

### GetFigiCode

`func (o *AccountUniversalActivitySymbol) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *AccountUniversalActivitySymbol) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *AccountUniversalActivitySymbol) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *AccountUniversalActivitySymbol) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *AccountUniversalActivitySymbol) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *AccountUniversalActivitySymbol) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiInstrument

`func (o *AccountUniversalActivitySymbol) GetFigiInstrument() SymbolFigiInstrument`

GetFigiInstrument returns the FigiInstrument field if non-nil, zero value otherwise.

### GetFigiInstrumentOk

`func (o *AccountUniversalActivitySymbol) GetFigiInstrumentOk() (*SymbolFigiInstrument, bool)`

GetFigiInstrumentOk returns a tuple with the FigiInstrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiInstrument

`func (o *AccountUniversalActivitySymbol) SetFigiInstrument(v SymbolFigiInstrument)`

SetFigiInstrument sets FigiInstrument field to given value.

### HasFigiInstrument

`func (o *AccountUniversalActivitySymbol) HasFigiInstrument() bool`

HasFigiInstrument returns a boolean if a field has been set.

### SetFigiInstrumentNil

`func (o *AccountUniversalActivitySymbol) SetFigiInstrumentNil(b bool)`

 SetFigiInstrumentNil sets the value for FigiInstrument to be an explicit nil

### UnsetFigiInstrument
`func (o *AccountUniversalActivitySymbol) UnsetFigiInstrument()`

UnsetFigiInstrument ensures that no value is present for FigiInstrument, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


