# OptionQuoteGreeks

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Delta** | Pointer to **float32** | Delta represents the rate of change between the option&#39;s price and a $1 change in the underlying asset&#39;s price. | [optional] 
**Gamma** | Pointer to **float32** | Gamma represents the rate of change between an option&#39;s delta and the underlying asset&#39;s price. | [optional] 
**Theta** | Pointer to **float32** | Theta represents the rate of change between the option price and time, or time sensitivity - sometimes known as an option&#39;s time decay. | [optional] 
**Vega** | Pointer to **float32** | Vega represents the rate of change between an option&#39;s value and the underlying asset&#39;s implied volatility. | [optional] 

## Methods

### NewOptionQuoteGreeks

`func NewOptionQuoteGreeks() *OptionQuoteGreeks`

NewOptionQuoteGreeks instantiates a new OptionQuoteGreeks object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionQuoteGreeksWithDefaults

`func NewOptionQuoteGreeksWithDefaults() *OptionQuoteGreeks`

NewOptionQuoteGreeksWithDefaults instantiates a new OptionQuoteGreeks object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDelta

`func (o *OptionQuoteGreeks) GetDelta() float32`

GetDelta returns the Delta field if non-nil, zero value otherwise.

### GetDeltaOk

`func (o *OptionQuoteGreeks) GetDeltaOk() (*float32, bool)`

GetDeltaOk returns a tuple with the Delta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDelta

`func (o *OptionQuoteGreeks) SetDelta(v float32)`

SetDelta sets Delta field to given value.

### HasDelta

`func (o *OptionQuoteGreeks) HasDelta() bool`

HasDelta returns a boolean if a field has been set.

### GetGamma

`func (o *OptionQuoteGreeks) GetGamma() float32`

GetGamma returns the Gamma field if non-nil, zero value otherwise.

### GetGammaOk

`func (o *OptionQuoteGreeks) GetGammaOk() (*float32, bool)`

GetGammaOk returns a tuple with the Gamma field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetGamma

`func (o *OptionQuoteGreeks) SetGamma(v float32)`

SetGamma sets Gamma field to given value.

### HasGamma

`func (o *OptionQuoteGreeks) HasGamma() bool`

HasGamma returns a boolean if a field has been set.

### GetTheta

`func (o *OptionQuoteGreeks) GetTheta() float32`

GetTheta returns the Theta field if non-nil, zero value otherwise.

### GetThetaOk

`func (o *OptionQuoteGreeks) GetThetaOk() (*float32, bool)`

GetThetaOk returns a tuple with the Theta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTheta

`func (o *OptionQuoteGreeks) SetTheta(v float32)`

SetTheta sets Theta field to given value.

### HasTheta

`func (o *OptionQuoteGreeks) HasTheta() bool`

HasTheta returns a boolean if a field has been set.

### GetVega

`func (o *OptionQuoteGreeks) GetVega() float32`

GetVega returns the Vega field if non-nil, zero value otherwise.

### GetVegaOk

`func (o *OptionQuoteGreeks) GetVegaOk() (*float32, bool)`

GetVegaOk returns a tuple with the Vega field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetVega

`func (o *OptionQuoteGreeks) SetVega(v float32)`

SetVega sets Vega field to given value.

### HasVega

`func (o *OptionQuoteGreeks) HasVega() bool`

HasVega returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


