# ExchangeRatePairs

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Src** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**Dst** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**ExchangeRate** | Pointer to **float32** |  | [optional] 

## Methods

### NewExchangeRatePairs

`func NewExchangeRatePairs() *ExchangeRatePairs`

NewExchangeRatePairs instantiates a new ExchangeRatePairs object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewExchangeRatePairsWithDefaults

`func NewExchangeRatePairsWithDefaults() *ExchangeRatePairs`

NewExchangeRatePairsWithDefaults instantiates a new ExchangeRatePairs object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSrc

`func (o *ExchangeRatePairs) GetSrc() Currency`

GetSrc returns the Src field if non-nil, zero value otherwise.

### GetSrcOk

`func (o *ExchangeRatePairs) GetSrcOk() (*Currency, bool)`

GetSrcOk returns a tuple with the Src field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSrc

`func (o *ExchangeRatePairs) SetSrc(v Currency)`

SetSrc sets Src field to given value.

### HasSrc

`func (o *ExchangeRatePairs) HasSrc() bool`

HasSrc returns a boolean if a field has been set.

### GetDst

`func (o *ExchangeRatePairs) GetDst() Currency`

GetDst returns the Dst field if non-nil, zero value otherwise.

### GetDstOk

`func (o *ExchangeRatePairs) GetDstOk() (*Currency, bool)`

GetDstOk returns a tuple with the Dst field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDst

`func (o *ExchangeRatePairs) SetDst(v Currency)`

SetDst sets Dst field to given value.

### HasDst

`func (o *ExchangeRatePairs) HasDst() bool`

HasDst returns a boolean if a field has been set.

### GetExchangeRate

`func (o *ExchangeRatePairs) GetExchangeRate() float32`

GetExchangeRate returns the ExchangeRate field if non-nil, zero value otherwise.

### GetExchangeRateOk

`func (o *ExchangeRatePairs) GetExchangeRateOk() (*float32, bool)`

GetExchangeRateOk returns a tuple with the ExchangeRate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeRate

`func (o *ExchangeRatePairs) SetExchangeRate(v float32)`

SetExchangeRate sets ExchangeRate field to given value.

### HasExchangeRate

`func (o *ExchangeRatePairs) HasExchangeRate() bool`

HasExchangeRate returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


