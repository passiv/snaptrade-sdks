# ManualTrade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** | Unique identifier for the submitted order through SnapTrade. | [optional] 
**Account** | Pointer to **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | [optional] 
**OrderType** | Pointer to [**OrderTypeStrict**](OrderTypeStrict.md) |  | [optional] 
**TimeInForce** | Pointer to [**TimeInForceStrict**](TimeInForceStrict.md) |  | [optional] 
**Symbol** | Pointer to [**ManualTradeSymbol**](ManualTradeSymbol.md) |  | [optional] 
**Action** | Pointer to [**ActionStrict**](ActionStrict.md) |  | [optional] 
**Units** | Pointer to **NullableFloat32** |  | [optional] 
**Price** | Pointer to **NullableFloat32** | Trade Price if limit or stop limit order | [optional] 

## Methods

### NewManualTrade

`func NewManualTrade() *ManualTrade`

NewManualTrade instantiates a new ManualTrade object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewManualTradeWithDefaults

`func NewManualTradeWithDefaults() *ManualTrade`

NewManualTradeWithDefaults instantiates a new ManualTrade object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *ManualTrade) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *ManualTrade) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *ManualTrade) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *ManualTrade) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAccount

`func (o *ManualTrade) GetAccount() string`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *ManualTrade) GetAccountOk() (*string, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *ManualTrade) SetAccount(v string)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *ManualTrade) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetOrderType

`func (o *ManualTrade) GetOrderType() OrderTypeStrict`

GetOrderType returns the OrderType field if non-nil, zero value otherwise.

### GetOrderTypeOk

`func (o *ManualTrade) GetOrderTypeOk() (*OrderTypeStrict, bool)`

GetOrderTypeOk returns a tuple with the OrderType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrderType

`func (o *ManualTrade) SetOrderType(v OrderTypeStrict)`

SetOrderType sets OrderType field to given value.

### HasOrderType

`func (o *ManualTrade) HasOrderType() bool`

HasOrderType returns a boolean if a field has been set.

### GetTimeInForce

`func (o *ManualTrade) GetTimeInForce() TimeInForceStrict`

GetTimeInForce returns the TimeInForce field if non-nil, zero value otherwise.

### GetTimeInForceOk

`func (o *ManualTrade) GetTimeInForceOk() (*TimeInForceStrict, bool)`

GetTimeInForceOk returns a tuple with the TimeInForce field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTimeInForce

`func (o *ManualTrade) SetTimeInForce(v TimeInForceStrict)`

SetTimeInForce sets TimeInForce field to given value.

### HasTimeInForce

`func (o *ManualTrade) HasTimeInForce() bool`

HasTimeInForce returns a boolean if a field has been set.

### GetSymbol

`func (o *ManualTrade) GetSymbol() ManualTradeSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *ManualTrade) GetSymbolOk() (*ManualTradeSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *ManualTrade) SetSymbol(v ManualTradeSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *ManualTrade) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetAction

`func (o *ManualTrade) GetAction() ActionStrict`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *ManualTrade) GetActionOk() (*ActionStrict, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *ManualTrade) SetAction(v ActionStrict)`

SetAction sets Action field to given value.

### HasAction

`func (o *ManualTrade) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetUnits

`func (o *ManualTrade) GetUnits() float32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *ManualTrade) GetUnitsOk() (*float32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *ManualTrade) SetUnits(v float32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *ManualTrade) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### SetUnitsNil

`func (o *ManualTrade) SetUnitsNil(b bool)`

 SetUnitsNil sets the value for Units to be an explicit nil

### UnsetUnits
`func (o *ManualTrade) UnsetUnits()`

UnsetUnits ensures that no value is present for Units, not even an explicit nil
### GetPrice

`func (o *ManualTrade) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *ManualTrade) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *ManualTrade) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *ManualTrade) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### SetPriceNil

`func (o *ManualTrade) SetPriceNil(b bool)`

 SetPriceNil sets the value for Price to be an explicit nil

### UnsetPrice
`func (o *ManualTrade) UnsetPrice()`

UnsetPrice ensures that no value is present for Price, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


