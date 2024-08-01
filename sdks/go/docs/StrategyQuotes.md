# StrategyQuotes

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Strategy** | Pointer to [**OptionStrategy**](OptionStrategy.md) |  | [optional] 
**OpenPrice** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**BidPrice** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**AskPrice** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**Volatility** | Pointer to **float32** |  | [optional] 
**Greek** | Pointer to [**StrategyQuotesGreek**](StrategyQuotesGreek.md) |  | [optional] 

## Methods

### NewStrategyQuotes

`func NewStrategyQuotes() *StrategyQuotes`

NewStrategyQuotes instantiates a new StrategyQuotes object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyQuotesWithDefaults

`func NewStrategyQuotesWithDefaults() *StrategyQuotes`

NewStrategyQuotesWithDefaults instantiates a new StrategyQuotes object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStrategy

`func (o *StrategyQuotes) GetStrategy() OptionStrategy`

GetStrategy returns the Strategy field if non-nil, zero value otherwise.

### GetStrategyOk

`func (o *StrategyQuotes) GetStrategyOk() (*OptionStrategy, bool)`

GetStrategyOk returns a tuple with the Strategy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategy

`func (o *StrategyQuotes) SetStrategy(v OptionStrategy)`

SetStrategy sets Strategy field to given value.

### HasStrategy

`func (o *StrategyQuotes) HasStrategy() bool`

HasStrategy returns a boolean if a field has been set.

### GetOpenPrice

`func (o *StrategyQuotes) GetOpenPrice() float32`

GetOpenPrice returns the OpenPrice field if non-nil, zero value otherwise.

### GetOpenPriceOk

`func (o *StrategyQuotes) GetOpenPriceOk() (*float32, bool)`

GetOpenPriceOk returns a tuple with the OpenPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenPrice

`func (o *StrategyQuotes) SetOpenPrice(v float32)`

SetOpenPrice sets OpenPrice field to given value.

### HasOpenPrice

`func (o *StrategyQuotes) HasOpenPrice() bool`

HasOpenPrice returns a boolean if a field has been set.

### SetOpenPriceNil

`func (o *StrategyQuotes) SetOpenPriceNil(b bool)`

 SetOpenPriceNil sets the value for OpenPrice to be an explicit nil

### UnsetOpenPrice
`func (o *StrategyQuotes) UnsetOpenPrice()`

UnsetOpenPrice ensures that no value is present for OpenPrice, not even an explicit nil
### GetBidPrice

`func (o *StrategyQuotes) GetBidPrice() float32`

GetBidPrice returns the BidPrice field if non-nil, zero value otherwise.

### GetBidPriceOk

`func (o *StrategyQuotes) GetBidPriceOk() (*float32, bool)`

GetBidPriceOk returns a tuple with the BidPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBidPrice

`func (o *StrategyQuotes) SetBidPrice(v float32)`

SetBidPrice sets BidPrice field to given value.

### HasBidPrice

`func (o *StrategyQuotes) HasBidPrice() bool`

HasBidPrice returns a boolean if a field has been set.

### SetBidPriceNil

`func (o *StrategyQuotes) SetBidPriceNil(b bool)`

 SetBidPriceNil sets the value for BidPrice to be an explicit nil

### UnsetBidPrice
`func (o *StrategyQuotes) UnsetBidPrice()`

UnsetBidPrice ensures that no value is present for BidPrice, not even an explicit nil
### GetAskPrice

`func (o *StrategyQuotes) GetAskPrice() float32`

GetAskPrice returns the AskPrice field if non-nil, zero value otherwise.

### GetAskPriceOk

`func (o *StrategyQuotes) GetAskPriceOk() (*float32, bool)`

GetAskPriceOk returns a tuple with the AskPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAskPrice

`func (o *StrategyQuotes) SetAskPrice(v float32)`

SetAskPrice sets AskPrice field to given value.

### HasAskPrice

`func (o *StrategyQuotes) HasAskPrice() bool`

HasAskPrice returns a boolean if a field has been set.

### SetAskPriceNil

`func (o *StrategyQuotes) SetAskPriceNil(b bool)`

 SetAskPriceNil sets the value for AskPrice to be an explicit nil

### UnsetAskPrice
`func (o *StrategyQuotes) UnsetAskPrice()`

UnsetAskPrice ensures that no value is present for AskPrice, not even an explicit nil
### GetVolatility

`func (o *StrategyQuotes) GetVolatility() float32`

GetVolatility returns the Volatility field if non-nil, zero value otherwise.

### GetVolatilityOk

`func (o *StrategyQuotes) GetVolatilityOk() (*float32, bool)`

GetVolatilityOk returns a tuple with the Volatility field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVolatility

`func (o *StrategyQuotes) SetVolatility(v float32)`

SetVolatility sets Volatility field to given value.

### HasVolatility

`func (o *StrategyQuotes) HasVolatility() bool`

HasVolatility returns a boolean if a field has been set.

### GetGreek

`func (o *StrategyQuotes) GetGreek() StrategyQuotesGreek`

GetGreek returns the Greek field if non-nil, zero value otherwise.

### GetGreekOk

`func (o *StrategyQuotes) GetGreekOk() (*StrategyQuotesGreek, bool)`

GetGreekOk returns a tuple with the Greek field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGreek

`func (o *StrategyQuotes) SetGreek(v StrategyQuotesGreek)`

SetGreek sets Greek field to given value.

### HasGreek

`func (o *StrategyQuotes) HasGreek() bool`

HasGreek returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


