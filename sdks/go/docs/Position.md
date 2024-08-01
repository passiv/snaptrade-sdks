# Position

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to [**PositionSymbol**](PositionSymbol.md) |  | [optional] 
**Units** | Pointer to **NullableFloat32** |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Last known market price for the symbol | [optional] 
**OpenPnl** | Pointer to **NullableFloat32** |  | [optional] 
**FractionalUnits** | Pointer to **NullableFloat32** | Deprecated, use the units field for both fractional and integer units going forward | [optional] 
**AveragePurchasePrice** | Pointer to **NullableFloat32** | Average purchase price for this position. Either returned by the underlying broker or calculated using historical transactions. | [optional] 

## Methods

### NewPosition

`func NewPosition() *Position`

NewPosition instantiates a new Position object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewPositionWithDefaults

`func NewPositionWithDefaults() *Position`

NewPositionWithDefaults instantiates a new Position object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *Position) GetSymbol() PositionSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Position) GetSymbolOk() (*PositionSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Position) SetSymbol(v PositionSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Position) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetUnits

`func (o *Position) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *Position) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *Position) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *Position) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *Position) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *Position) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil
### GetPrice

`func (o *Position) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Position) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Position) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Position) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *Position) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *Position) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetOpenPnl

`func (o *Position) GetOpenPnl() float32`

GetOpenPnl returns the OpenPnl field if non-nil, zero value otherwise.

### GetOpenPnlOk

`func (o *Position) GetOpenPnlOk() (*float32, bool)`

GetOpenPnlOk returns a tuple with the OpenPnl field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenPnl

`func (o *Position) SetOpenPnl(v float32)`

SetOpenPnl sets OpenPnl field to given value.

### HasOpenPnl

`func (o *Position) HasOpenPnl() bool`

HasOpenPnl returns a boolean if a field has been set.

### SetOpenPnlNil

`func (o *Position) SetOpenPnlNil(b bool)`

 SetOpenPnlNil sets the value for OpenPnl to be an explicit nil

### UnsetOpenPnl
`func (o *Position) UnsetOpenPnl()`

UnsetOpenPnl ensures that no value is present for OpenPnl, not even an explicit nil
### GetFractionalUnits

`func (o *Position) GetFractionalUnits() float32`

GetFractionalUnits returns the FractionalUnits field if non-nil, zero value otherwise.

### GetFractionalUnitsOk

`func (o *Position) GetFractionalUnitsOk() (*float32, bool)`

GetFractionalUnitsOk returns a tuple with the FractionalUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFractionalUnits

`func (o *Position) SetFractionalUnits(v float32)`

SetFractionalUnits sets FractionalUnits field to given value.

### HasFractionalUnits

`func (o *Position) HasFractionalUnits() bool`

HasFractionalUnits returns a boolean if a field has been set.

### SetFractionalUnitsNil

`func (o *Position) SetFractionalUnitsNil(b bool)`

 SetFractionalUnitsNil sets the value for FractionalUnits to be an explicit nil

### UnsetFractionalUnits
`func (o *Position) UnsetFractionalUnits()`

UnsetFractionalUnits ensures that no value is present for FractionalUnits, not even an explicit nil
### GetAveragePurchasePrice

`func (o *Position) GetAveragePurchasePrice() float32`

GetAveragePurchasePrice returns the AveragePurchasePrice field if non-nil, zero value otherwise.

### GetAveragePurchasePriceOk

`func (o *Position) GetAveragePurchasePriceOk() (*float32, bool)`

GetAveragePurchasePriceOk returns a tuple with the AveragePurchasePrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAveragePurchasePrice

`func (o *Position) SetAveragePurchasePrice(v float32)`

SetAveragePurchasePrice sets AveragePurchasePrice field to given value.

### HasAveragePurchasePrice

`func (o *Position) HasAveragePurchasePrice() bool`

HasAveragePurchasePrice returns a boolean if a field has been set.

### SetAveragePurchasePriceNil

`func (o *Position) SetAveragePurchasePriceNil(b bool)`

 SetAveragePurchasePriceNil sets the value for AveragePurchasePrice to be an explicit nil

### UnsetAveragePurchasePrice
`func (o *Position) UnsetAveragePurchasePrice()`

UnsetAveragePurchasePrice ensures that no value is present for AveragePurchasePrice, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


