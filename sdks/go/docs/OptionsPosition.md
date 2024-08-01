# OptionsPosition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to [**OptionBrokerageSymbol**](OptionBrokerageSymbol.md) |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**Units** | Pointer to **float32** |  | [optional] 
**Currency** | Pointer to [**NullableOptionsPositionCurrency**](OptionsPositionCurrency.md) |  | [optional] 
**AveragePurchasePrice** | Pointer to **NullableFloat32** | Average purchase price for this position | [optional] 

## Methods

### NewOptionsPosition

`func NewOptionsPosition() *OptionsPosition`

NewOptionsPosition instantiates a new OptionsPosition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsPositionWithDefaults

`func NewOptionsPositionWithDefaults() *OptionsPosition`

NewOptionsPositionWithDefaults instantiates a new OptionsPosition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *OptionsPosition) GetSymbol() OptionBrokerageSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *OptionsPosition) GetSymbolOk() (*OptionBrokerageSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *OptionsPosition) SetSymbol(v OptionBrokerageSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *OptionsPosition) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetPrice

`func (o *OptionsPosition) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OptionsPosition) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OptionsPosition) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *OptionsPosition) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *OptionsPosition) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *OptionsPosition) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetUnits

`func (o *OptionsPosition) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *OptionsPosition) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *OptionsPosition) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *OptionsPosition) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### GetCurrency

`func (o *OptionsPosition) GetCurrency() OptionsPositionCurrency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *OptionsPosition) GetCurrencyOk() (*OptionsPositionCurrency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *OptionsPosition) SetCurrency(v OptionsPositionCurrency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *OptionsPosition) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### SetCurrencyNil

`func (o *OptionsPosition) SetCurrencyNil(b bool)`

 SetCurrencyNil sets the value for Currency to be an explicit nil

### UnsetCurrency
`func (o *OptionsPosition) UnsetCurrency()`

UnsetCurrency ensures that no value is present for Currency, not even an explicit nil
### GetAveragePurchasePrice

`func (o *OptionsPosition) GetAveragePurchasePrice() float32`

GetAveragePurchasePrice returns the AveragePurchasePrice field if non-nil, zero value otherwise.

### GetAveragePurchasePriceOk

`func (o *OptionsPosition) GetAveragePurchasePriceOk() (*float32, bool)`

GetAveragePurchasePriceOk returns a tuple with the AveragePurchasePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAveragePurchasePrice

`func (o *OptionsPosition) SetAveragePurchasePrice(v float32)`

SetAveragePurchasePrice sets AveragePurchasePrice field to given value.

### HasAveragePurchasePrice

`func (o *OptionsPosition) HasAveragePurchasePrice() bool`

HasAveragePurchasePrice returns a boolean if a field has been set.

### SetAveragePurchasePriceNil

`func (o *OptionsPosition) SetAveragePurchasePriceNil(b bool)`

 SetAveragePurchasePriceNil sets the value for AveragePurchasePrice to be an explicit nil

### UnsetAveragePurchasePrice
`func (o *OptionsPosition) UnsetAveragePurchasePrice()`

UnsetAveragePurchasePrice ensures that no value is present for AveragePurchasePrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


