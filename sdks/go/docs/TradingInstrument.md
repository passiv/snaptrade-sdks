# TradingInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | Pointer to **string** | The security&#39;s trading ticker symbol | [optional] 
**Type** | Pointer to **NullableString** |  | [optional] 

## Methods

### NewTradingInstrument

`func NewTradingInstrument() *TradingInstrument`

NewTradingInstrument instantiates a new TradingInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTradingInstrumentWithDefaults

`func NewTradingInstrumentWithDefaults() *TradingInstrument`

NewTradingInstrumentWithDefaults instantiates a new TradingInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *TradingInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *TradingInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *TradingInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.

### HasSymbol

`func (o *TradingInstrument) HasSymbol() bool`

HasSymbol returns a boolean if a field has been set.

### GetType

`func (o *TradingInstrument) GetType() string`

GetType returns the Type field if non-nil, zero value otherwise.

### GetTypeOk

`func (o *TradingInstrument) GetTypeOk() (*string, bool)`

GetTypeOk returns a tuple with the Type field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetType

`func (o *TradingInstrument) SetType(v string)`

SetType sets Type field to given value.

### HasType

`func (o *TradingInstrument) HasType() bool`

HasType returns a boolean if a field has been set.

### SetTypeNil

`func (o *TradingInstrument) SetTypeNil(b bool)`

 SetTypeNil sets the value for Type to be an explicit nil

### UnsetType
`func (o *TradingInstrument) UnsetType()`

UnsetType ensures that no value is present for Type, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


