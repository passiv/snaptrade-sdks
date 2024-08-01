# NetDividend

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Amount** | Pointer to **NullableFloat32** |  | [optional] 
**Currency** | Pointer to **string** |  | [optional] 

## Methods

### NewNetDividend

`func NewNetDividend() *NetDividend`

NewNetDividend instantiates a new NetDividend object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewNetDividendWithDefaults

`func NewNetDividendWithDefaults() *NetDividend`

NewNetDividendWithDefaults instantiates a new NetDividend object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *NetDividend) GetSymbol() UniversalSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *NetDividend) GetSymbolOk() (*UniversalSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *NetDividend) SetSymbol(v UniversalSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *NetDividend) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetAmount

`func (o *NetDividend) GetAmount() float32`

GetAmount returns the Amount field if non-nil, zero value otherwise.

### GetAmountOk

`func (o *NetDividend) GetAmountOk() (*float32, bool)`

GetAmountOk returns a tuple with the Amount field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAmount

`func (o *NetDividend) SetAmount(v float32)`

SetAmount sets Amount field to given value.

### HasAmount

`func (o *NetDividend) HasAmount() bool`

HasAmount returns a boolean if a field has been set.

### SetAmountNil

`func (o *NetDividend) SetAmountNil(b bool)`

 SetAmountNil sets the value for Amount to be an explicit nil

### UnsetAmount
`func (o *NetDividend) UnsetAmount()`

UnsetAmount ensures that no value is present for Amount, not even an explicit nil
### GetCurrency

`func (o *NetDividend) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *NetDividend) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *NetDividend) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *NetDividend) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


