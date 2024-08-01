# OptionsHoldings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Options information | [optional] 
**Symbol** | Pointer to **string** |  | [optional] 
**OptionSymbol** | Pointer to [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**Currency** | Pointer to [**Currency**](Currency.md) |  | [optional] 
**AveragePurchasePrice** | Pointer to **NullableFloat32** | Average purchase price for this position | [optional] 

## Methods

### NewOptionsHoldings

`func NewOptionsHoldings() *OptionsHoldings`

NewOptionsHoldings instantiates a new OptionsHoldings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionsHoldingsWithDefaults

`func NewOptionsHoldingsWithDefaults() *OptionsHoldings`

NewOptionsHoldingsWithDefaults instantiates a new OptionsHoldings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *OptionsHoldings) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *OptionsHoldings) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *OptionsHoldings) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *OptionsHoldings) HasId() bool`

HasId returns a boolean if a field has been set.

### GetSymbol

`func (o *OptionsHoldings) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *OptionsHoldings) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *OptionsHoldings) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *OptionsHoldings) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetOptionSymbol

`func (o *OptionsHoldings) GetOptionSymbol() OptionsSymbol`

GetOptionSymbol returns the OptionSymbol field if non-nil, zero value otherwise.

### GetOptionSymbolOk

`func (o *OptionsHoldings) GetOptionSymbolOk() (*OptionsSymbol, bool)`

GetOptionSymbolOk returns a tuple with the OptionSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionSymbol

`func (o *OptionsHoldings) SetOptionSymbol(v OptionsSymbol)`

SetOptionSymbol sets OptionSymbol field to given value.

### HasOptionSymbol

`func (o *OptionsHoldings) HasOptionSymbol() bool`

HasOptionSymbol returns a boolean if a field has been set.

### GetPrice

`func (o *OptionsHoldings) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *OptionsHoldings) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *OptionsHoldings) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *OptionsHoldings) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *OptionsHoldings) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *OptionsHoldings) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetCurrency

`func (o *OptionsHoldings) GetCurrency() Currency`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *OptionsHoldings) GetCurrencyOk() (*Currency, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *OptionsHoldings) SetCurrency(v Currency)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *OptionsHoldings) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.

### GetAveragePurchasePrice

`func (o *OptionsHoldings) GetAveragePurchasePrice() float32`

GetAveragePurchasePrice returns the AveragePurchasePrice field if non-nil, zero value otherwise.

### GetAveragePurchasePriceOk

`func (o *OptionsHoldings) GetAveragePurchasePriceOk() (*float32, bool)`

GetAveragePurchasePriceOk returns a tuple with the AveragePurchasePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAveragePurchasePrice

`func (o *OptionsHoldings) SetAveragePurchasePrice(v float32)`

SetAveragePurchasePrice sets AveragePurchasePrice field to given value.

### HasAveragePurchasePrice

`func (o *OptionsHoldings) HasAveragePurchasePrice() bool`

HasAveragePurchasePrice returns a boolean if a field has been set.

### SetAveragePurchasePriceNil

`func (o *OptionsHoldings) SetAveragePurchasePriceNil(b bool)`

 SetAveragePurchasePriceNil sets the value for AveragePurchasePrice to be an explicit nil

### UnsetAveragePurchasePrice
`func (o *OptionsHoldings) UnsetAveragePurchasePrice()`

UnsetAveragePurchasePrice ensures that no value is present for AveragePurchasePrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


