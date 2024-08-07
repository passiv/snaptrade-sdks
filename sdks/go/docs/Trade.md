# Trade

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | Pointer to **string** |  | [optional] 
**Account** | Pointer to [**Account**](Account.md) |  | [optional] 
**Symbol** | Pointer to [**BrokerageSymbol**](BrokerageSymbol.md) |  | [optional] 
**UniversalSymbol** | Pointer to [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Action** | Pointer to **string** |  | [optional] 
**Units** | Pointer to **int32** |  | [optional] 
**Price** | Pointer to **float32** |  | [optional] 
**Sequence** | Pointer to **int32** |  | [optional] 

## Methods

### NewTrade

`func NewTrade() *Trade`

NewTrade instantiates a new Trade object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradeWithDefaults

`func NewTradeWithDefaults() *Trade`

NewTradeWithDefaults instantiates a new Trade object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetId

`func (o *Trade) GetId() string`

GetId returns the Id field if non-nil, zero value otherwise.

### GetIdOk

`func (o *Trade) GetIdOk() (*string, bool)`

GetIdOk returns a tuple with the Id field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetId

`func (o *Trade) SetId(v string)`

SetId sets Id field to given value.

### HasId

`func (o *Trade) HasId() bool`

HasId returns a boolean if a field has been set.

### GetAccount

`func (o *Trade) GetAccount() Account`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *Trade) GetAccountOk() (*Account, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *Trade) SetAccount(v Account)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *Trade) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetSymbol

`func (o *Trade) GetSymbol() BrokerageSymbol`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *Trade) GetSymbolOk() (*BrokerageSymbol, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *Trade) SetSymbol(v BrokerageSymbol)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *Trade) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetUniversalSymbol

`func (o *Trade) GetUniversalSymbol() UniversalSymbol`

GetUniversalSymbol returns the UniversalSymbol field if non-nil, zero value otherwise.

### GetUniversalSymbolOk

`func (o *Trade) GetUniversalSymbolOk() (*UniversalSymbol, bool)`

GetUniversalSymbolOk returns a tuple with the UniversalSymbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbol

`func (o *Trade) SetUniversalSymbol(v UniversalSymbol)`

SetUniversalSymbol sets UniversalSymbol field to given value.

### HasUniversalSymbol

`func (o *Trade) HasUniversalSymbol() bool`

HasUniversalSymbol returns a boolean if a field has been set.

### GetAction

`func (o *Trade) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *Trade) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *Trade) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *Trade) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetUnits

`func (o *Trade) GetUnits() int32`

GetUnits returns the Units field if non-nil, zero value otherwise.

### GetUnitsOk

`func (o *Trade) GetUnitsOk() (*int32, bool)`

GetUnitsOk returns a tuple with the Units field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUnits

`func (o *Trade) SetUnits(v int32)`

SetUnits sets Units field to given value.

### HasUnits

`func (o *Trade) HasUnits() bool`

HasUnits returns a boolean if a field has been set.

### GetPrice

`func (o *Trade) GetPrice() float32`

GetPrice returns the Price field if non-nil, zero value otherwise.

### GetPriceOk

`func (o *Trade) GetPriceOk() (*float32, bool)`

GetPriceOk returns a tuple with the Price field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPrice

`func (o *Trade) SetPrice(v float32)`

SetPrice sets Price field to given value.

### HasPrice

`func (o *Trade) HasPrice() bool`

HasPrice returns a boolean if a field has been set.

### GetSequence

`func (o *Trade) GetSequence() int32`

GetSequence returns the Sequence field if non-nil, zero value otherwise.

### GetSequenceOk

`func (o *Trade) GetSequenceOk() (*int32, bool)`

GetSequenceOk returns a tuple with the Sequence field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSequence

`func (o *Trade) SetSequence(v int32)`

SetSequence sets Sequence field to given value.

### HasSequence

`func (o *Trade) HasSequence() bool`

HasSequence returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


