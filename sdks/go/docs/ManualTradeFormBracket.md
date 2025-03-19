# ManualTradeFormBracket

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**Action** | [**ActionStrictWithOptions**](ActionStrictWithOptions.md) |  | 
**Symbol** | **string** | The security&#39;s trading ticker symbol. | 
**OrderType** | [**OrderTypeStrict**](OrderTypeStrict.md) |  | 
**TimeInForce** | [**TimeInForceStrict**](TimeInForceStrict.md) |  | 
**Price** | Pointer to **NullableFloat32** | The limit price for &#x60;Limit&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Stop** | Pointer to **NullableFloat32** | The price at which a stop order is triggered for &#x60;Stop&#x60; and &#x60;StopLimit&#x60; orders. | [optional] 
**Units** | Pointer to **float32** | Number of shares for the order. This can be a decimal for fractional orders. Must be &#x60;null&#x60; if &#x60;notional_value&#x60; is provided. | [optional] 
**StopLoss** | [**StopLoss**](StopLoss.md) |  | 
**TakeProfit** | [**TakeProfit**](TakeProfit.md) |  | 

## Methods

### NewManualTradeFormBracket

`func NewManualTradeFormBracket(accountId string, action ActionStrictWithOptions, symbol string, orderType OrderTypeStrict, timeInForce TimeInForceStrict, stopLoss StopLoss, takeProfit TakeProfit, ) *ManualTradeFormBracket`

NewManualTradeFormBracket instantiates a new ManualTradeFormBracket object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeFormBracketWithDefaults

`func NewManualTradeFormBracketWithDefaults() *ManualTradeFormBracket`

NewManualTradeFormBracketWithDefaults instantiates a new ManualTradeFormBracket object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccountId

`func (o *ManualTradeFormBracket) GetAccountId() string`

GetAccountId returns the AccountId field if non-nil, zero value otherwise.

### GetAccountIdOk

`func (o *ManualTradeFormBracket) GetAccountIdOk() (*string, bool)`

GetAccountIdOk returns a tuple with the AccountId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccountId

`func (o *ManualTradeFormBracket) SetAccountId(v string)`

SetAccountId sets AccountId field to given value.


### GetAction

`func (o *ManualTradeFormBracket) GetAction() ActionStrictWithOptions`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ManualTradeFormBracket) GetActionOk() (*ActionStrictWithOptions, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ManualTradeFormBracket) SetAction(v ActionStrictWithOptions)`

SetAction sets Action field to given value.


### GetSymbol

`func (o *ManualTradeFormBracket) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *ManualTradeFormBracket) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *ManualTradeFormBracket) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetOrderType

`func (o *ManualTradeFormBracket) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ManualTradeFormBracket) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ManualTradeFormBracket) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.


### GetTimeInForce

`func (o *ManualTradeFormBracket) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ManualTradeFormBracket) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ManualTradeFormBracket) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.


### GetPrice

`func (o *ManualTradeFormBracket) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ManualTradeFormBracket) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ManualTradeFormBracket) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ManualTradeFormBracket) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ManualTradeFormBracket) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ManualTradeFormBracket) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil
### GetStop

`func (o *ManualTradeFormBracket) GetStop() float32`

GetStop returns the Stop field if non-nil, zero value otherwise.

### GetStopOk

`func (o *ManualTradeFormBracket) GetStopOk() (*float32, bool)`

GetStopOk returns a tuple with the Stop field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStop

`func (o *ManualTradeFormBracket) SetStop(v float32)`

SetStop sets Stop field to given value.

### HasStop

`func (o *ManualTradeFormBracket) HasStop() bool`

HasStop returns a boolean if a field has been set.

### SetStopNil

`func (o *ManualTradeFormBracket) SetStopNil(b bool)`

 SetStopNil sets the value for Stop to be an explicit nil

### UnsetStop
`func (o *ManualTradeFormBracket) UnsetStop()`

UnsetStop ensures that no value is present for Stop, not even an explicit nil
### GetUnits

`func (o *ManualTradeFormBracket) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ManualTradeFormBracket) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ManualTradeFormBracket) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *ManualTradeFormBracket) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### GetStopLoss

`func (o *ManualTradeFormBracket) GetStopLoss() StopLoss`

GetStopLoss returns the StopLoss field if non-nil, zero value otherwise.

### GetStopLossOk

`func (o *ManualTradeFormBracket) GetStopLossOk() (*StopLoss, bool)`

GetStopLossOk returns a tuple with the StopLoss field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStopLoss

`func (o *ManualTradeFormBracket) SetStopLoss(v StopLoss)`

SetStopLoss sets StopLoss field to given value.


### GetTakeProfit

`func (o *ManualTradeFormBracket) GetTakeProfit() TakeProfit`

GetTakeProfit returns the TakeProfit field if non-nil, zero value otherwise.

### GetTakeProfitOk

`func (o *ManualTradeFormBracket) GetTakeProfitOk() (*TakeProfit, bool)`

GetTakeProfitOk returns a tuple with the TakeProfit field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTakeProfit

`func (o *ManualTradeFormBracket) SetTakeProfit(v TakeProfit)`

SetTakeProfit sets TakeProfit field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


