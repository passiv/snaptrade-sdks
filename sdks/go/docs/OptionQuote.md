# OptionQuote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **string** | The OCC-formatted option symbol. | [optional] 
**BidPrice** | Pointer to **float32** | The best bid price for the option contract. | [optional] 
**BidSize** | Pointer to **int32** | The number of contracts available at the bid price. | [optional] 
**AskPrice** | Pointer to **float32** | The best ask price for the option contract. | [optional] 
**AskSize** | Pointer to **int32** | The number of contracts available at the ask price. | [optional] 
**LastPrice** | Pointer to **float32** | The price of the last trade for the option contract. | [optional] 
**LastSize** | Pointer to **int32** | The number of contracts in the last trade. | [optional] 
**OpenInterest** | Pointer to **int32** | The total number of outstanding contracts. | [optional] 
**Volume** | Pointer to **int32** | The total number of contracts traded during the current session. | [optional] 
**ImpliedVolatility** | Pointer to **float32** | The implied volatility of the option contract. | [optional] 
**UnderlyingPrice** | Pointer to **float32** | The current price of the underlying security. | [optional] 
**Timestamp** | Pointer to **NullableTime** | The timestamp of the quote. | [optional] 

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

### GetBidPrice

`func (o *OptionQuote) GetBidPrice() float32`

GetBidPrice returns the BidPrice field if non-nil, zero value otherwise.

### GetBidPriceOk

`func (o *OptionQuote) GetBidPriceOk() (*float32, bool)`

GetBidPriceOk returns a tuple with the BidPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidPrice

`func (o *OptionQuote) SetBidPrice(v float32)`

SetBidPrice sets BidPrice field to given value.

### HasBidPrice

`func (o *OptionQuote) HasBidPrice() bool`

HasBidPrice returns a boolean if a field has been set.

### GetBidSize

`func (o *OptionQuote) GetBidSize() int32`

GetBidSize returns the BidSize field if non-nil, zero value otherwise.

### GetBidSizeOk

`func (o *OptionQuote) GetBidSizeOk() (*int32, bool)`

GetBidSizeOk returns a tuple with the BidSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidSize

`func (o *OptionQuote) SetBidSize(v int32)`

SetBidSize sets BidSize field to given value.

### HasBidSize

`func (o *OptionQuote) HasBidSize() bool`

HasBidSize returns a boolean if a field has been set.

### GetAskPrice

`func (o *OptionQuote) GetAskPrice() float32`

GetAskPrice returns the AskPrice field if non-nil, zero value otherwise.

### GetAskPriceOk

`func (o *OptionQuote) GetAskPriceOk() (*float32, bool)`

GetAskPriceOk returns a tuple with the AskPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskPrice

`func (o *OptionQuote) SetAskPrice(v float32)`

SetAskPrice sets AskPrice field to given value.

### HasAskPrice

`func (o *OptionQuote) HasAskPrice() bool`

HasAskPrice returns a boolean if a field has been set.

### GetAskSize

`func (o *OptionQuote) GetAskSize() int32`

GetAskSize returns the AskSize field if non-nil, zero value otherwise.

### GetAskSizeOk

`func (o *OptionQuote) GetAskSizeOk() (*int32, bool)`

GetAskSizeOk returns a tuple with the AskSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskSize

`func (o *OptionQuote) SetAskSize(v int32)`

SetAskSize sets AskSize field to given value.

### HasAskSize

`func (o *OptionQuote) HasAskSize() bool`

HasAskSize returns a boolean if a field has been set.

### GetLastPrice

`func (o *OptionQuote) GetLastPrice() float32`

GetLastPrice returns the LastPrice field if non-nil, zero value otherwise.

### GetLastPriceOk

`func (o *OptionQuote) GetLastPriceOk() (*float32, bool)`

GetLastPriceOk returns a tuple with the LastPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastPrice

`func (o *OptionQuote) SetLastPrice(v float32)`

SetLastPrice sets LastPrice field to given value.

### HasLastPrice

`func (o *OptionQuote) HasLastPrice() bool`

HasLastPrice returns a boolean if a field has been set.

### GetLastSize

`func (o *OptionQuote) GetLastSize() int32`

GetLastSize returns the LastSize field if non-nil, zero value otherwise.

### GetLastSizeOk

`func (o *OptionQuote) GetLastSizeOk() (*int32, bool)`

GetLastSizeOk returns a tuple with the LastSize field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSize

`func (o *OptionQuote) SetLastSize(v int32)`

SetLastSize sets LastSize field to given value.

### HasLastSize

`func (o *OptionQuote) HasLastSize() bool`

HasLastSize returns a boolean if a field has been set.

### GetOpenInterest

`func (o *OptionQuote) GetOpenInterest() int32`

GetOpenInterest returns the OpenInterest field if non-nil, zero value otherwise.

### GetOpenInterestOk

`func (o *OptionQuote) GetOpenInterestOk() (*int32, bool)`

GetOpenInterestOk returns a tuple with the OpenInterest field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenInterest

`func (o *OptionQuote) SetOpenInterest(v int32)`

SetOpenInterest sets OpenInterest field to given value.

### HasOpenInterest

`func (o *OptionQuote) HasOpenInterest() bool`

HasOpenInterest returns a boolean if a field has been set.

### GetVolume

`func (o *OptionQuote) GetVolume() int32`

GetVolume returns the Volume field if non-nil, zero value otherwise.

### GetVolumeOk

`func (o *OptionQuote) GetVolumeOk() (*int32, bool)`

GetVolumeOk returns a tuple with the Volume field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolume

`func (o *OptionQuote) SetVolume(v int32)`

SetVolume sets Volume field to given value.

### HasVolume

`func (o *OptionQuote) HasVolume() bool`

HasVolume returns a boolean if a field has been set.

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

### GetUnderlyingPrice

`func (o *OptionQuote) GetUnderlyingPrice() float32`

GetUnderlyingPrice returns the UnderlyingPrice field if non-nil, zero value otherwise.

### GetUnderlyingPriceOk

`func (o *OptionQuote) GetUnderlyingPriceOk() (*float32, bool)`

GetUnderlyingPriceOk returns a tuple with the UnderlyingPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnderlyingPrice

`func (o *OptionQuote) SetUnderlyingPrice(v float32)`

SetUnderlyingPrice sets UnderlyingPrice field to given value.

### HasUnderlyingPrice

`func (o *OptionQuote) HasUnderlyingPrice() bool`

HasUnderlyingPrice returns a boolean if a field has been set.

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

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


