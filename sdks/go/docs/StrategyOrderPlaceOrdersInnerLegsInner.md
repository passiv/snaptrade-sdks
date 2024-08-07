# StrategyOrderPlaceOrdersInnerLegsInner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LegId** | Pointer to **int32** |  | [optional] 
**Symbol** | Pointer to **string** |  | [optional] 
**SymbolId** | Pointer to **int32** |  | [optional] 
**LegRatioQuantity** | Pointer to **int32** |  | [optional] 
**Side** | Pointer to **string** |  | [optional] 
**AvgExecPrice** | Pointer to **int32** |  | [optional] 
**LastExecPrice** | Pointer to **string** |  | [optional] 

## Methods

### NewStrategyOrderPlaceOrdersInnerLegsInner

`func NewStrategyOrderPlaceOrdersInnerLegsInner() *StrategyOrderPlaceOrdersInnerLegsInner`

NewStrategyOrderPlaceOrdersInnerLegsInner instantiates a new StrategyOrderPlaceOrdersInnerLegsInner object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyOrderPlaceOrdersInnerLegsInnerWithDefaults

`func NewStrategyOrderPlaceOrdersInnerLegsInnerWithDefaults() *StrategyOrderPlaceOrdersInnerLegsInner`

NewStrategyOrderPlaceOrdersInnerLegsInnerWithDefaults instantiates a new StrategyOrderPlaceOrdersInnerLegsInner object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLegId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLegId() int32`

GetLegId returns the LegId field if non-nil, zero value otherwise.

### GetLegIdOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLegIdOk() (*int32, bool)`

GetLegIdOk returns a tuple with the LegId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetLegId(v int32)`

SetLegId sets LegId field to given value.

### HasLegId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasLegId() bool`

HasLegId returns a boolean if a field has been set.

### GetSymbol

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetSymbolId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSymbolId() int32`

GetSymbolId returns the SymbolId field if non-nil, zero value otherwise.

### GetSymbolIdOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSymbolIdOk() (*int32, bool)`

GetSymbolIdOk returns a tuple with the SymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbolId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetSymbolId(v int32)`

SetSymbolId sets SymbolId field to given value.

### HasSymbolId

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasSymbolId() bool`

HasSymbolId returns a boolean if a field has been set.

### GetLegRatioQuantity

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLegRatioQuantity() int32`

GetLegRatioQuantity returns the LegRatioQuantity field if non-nil, zero value otherwise.

### GetLegRatioQuantityOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLegRatioQuantityOk() (*int32, bool)`

GetLegRatioQuantityOk returns a tuple with the LegRatioQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegRatioQuantity

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetLegRatioQuantity(v int32)`

SetLegRatioQuantity sets LegRatioQuantity field to given value.

### HasLegRatioQuantity

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasLegRatioQuantity() bool`

HasLegRatioQuantity returns a boolean if a field has been set.

### GetSide

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSide() string`

GetSide returns the Side field if non-nil, zero value otherwise.

### GetSideOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetSideOk() (*string, bool)`

GetSideOk returns a tuple with the Side field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSide

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetSide(v string)`

SetSide sets Side field to given value.

### HasSide

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasSide() bool`

HasSide returns a boolean if a field has been set.

### GetAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetAvgExecPrice() int32`

GetAvgExecPrice returns the AvgExecPrice field if non-nil, zero value otherwise.

### GetAvgExecPriceOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetAvgExecPriceOk() (*int32, bool)`

GetAvgExecPriceOk returns a tuple with the AvgExecPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetAvgExecPrice(v int32)`

SetAvgExecPrice sets AvgExecPrice field to given value.

### HasAvgExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasAvgExecPrice() bool`

HasAvgExecPrice returns a boolean if a field has been set.

### GetLastExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLastExecPrice() string`

GetLastExecPrice returns the LastExecPrice field if non-nil, zero value otherwise.

### GetLastExecPriceOk

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) GetLastExecPriceOk() (*string, bool)`

GetLastExecPriceOk returns a tuple with the LastExecPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) SetLastExecPrice(v string)`

SetLastExecPrice sets LastExecPrice field to given value.

### HasLastExecPrice

`func (o *StrategyOrderPlaceOrdersInnerLegsInner) HasLastExecPrice() bool`

HasLastExecPrice returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


