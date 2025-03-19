# CryptoSpotQuote

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Bid** | **float64** | The highest price a buyer is willing to pay. | 
**Ask** | **float64** | The lowest price a seller is willing to accept. | 
**Mid** | Pointer to **float64** | The market mid price. | [optional] 
**Timestamp** | Pointer to **time.Time** | The timestamp of the quote. | [optional] 

## Methods

### NewCryptoSpotQuote

`func NewCryptoSpotQuote(bid float64, ask float64, ) *CryptoSpotQuote`

NewCryptoSpotQuote instantiates a new CryptoSpotQuote object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewCryptoSpotQuoteWithDefaults

`func NewCryptoSpotQuoteWithDefaults() *CryptoSpotQuote`

NewCryptoSpotQuoteWithDefaults instantiates a new CryptoSpotQuote object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetBid

`func (o *CryptoSpotQuote) GetBid() float64`

GetBid returns the Bid field if non-nil, zero value otherwise.

### GetBidOk

`func (o *CryptoSpotQuote) GetBidOk() (*float64, bool)`

GetBidOk returns a tuple with the Bid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBid

`func (o *CryptoSpotQuote) SetBid(v float64)`

SetBid sets Bid field to given value.


### GetAsk

`func (o *CryptoSpotQuote) GetAsk() float64`

GetAsk returns the Ask field if non-nil, zero value otherwise.

### GetAskOk

`func (o *CryptoSpotQuote) GetAskOk() (*float64, bool)`

GetAskOk returns a tuple with the Ask field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAsk

`func (o *CryptoSpotQuote) SetAsk(v float64)`

SetAsk sets Ask field to given value.


### GetMid

`func (o *CryptoSpotQuote) GetMid() float64`

GetMid returns the Mid field if non-nil, zero value otherwise.

### GetMidOk

`func (o *CryptoSpotQuote) GetMidOk() (*float64, bool)`

GetMidOk returns a tuple with the Mid field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMid

`func (o *CryptoSpotQuote) SetMid(v float64)`

SetMid sets Mid field to given value.

### HasMid

`func (o *CryptoSpotQuote) HasMid() bool`

HasMid returns a boolean if a field has been set.

### GetTimestamp

`func (o *CryptoSpotQuote) GetTimestamp() time.Time`

GetTimestamp returns the Timestamp field if non-nil, zero value otherwise.

### GetTimestampOk

`func (o *CryptoSpotQuote) GetTimestampOk() (*time.Time, bool)`

GetTimestampOk returns a tuple with the Timestamp field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimestamp

`func (o *CryptoSpotQuote) SetTimestamp(v time.Time)`

SetTimestamp sets Timestamp field to given value.

### HasTimestamp

`func (o *CryptoSpotQuote) HasTimestamp() bool`

HasTimestamp returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


