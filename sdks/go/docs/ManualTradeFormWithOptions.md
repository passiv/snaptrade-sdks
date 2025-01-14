# ManualTradeFormWithOptions

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**Action** | [**ActionStrictWithOptions**](ActionStrictWithOptions.md) |  | 
**UniversalSymbolId** | Pointer to **NullableString** | The universal symbol ID of the security to trade. Must be &#39;null&#39; if &#x60;symbol&#x60; is provided, otherwise must be provided. | [optional] 
**Symbol** | Pointer to **NullableString** | The security&#39;s trading ticker symbol. This currently only support Options symbols in the 21 character OCC format. For example \&quot;AAPL  131124C00240000\&quot; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If &#39;symbol&#39; is provided, then &#39;universal_symbol_id&#39; must be &#39;null&#39;. | [optional] 
**OrderType** | [**OrderTypeStrict**](OrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**Price** | Pointer to **NullableFloat32** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Stop** | Pointer to **NullableFloat32** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | Pointer to **NullableFloat32** | For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract &#x3D; 100 shares). | [optional] 
**NotionalValue** | Pointer to [**NullableManualTradeFormNotionalValue**](ManualTradeFormNotionalValue.md) |  | [optional] 
**OrderClass** | Pointer to **NullableString** | The class of order intended to be placed. Defaults to SIMPLE for regular, one legged trades. Set to BRACKET if looking to place a bracket (One-triggers-a-one-cancels-the-other) order, then specify take profit and stop loss conditions. Bracket orders currently only supported on Alpaca, Tradier, and Tradestation, contact us for more details | [optional] 
**StopLoss** | Pointer to [**NullableManualTradeFormWithOptionsStopLoss**](ManualTradeFormWithOptionsStopLoss.md) |  | [optional] 
**TakeProfit** | Pointer to [**NullableManualTradeFormWithOptionsTakeProfit**](ManualTradeFormWithOptionsTakeProfit.md) |  | [optional] 

## Methods

### NewManualTradeFormWithOptions

`func NewManualTradeFormWithOptions(accountId string, action ActionStrictWithOptions, orderType OrderTypeStrict, timeInForce TimeInForceStrict, ) *ManualTradeFormWithOptions`

NewManualTradeFormWithOptions instantiates a new ManualTradeFormWithOptions object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeFormWithOptionsWithDefaults

`func NewManualTradeFormWithOptionsWithDefaults() *ManualTradeFormWithOptions`

NewManualTradeFormWithOptionsWithDefaults instantiates a new ManualTradeFormWithOptions object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *ManualTradeFormWithOptions) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *ManualTradeFormWithOptions) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *ManualTradeFormWithOptions) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.


### GetAction

`func (o *ManualTradeFormWithOptions) GetAction() ActionStrictWithOptions`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ManualTradeFormWithOptions) GetActionOk() (*ActionStrictWithOptions, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ManualTradeFormWithOptions) SetAction(v ActionStrictWithOptions)`

SetAction sets Action field to given value.


### GetUniversalSymbolId

`func (o *ManualTradeFormWithOptions) GetUniversalSymbolId() string`

GetUniversalSymbolId returns the UniversalSymbolId field if non-nil, zero value otherwise.

### GetUniversalSymbolIdOk

`func (o *ManualTradeFormWithOptions) GetUniversalSymbolIdOk() (*string, bool)`

GetUniversalSymbolIdOk returns a tuple with the UniversalSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbolId

`func (o *ManualTradeFormWithOptions) SetUniversalSymbolId(v string)`

SetUniversalSymbolId sets UniversalSymbolId field to given value.

### HasUniversalSymbolId

`func (o *ManualTradeFormWithOptions) HasUniversalSymbolId() bool`

HasUniversalSymbolId returns a boolean if a field has been set.

### SetUniversalSymbolIdNil

`func (o *ManualTradeFormWithOptions) SetUniversalSymbolIdNil(b bool)`

 SetUniversalSymbolIdNil sets the value for UniversalSymbolId to be an explicit nil

### UnsetUniversalSymbolId
`func (o *ManualTradeFormWithOptions) UnsetUniversalSymbolId()`

UnsetUniversalSymbolId ensures that no value is present for UniversalSymbolId, not even an explicit nil
### GetSymbol

`func (o *ManualTradeFormWithOptions) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *ManualTradeFormWithOptions) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *ManualTradeFormWithOptions) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *ManualTradeFormWithOptions) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### SetSymbolNil

`func (o *ManualTradeFormWithOptions) SetSymbolNil(b bool)`

 SetSymbolNil sets the value for Symbol to be an explicit nil

### UnsetSymbol
`func (o *ManualTradeFormWithOptions) UnsetSymbol()`

UnsetSymbol ensures that no value is present for Symbol, not even an explicit nil
### GetOrderType

`func (o *ManualTradeFormWithOptions) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ManualTradeFormWithOptions) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ManualTradeFormWithOptions) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *ManualTradeFormWithOptions) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ManualTradeFormWithOptions) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ManualTradeFormWithOptions) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetPrice

`func (o *ManualTradeFormWithOptions) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ManualTradeFormWithOptions) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ManualTradeFormWithOptions) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ManualTradeFormWithOptions) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ManualTradeFormWithOptions) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ManualTradeFormWithOptions) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetStop

`func (o *ManualTradeFormWithOptions) GetStop() float32`

GetStop returns the Stop field if non-nil, zero value otherwise.

### GetStopOk

`func (o *ManualTradeFormWithOptions) GetStopOk() (*float32, bool)`

GetStopOk returns a tuple with the Stop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStop

`func (o *ManualTradeFormWithOptions) SetStop(v float32)`

SetStop sets Stop field to given value.

### HasStop

`func (o *ManualTradeFormWithOptions) HasStop() bool`

HasStop returns a boolean if a field has been set.

### SetStopNil

`func (o *ManualTradeFormWithOptions) SetStopNil(b bool)`

 SetStopNil sets the value for Stop to be an explicit nil

### UnsetStop
`func (o *ManualTradeFormWithOptions) UnsetStop()`

UnsetStop ensures that no value is present for Stop, not even an explicit nil
### GetUnits

`func (o *ManualTradeFormWithOptions) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ManualTradeFormWithOptions) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ManualTradeFormWithOptions) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *ManualTradeFormWithOptions) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *ManualTradeFormWithOptions) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *ManualTradeFormWithOptions) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil
### GetNotionalValue

`func (o *ManualTradeFormWithOptions) GetNotionalValue() ManualTradeFormNotionalValue`

GetNotionalValue returns the NotionalValue field if non-nil, zero value otherwise.

### GetNotionalValueOk

`func (o *ManualTradeFormWithOptions) GetNotionalValueOk() (*ManualTradeFormNotionalValue, bool)`

GetNotionalValueOk returns a tuple with the NotionalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetNotionalValue

`func (o *ManualTradeFormWithOptions) SetNotionalValue(v ManualTradeFormNotionalValue)`

SetNotionalValue sets NotionalValue field to given value.

### HasNotionalValue

`func (o *ManualTradeFormWithOptions) HasNotionalValue() bool`

HasNotionalValue returns a boolean if a field has been set.

### SetNotionalValueNil

`func (o *ManualTradeFormWithOptions) SetNotionalValueNil(b bool)`

 SetNotionalValueNil sets the value for NotionalValue to be an explicit nil

### UnsetNotionalValue
`func (o *ManualTradeFormWithOptions) UnsetNotionalValue()`

UnsetNotionalValue ensures that no value is present for NotionalValue, not even an explicit nil
### GetOrderClass

`func (o *ManualTradeFormWithOptions) GetOrderClass() string`

GetOrderClass returns the OrderClass field if non-nil, zero value otherwise.

### GetOrderClassOk

`func (o *ManualTradeFormWithOptions) GetOrderClassOk() (*string, bool)`

GetOrderClassOk returns a tuple with the OrderClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderClass

`func (o *ManualTradeFormWithOptions) SetOrderClass(v string)`

SetOrderClass sets OrderClass field to given value.

### HasOrderClass

`func (o *ManualTradeFormWithOptions) HasOrderClass() bool`

HasOrderClass returns a boolean if a field has been set.

### SetOrderClassNil

`func (o *ManualTradeFormWithOptions) SetOrderClassNil(b bool)`

 SetOrderClassNil sets the value for OrderClass to be an explicit nil

### UnsetOrderClass
`func (o *ManualTradeFormWithOptions) UnsetOrderClass()`

UnsetOrderClass ensures that no value is present for OrderClass, not even an explicit nil
### GetStopLoss

`func (o *ManualTradeFormWithOptions) GetStopLoss() ManualTradeFormWithOptionsStopLoss`

GetStopLoss returns the StopLoss field if non-nil, zero value otherwise.

### GetStopLossOk

`func (o *ManualTradeFormWithOptions) GetStopLossOk() (*ManualTradeFormWithOptionsStopLoss, bool)`

GetStopLossOk returns a tuple with the StopLoss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopLoss

`func (o *ManualTradeFormWithOptions) SetStopLoss(v ManualTradeFormWithOptionsStopLoss)`

SetStopLoss sets StopLoss field to given value.

### HasStopLoss

`func (o *ManualTradeFormWithOptions) HasStopLoss() bool`

HasStopLoss returns a boolean if a field has been set.

### SetStopLossNil

`func (o *ManualTradeFormWithOptions) SetStopLossNil(b bool)`

 SetStopLossNil sets the value for StopLoss to be an explicit nil

### UnsetStopLoss
`func (o *ManualTradeFormWithOptions) UnsetStopLoss()`

UnsetStopLoss ensures that no value is present for StopLoss, not even an explicit nil
### GetTakeProfit

`func (o *ManualTradeFormWithOptions) GetTakeProfit() ManualTradeFormWithOptionsTakeProfit`

GetTakeProfit returns the TakeProfit field if non-nil, zero value otherwise.

### GetTakeProfitOk

`func (o *ManualTradeFormWithOptions) GetTakeProfitOk() (*ManualTradeFormWithOptionsTakeProfit, bool)`

GetTakeProfitOk returns a tuple with the TakeProfit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTakeProfit

`func (o *ManualTradeFormWithOptions) SetTakeProfit(v ManualTradeFormWithOptionsTakeProfit)`

SetTakeProfit sets TakeProfit field to given value.

### HasTakeProfit

`func (o *ManualTradeFormWithOptions) HasTakeProfit() bool`

HasTakeProfit returns a boolean if a field has been set.

### SetTakeProfitNil

`func (o *ManualTradeFormWithOptions) SetTakeProfitNil(b bool)`

 SetTakeProfitNil sets the value for TakeProfit to be an explicit nil

### UnsetTakeProfit
`func (o *ManualTradeFormWithOptions) UnsetTakeProfit()`

UnsetTakeProfit ensures that no value is present for TakeProfit, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


