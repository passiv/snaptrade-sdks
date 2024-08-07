# TradeExecutionStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**UniversalSymbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Trade** | Pointer to [**Trade**](Trade.md) |  | [optional] 
**State** | Pointer to **string** | Execution state of a trade | [optional] 
**FilledUnits** | Pointer to **int32** | Number of filled units | [optional] 
**Action** | Pointer to **string** | Action of executed trade | [optional] 
**Price** | Pointer to **float32** | Price of execution | [optional] 
**Commissions** | Pointer to **float32** | Fees paid from executing trade | [optional] 
**Meta** | Pointer to **map[string]interface{}** | Other misc. data | [optional] 

## Methods

### NewTradeExecutionStatus

`func NewTradeExecutionStatus() *TradeExecutionStatus`

NewTradeExecutionStatus instantiates a new TradeExecutionStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeExecutionStatusWithDefaults

`func NewTradeExecutionStatusWithDefaults() *TradeExecutionStatus`

NewTradeExecutionStatusWithDefaults instantiates a new TradeExecutionStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *TradeExecutionStatus) GetSymbol() BrokerageSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TradeExecutionStatus) GetSymbolOk() (*BrokerageSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TradeExecutionStatus) SetSymbol(v BrokerageSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TradeExecutionStatus) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetUniversalSymbol

`func (o *TradeExecutionStatus) GetUniversalSymbol() UniversalSymbol`

GetUniversalSymbol returns the UniversalSymbol field if non-nil, zero value otherwise.

### GetUniversalSymbolOk

`func (o *TradeExecutionStatus) GetUniversalSymbolOk() (*UniversalSymbol, bool)`

GetUniversalSymbolOk returns a tuple with the UniversalSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbol

`func (o *TradeExecutionStatus) SetUniversalSymbol(v UniversalSymbol)`

SetUniversalSymbol sets UniversalSymbol field to given value.

### HasUniversalSymbol

`func (o *TradeExecutionStatus) HasUniversalSymbol() bool`

HasUniversalSymbol returns a boolean if a field has been set.

### GetTrade

`func (o *TradeExecutionStatus) GetTrade() Trade`

GetTrade returns the Trade field if non-nil, zero value otherwise.

### GetTradeOk

`func (o *TradeExecutionStatus) GetTradeOk() (*Trade, bool)`

GetTradeOk returns a tuple with the Trade field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTrade

`func (o *TradeExecutionStatus) SetTrade(v Trade)`

SetTrade sets Trade field to given value.

### HasTrade

`func (o *TradeExecutionStatus) HasTrade() bool`

HasTrade returns a boolean if a field has been set.

### GetState

`func (o *TradeExecutionStatus) GetState() string`

GetState returns the State field if non-nil, zero value otherwise.

### GetStateOk

`func (o *TradeExecutionStatus) GetStateOk() (*string, bool)`

GetStateOk returns a tuple with the State field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetState

`func (o *TradeExecutionStatus) SetState(v string)`

SetState sets State field to given value.

### HasState

`func (o *TradeExecutionStatus) HasState() bool`

HasState returns a boolean if a field has been set.

### GetFilledUnits

`func (o *TradeExecutionStatus) GetFilledUnits() int32`

GetFilledUnits returns the FilledUnits field if non-nil, zero value otherwise.

### GetFilledUnitsOk

`func (o *TradeExecutionStatus) GetFilledUnitsOk() (*int32, bool)`

GetFilledUnitsOk returns a tuple with the FilledUnits field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledUnits

`func (o *TradeExecutionStatus) SetFilledUnits(v int32)`

SetFilledUnits sets FilledUnits field to given value.

### HasFilledUnits

`func (o *TradeExecutionStatus) HasFilledUnits() bool`

HasFilledUnits returns a boolean if a field has been set.

### GetAction

`func (o *TradeExecutionStatus) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *TradeExecutionStatus) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *TradeExecutionStatus) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *TradeExecutionStatus) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetPrice

`func (o *TradeExecutionStatus) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *TradeExecutionStatus) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *TradeExecutionStatus) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *TradeExecutionStatus) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetCommissions

`func (o *TradeExecutionStatus) GetCommissions() float32`

GetCommissions returns the Commissions field if non-nil, zero value otherwise.

### GetCommissionsOk

`func (o *TradeExecutionStatus) GetCommissionsOk() (*float32, bool)`

GetCommissionsOk returns a tuple with the Commissions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCommissions

`func (o *TradeExecutionStatus) SetCommissions(v float32)`

SetCommissions sets Commissions field to given value.

### HasCommissions

`func (o *TradeExecutionStatus) HasCommissions() bool`

HasCommissions returns a boolean if a field has been set.

### GetMeta

`func (o *TradeExecutionStatus) GetMeta() map[string]interface{}`

GetMeta returns the Meta field if non-nil, zero value otherwise.

### GetMetaOk

`func (o *TradeExecutionStatus) GetMetaOk() (*map[string]interface{}, bool)`

GetMetaOk returns a tuple with the Meta field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetMeta

`func (o *TradeExecutionStatus) SetMeta(v map[string]interface{})`

SetMeta sets Meta field to given value.

### HasMeta

`func (o *TradeExecutionStatus) HasMeta() bool`

HasMeta returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


