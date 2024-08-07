# PortfolioGroupPosition

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Last known market price for the symbol | [optional] 
**Units** | Pointer to **int32** |  | [optional] 

## Methods

### NewPortfolioGroupPosition

`func NewPortfolioGroupPosition() *PortfolioGroupPosition`

NewPortfolioGroupPosition instantiates a new PortfolioGroupPosition object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPortfolioGroupPositionWithDefaults

`func NewPortfolioGroupPositionWithDefaults() *PortfolioGroupPosition`

NewPortfolioGroupPositionWithDefaults instantiates a new PortfolioGroupPosition object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *PortfolioGroupPosition) GetSymbol() UniversalSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *PortfolioGroupPosition) GetSymbolOk() (*UniversalSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *PortfolioGroupPosition) SetSymbol(v UniversalSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *PortfolioGroupPosition) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetPrice

`func (o *PortfolioGroupPosition) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *PortfolioGroupPosition) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *PortfolioGroupPosition) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *PortfolioGroupPosition) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *PortfolioGroupPosition) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *PortfolioGroupPosition) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetUnits

`func (o *PortfolioGroupPosition) GetUnits() int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *PortfolioGroupPosition) GetUnitsOk() (*int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *PortfolioGroupPosition) SetUnits(v int32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *PortfolioGroupPosition) HasUnits() bool`

HasUnits returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


