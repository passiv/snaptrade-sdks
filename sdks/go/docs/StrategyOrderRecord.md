# StrategyOrderRecord

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Strategy** | Pointer to [**OptionStrategy**](OptionStrategy.md) |  | [optional] 
**Status** | Pointer to **string** |  | [optional] 
**FilledQuantity** | Pointer to **float32** |  | [optional] 
**OpenQuantity** | Pointer to **float32** |  | [optional] 
**ClosedQuantity** | Pointer to **float32** |  | [optional] 
**OrderType** | Pointer to **NullableString** | Order Type potential values include (but are not limited to) - Limit - Market - StopLimit - StopLoss | [optional] 
**TimeInForce** | Pointer to **string** | Trade time in force examples:   * FOK - Fill Or Kill   * Day - Day   * GTC - Good Til Canceled   * GTD - Good Til Date  | [optional] 
**LimitPrice** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 
**TimePlaced** | Pointer to **string** | Time | [optional] 
**TimeUpdated** | Pointer to **string** | Time | [optional] 

## Methods

### NewStrategyOrderRecord

`func NewStrategyOrderRecord() *StrategyOrderRecord`

NewStrategyOrderRecord instantiates a new StrategyOrderRecord object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStrategyOrderRecordWithDefaults

`func NewStrategyOrderRecordWithDefaults() *StrategyOrderRecord`

NewStrategyOrderRecordWithDefaults instantiates a new StrategyOrderRecord object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetStrategy

`func (o *StrategyOrderRecord) GetStrategy() OptionStrategy`

GetStrategy returns the Strategy field if non-nil, zero value otherwise.

### GetStrategyOk

`func (o *StrategyOrderRecord) GetStrategyOk() (*OptionStrategy, bool)`

GetStrategyOk returns a tuple with the Strategy field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStrategy

`func (o *StrategyOrderRecord) SetStrategy(v OptionStrategy)`

SetStrategy sets Strategy field to given value.

### HasStrategy

`func (o *StrategyOrderRecord) HasStrategy() bool`

HasStrategy returns a boolean if a field has been set.

### GetStatus

`func (o *StrategyOrderRecord) GetStatus() string`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *StrategyOrderRecord) GetStatusOk() (*string, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *StrategyOrderRecord) SetStatus(v string)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *StrategyOrderRecord) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### GetFilledQuantity

`func (o *StrategyOrderRecord) GetFilledQuantity() float32`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *StrategyOrderRecord) GetFilledQuantityOk() (*float32, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *StrategyOrderRecord) SetFilledQuantity(v float32)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *StrategyOrderRecord) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### GetOpenQuantity

`func (o *StrategyOrderRecord) GetOpenQuantity() float32`

GetOpenQuantity returns the OpenQuantity field if non-nil, zero value otherwise.

### GetOpenQuantityOk

`func (o *StrategyOrderRecord) GetOpenQuantityOk() (*float32, bool)`

GetOpenQuantityOk returns a tuple with the OpenQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOpenQuantity

`func (o *StrategyOrderRecord) SetOpenQuantity(v float32)`

SetOpenQuantity sets OpenQuantity field to given value.

### HasOpenQuantity

`func (o *StrategyOrderRecord) HasOpenQuantity() bool`

HasOpenQuantity returns a boolean if a field has been set.

### GetClosedQuantity

`func (o *StrategyOrderRecord) GetClosedQuantity() float32`

GetClosedQuantity returns the ClosedQuantity field if non-nil, zero value otherwise.

### GetClosedQuantityOk

`func (o *StrategyOrderRecord) GetClosedQuantityOk() (*float32, bool)`

GetClosedQuantityOk returns a tuple with the ClosedQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClosedQuantity

`func (o *StrategyOrderRecord) SetClosedQuantity(v float32)`

SetClosedQuantity sets ClosedQuantity field to given value.

### HasClosedQuantity

`func (o *StrategyOrderRecord) HasClosedQuantity() bool`

HasClosedQuantity returns a boolean if a field has been set.

### GetOrderType

`func (o *StrategyOrderRecord) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *StrategyOrderRecord) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *StrategyOrderRecord) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *StrategyOrderRecord) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### SetOrderTypeNil

`func (o *StrategyOrderRecord) SetOrderTypeNil(b bool)`

 SetOrderTypeNil sets the value for OrderType to be an explicit nil

### UnsetOrderType
`func (o *StrategyOrderRecord) UnsetOrderType()`

UnsetOrderType ensures that no value is present for OrderType, not even an explicit nil
### GetTimeInForce

`func (o *StrategyOrderRecord) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *StrategyOrderRecord) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *StrategyOrderRecord) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *StrategyOrderRecord) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetLimitPrice

`func (o *StrategyOrderRecord) GetLimitPrice() float32`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *StrategyOrderRecord) GetLimitPriceOk() (*float32, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *StrategyOrderRecord) SetLimitPrice(v float32)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *StrategyOrderRecord) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### SetLimitPriceNil

`func (o *StrategyOrderRecord) SetLimitPriceNil(b bool)`

 SetLimitPriceNil sets the value for LimitPrice to be an explicit nil

### UnsetLimitPrice
`func (o *StrategyOrderRecord) UnsetLimitPrice()`

UnsetLimitPrice ensures that no value is present for LimitPrice, not even an explicit nil
### GetExecutionPrice

`func (o *StrategyOrderRecord) GetExecutionPrice() float32`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *StrategyOrderRecord) GetExecutionPriceOk() (*float32, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *StrategyOrderRecord) SetExecutionPrice(v float32)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *StrategyOrderRecord) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *StrategyOrderRecord) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *StrategyOrderRecord) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetTimePlaced

`func (o *StrategyOrderRecord) GetTimePlaced() string`

GetTimePlaced returns the TimePlaced field if non-nil, zero value otherwise.

### GetTimePlacedOk

`func (o *StrategyOrderRecord) GetTimePlacedOk() (*string, bool)`

GetTimePlacedOk returns a tuple with the TimePlaced field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimePlaced

`func (o *StrategyOrderRecord) SetTimePlaced(v string)`

SetTimePlaced sets TimePlaced field to given value.

### HasTimePlaced

`func (o *StrategyOrderRecord) HasTimePlaced() bool`

HasTimePlaced returns a boolean if a field has been set.

### GetTimeUpdated

`func (o *StrategyOrderRecord) GetTimeUpdated() string`

GetTimeUpdated returns the TimeUpdated field if non-nil, zero value otherwise.

### GetTimeUpdatedOk

`func (o *StrategyOrderRecord) GetTimeUpdatedOk() (*string, bool)`

GetTimeUpdatedOk returns a tuple with the TimeUpdated field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeUpdated

`func (o *StrategyOrderRecord) SetTimeUpdated(v string)`

SetTimeUpdated sets TimeUpdated field to given value.

### HasTimeUpdated

`func (o *StrategyOrderRecord) HasTimeUpdated() bool`

HasTimeUpdated returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


