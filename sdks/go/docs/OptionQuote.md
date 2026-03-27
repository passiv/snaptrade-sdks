# OptionQuote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **string** | The OCC-formatted option symbol. | [optional] 
**SyntheticPrice** | Pointer to **float32** | The derived synthetic price of the contract. | [optional] 
**ImpliedVolatility** | Pointer to **float32** | The implied volatility of the option contract. | [optional] 
**Timestamp** | Pointer to **NullableTime** | The timestamp of the last update for the option quote. | [optional] 
**Greeks** | Pointer to [**OptionQuoteGreeks**](OptionQuoteGreeks.md) |  | [optional] 

## Methods

### NewOptionQuote

`func NewOptionQuote() *OptionQuote`

NewOptionQuote instantiates a new OptionQuote object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionQuoteWithDefaults

`func NewOptionQuoteWithDefaults() *OptionQuote`

NewOptionQuoteWithDefaults instantiates a new OptionQuote object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *OptionQuote) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *OptionQuote) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *OptionQuote) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *OptionQuote) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetSyntheticPrice

`func (o *OptionQuote) GetSyntheticPrice() float32`

GetSyntheticPrice returns the SyntheticPrice field if non-nil, zero value otherwise.

### GetSyntheticPriceOk

`func (o *OptionQuote) GetSyntheticPriceOk() (*float32, bool)`

GetSyntheticPriceOk returns a tuple with the SyntheticPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSyntheticPrice

`func (o *OptionQuote) SetSyntheticPrice(v float32)`

SetSyntheticPrice sets SyntheticPrice field to given value.

### HasSyntheticPrice

`func (o *OptionQuote) HasSyntheticPrice() bool`

HasSyntheticPrice returns a boolean if a field has been set.

### GetImpliedVolatility

`func (o *OptionQuote) GetImpliedVolatility() float32`

GetImpliedVolatility returns the ImpliedVolatility field if non-nil, zero value otherwise.

### GetImpliedVolatilityOk

`func (o *OptionQuote) GetImpliedVolatilityOk() (*float32, bool)`

GetImpliedVolatilityOk returns a tuple with the ImpliedVolatility field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetImpliedVolatility

`func (o *OptionQuote) SetImpliedVolatility(v float32)`

SetImpliedVolatility sets ImpliedVolatility field to given value.

### HasImpliedVolatility

`func (o *OptionQuote) HasImpliedVolatility() bool`

HasImpliedVolatility returns a boolean if a field has been set.

### GetTimestamp

`func (o *OptionQuote) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *OptionQuote) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *OptionQuote) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *OptionQuote) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.

### SetTimestampNil

`func (o *OptionQuote) SetTimestampNil(b bool)`

 SetTimestampNil sets the value for Timestamp to be an explicit nil

### UnsetTimestamp
`func (o *OptionQuote) UnsetTimestamp()`

UnsetTimestamp ensures that no value is present for Timestamp, not even an explicit nil
### GetGreeks

`func (o *OptionQuote) GetGreeks() OptionQuoteGreeks`

GetGreeks returns the Greeks field if non-nil, zero value otherwise.

### GetGreeksOk

`func (o *OptionQuote) GetGreeksOk() (*OptionQuoteGreeks, bool)`

GetGreeksOk returns a tuple with the Greeks field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGreeks

`func (o *OptionQuote) SetGreeks(v OptionQuoteGreeks)`

SetGreeks sets Greeks field to given value.

### HasGreeks

`func (o *OptionQuote) HasGreeks() bool`

HasGreeks returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


