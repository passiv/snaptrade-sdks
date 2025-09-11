# CryptoTradingInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The instrument&#39;s trading ticker symbol | 
**Type** | **string** | The instrument&#39;s type | 

## Methods

### NewCryptoTradingInstrument

`func NewCryptoTradingInstrument(symbol string, type_ string, ) *CryptoTradingInstrument`

NewCryptoTradingInstrument instantiates a new CryptoTradingInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCryptoTradingInstrumentWithDefaults

`func NewCryptoTradingInstrumentWithDefaults() *CryptoTradingInstrument`

NewCryptoTradingInstrumentWithDefaults instantiates a new CryptoTradingInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *CryptoTradingInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *CryptoTradingInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *CryptoTradingInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetType

`func (o *CryptoTradingInstrument) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *CryptoTradingInstrument) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *CryptoTradingInstrument) SetType(v string)`

SetType sets Type field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


