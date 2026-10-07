# SimpleTradeForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderType** | **string** |  | 
**TimeInForce** | **string** | Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint. | 
**Legs** | [**[]SimpleTradeLeg**](SimpleTradeLeg.md) | Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply. | 
**LimitPrice** | Pointer to **float64** | Required for limit and stop_limit orders, except that multi-leg price_effect even implies zero. Must be omitted or null for market and stop orders. For multi-leg orders this is the net strategy price. Negative prices are accepted only for futures-family orders, subject to brokerage support. | [optional] 
**StopPrice** | Pointer to **float64** | Required for stop and stop_limit orders. Must be omitted or null for market and limit orders. Must be positive for equity/option orders; futures-family trigger prices are subject to brokerage support. | [optional] 
**PriceEffect** | Pointer to **NullableString** | Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action. | [optional] 
**ClientOrderId** | Pointer to **string** | Optional canonical UUID, forwarded where the existing execution path supports it and for tastytrade futures orders. Requires the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies; SnapTrade does not enforce uniqueness. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions. | [optional] 
**ExpiryDate** | Pointer to **NullableTime** | ISO 8601 expiry timestamp, required for gtd and invalid with other durations. A missing timezone is treated as UTC. Supported only through existing single-leg Public and Sandbox execution paths. | [optional] 
**NotionalValue** | Pointer to **float64** | Positive order value, supported only for a single-equity market order on eligible brokerages and partners. Mutually exclusive with leg units. Omit or set units to null when supplied. | [optional] 
**TradingSession** | Pointer to **string** | extended uses existing single-leg equity/option brokerage support and requires extended-hours enablement. Futures and multi-leg orders only accept regular. | [optional] [default to "regular"]

## Methods

### NewSimpleTradeForm

`func NewSimpleTradeForm(orderType string, timeInForce string, legs []SimpleTradeLeg, ) *SimpleTradeForm`

NewSimpleTradeForm instantiates a new SimpleTradeForm object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSimpleTradeFormWithDefaults

`func NewSimpleTradeFormWithDefaults() *SimpleTradeForm`

NewSimpleTradeFormWithDefaults instantiates a new SimpleTradeForm object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetOrderType

`func (o *SimpleTradeForm) GetOrderType() string`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *SimpleTradeForm) GetOrderTypeOk() (*string, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *SimpleTradeForm) SetOrderType(v string)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *SimpleTradeForm) GetTimeInForce() string`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *SimpleTradeForm) GetTimeInForceOk() (*string, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *SimpleTradeForm) SetTimeInForce(v string)`

SetTimeInForce sets TimeInForce field to given value.


### GetLegs

`func (o *SimpleTradeForm) GetLegs() []SimpleTradeLeg`

GetLegs returns the Legs field if non-nil, zero value otherwise.

### GetLegsOk

`func (o *SimpleTradeForm) GetLegsOk() (*[]SimpleTradeLeg, bool)`

GetLegsOk returns a tuple with the Legs field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegs

`func (o *SimpleTradeForm) SetLegs(v []SimpleTradeLeg)`

SetLegs sets Legs field to given value.


### GetLimitPrice

`func (o *SimpleTradeForm) GetLimitPrice() float64`

GetLimitPrice returns the LimitPrice field if non-nil, zero value otherwise.

### GetLimitPriceOk

`func (o *SimpleTradeForm) GetLimitPriceOk() (*float64, bool)`

GetLimitPriceOk returns a tuple with the LimitPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLimitPrice

`func (o *SimpleTradeForm) SetLimitPrice(v float64)`

SetLimitPrice sets LimitPrice field to given value.

### HasLimitPrice

`func (o *SimpleTradeForm) HasLimitPrice() bool`

HasLimitPrice returns a boolean if a field has been set.

### GetStopPrice

`func (o *SimpleTradeForm) GetStopPrice() float64`

GetStopPrice returns the StopPrice field if non-nil, zero value otherwise.

### GetStopPriceOk

`func (o *SimpleTradeForm) GetStopPriceOk() (*float64, bool)`

GetStopPriceOk returns a tuple with the StopPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopPrice

`func (o *SimpleTradeForm) SetStopPrice(v float64)`

SetStopPrice sets StopPrice field to given value.

### HasStopPrice

`func (o *SimpleTradeForm) HasStopPrice() bool`

HasStopPrice returns a boolean if a field has been set.

### GetPriceEffect

`func (o *SimpleTradeForm) GetPriceEffect() string`

GetPriceEffect returns the PriceEffect field if non-nil, zero value otherwise.

### GetPriceEffectOk

`func (o *SimpleTradeForm) GetPriceEffectOk() (*string, bool)`

GetPriceEffectOk returns a tuple with the PriceEffect field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPriceEffect

`func (o *SimpleTradeForm) SetPriceEffect(v string)`

SetPriceEffect sets PriceEffect field to given value.

### HasPriceEffect

`func (o *SimpleTradeForm) HasPriceEffect() bool`

HasPriceEffect returns a boolean if a field has been set.

### SetPriceEffectNil

`func (o *SimpleTradeForm) SetPriceEffectNil(b bool)`

 SetPriceEffectNil sets the value for PriceEffect to be an explicit nil

### UnsetPriceEffect
`func (o *SimpleTradeForm) UnsetPriceEffect()`

UnsetPriceEffect ensures that no value is present for PriceEffect, not even an explicit nil
### GetClientOrderId

`func (o *SimpleTradeForm) GetClientOrderId() string`

GetClientOrderId returns the ClientOrderId field if non-nil, zero value otherwise.

### GetClientOrderIdOk

`func (o *SimpleTradeForm) GetClientOrderIdOk() (*string, bool)`

GetClientOrderIdOk returns a tuple with the ClientOrderId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetClientOrderId

`func (o *SimpleTradeForm) SetClientOrderId(v string)`

SetClientOrderId sets ClientOrderId field to given value.

### HasClientOrderId

`func (o *SimpleTradeForm) HasClientOrderId() bool`

HasClientOrderId returns a boolean if a field has been set.

### GetExpiryDate

`func (o *SimpleTradeForm) GetExpiryDate() time.Time`

GetExpiryDate returns the ExpiryDate field if non-nil, zero value otherwise.

### GetExpiryDateOk

`func (o *SimpleTradeForm) GetExpiryDateOk() (*time.Time, bool)`

GetExpiryDateOk returns a tuple with the ExpiryDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExpiryDate

`func (o *SimpleTradeForm) SetExpiryDate(v time.Time)`

SetExpiryDate sets ExpiryDate field to given value.

### HasExpiryDate

`func (o *SimpleTradeForm) HasExpiryDate() bool`

HasExpiryDate returns a boolean if a field has been set.

### SetExpiryDateNil

`func (o *SimpleTradeForm) SetExpiryDateNil(b bool)`

 SetExpiryDateNil sets the value for ExpiryDate to be an explicit nil

### UnsetExpiryDate
`func (o *SimpleTradeForm) UnsetExpiryDate()`

UnsetExpiryDate ensures that no value is present for ExpiryDate, not even an explicit nil
### GetNotionalValue

`func (o *SimpleTradeForm) GetNotionalValue() float64`

GetNotionalValue returns the NotionalValue field if non-nil, zero value otherwise.

### GetNotionalValueOk

`func (o *SimpleTradeForm) GetNotionalValueOk() (*float64, bool)`

GetNotionalValueOk returns a tuple with the NotionalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotionalValue

`func (o *SimpleTradeForm) SetNotionalValue(v float64)`

SetNotionalValue sets NotionalValue field to given value.

### HasNotionalValue

`func (o *SimpleTradeForm) HasNotionalValue() bool`

HasNotionalValue returns a boolean if a field has been set.

### GetTradingSession

`func (o *SimpleTradeForm) GetTradingSession() string`

GetTradingSession returns the TradingSession field if non-nil, zero value otherwise.

### GetTradingSessionOk

`func (o *SimpleTradeForm) GetTradingSessionOk() (*string, bool)`

GetTradingSessionOk returns a tuple with the TradingSession field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradingSession

`func (o *SimpleTradeForm) SetTradingSession(v string)`

SetTradingSession sets TradingSession field to given value.

### HasTradingSession

`func (o *SimpleTradeForm) HasTradingSession() bool`

HasTradingSession returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


