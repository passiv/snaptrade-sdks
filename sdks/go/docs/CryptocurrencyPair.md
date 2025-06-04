# CryptocurrencyPair

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **string** | Cryptocurrency pair instrument symbol | [optional] 
**Base** | **string** | The base currency of a pair (e.g., \&quot;BTC\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes.  | 
**Quote** | **string** | The quote currency of a pair (e.g., \&quot;USD\&quot; in BTC/USD). Either fiat or cryptocurrency symbol, for fiat use ISO-4217 codes.  | 

## Methods

### NewCryptocurrencyPair

`func NewCryptocurrencyPair(base string, quote string, ) *CryptocurrencyPair`

NewCryptocurrencyPair instantiates a new CryptocurrencyPair object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCryptocurrencyPairWithDefaults

`func NewCryptocurrencyPairWithDefaults() *CryptocurrencyPair`

NewCryptocurrencyPairWithDefaults instantiates a new CryptocurrencyPair object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *CryptocurrencyPair) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *CryptocurrencyPair) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *CryptocurrencyPair) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *CryptocurrencyPair) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetBase

`func (o *CryptocurrencyPair) GetBase() string`

GetBase returns the Base field if non-nil, zero value otherwise.

### GetBaseOk

`func (o *CryptocurrencyPair) GetBaseOk() (*string, bool)`

GetBaseOk returns a tuple with the Base field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBase

`func (o *CryptocurrencyPair) SetBase(v string)`

SetBase sets Base field to given value.


### GetQuote

`func (o *CryptocurrencyPair) GetQuote() string`

GetQuote returns the Quote field if non-nil, zero value otherwise.

### GetQuoteOk

`func (o *CryptocurrencyPair) GetQuoteOk() (*string, bool)`

GetQuoteOk returns a tuple with the Quote field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetQuote

`func (o *CryptocurrencyPair) SetQuote(v string)`

SetQuote sets Quote field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


