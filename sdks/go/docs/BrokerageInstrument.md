# BrokerageInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The instrument&#39;s trading symbol / ticker. | 
**ExchangeMic** | Pointer to **NullableString** | The MIC code of the exchange where the instrument is traded. | [optional] 
**Tradeable** | Pointer to **NullableBool** | Whether the instrument is tradeable through the brokerage. &#x60;null&#x60; if the tradeability is unknown. | [optional] 
**Fractionable** | Pointer to **NullableBool** | Whether the instrument allows fractional units. &#x60;null&#x60; if the fractionability is unknown. | [optional] 
**UniversalSymbolId** | Pointer to **NullableString** | The universal symbol ID of the instrument. This is the ID used to reference the instrument in SnapTrade API calls. | [optional] 

## Methods

### NewBrokerageInstrument

`func NewBrokerageInstrument(symbol string, ) *BrokerageInstrument`

NewBrokerageInstrument instantiates a new BrokerageInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewBrokerageInstrumentWithDefaults

`func NewBrokerageInstrumentWithDefaults() *BrokerageInstrument`

NewBrokerageInstrumentWithDefaults instantiates a new BrokerageInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *BrokerageInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *BrokerageInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *BrokerageInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetExchangeMic

`func (o *BrokerageInstrument) GetExchangeMic() string`

GetExchangeMic returns the ExchangeMic field if non-nil, zero value otherwise.

### GetExchangeMicOk

`func (o *BrokerageInstrument) GetExchangeMicOk() (*string, bool)`

GetExchangeMicOk returns a tuple with the ExchangeMic field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExchangeMic

`func (o *BrokerageInstrument) SetExchangeMic(v string)`

SetExchangeMic sets ExchangeMic field to given value.

### HasExchangeMic

`func (o *BrokerageInstrument) HasExchangeMic() bool`

HasExchangeMic returns a boolean if a field has been set.

### SetExchangeMicNil

`func (o *BrokerageInstrument) SetExchangeMicNil(b bool)`

 SetExchangeMicNil sets the value for ExchangeMic to be an explicit nil

### UnsetExchangeMic
`func (o *BrokerageInstrument) UnsetExchangeMic()`

UnsetExchangeMic ensures that no value is present for ExchangeMic, not even an explicit nil
### GetTradeable

`func (o *BrokerageInstrument) GetTradeable() bool`

GetTradeable returns the Tradeable field if non-nil, zero value otherwise.

### GetTradeableOk

`func (o *BrokerageInstrument) GetTradeableOk() (*bool, bool)`

GetTradeableOk returns a tuple with the Tradeable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTradeable

`func (o *BrokerageInstrument) SetTradeable(v bool)`

SetTradeable sets Tradeable field to given value.

### HasTradeable

`func (o *BrokerageInstrument) HasTradeable() bool`

HasTradeable returns a boolean if a field has been set.

### SetTradeableNil

`func (o *BrokerageInstrument) SetTradeableNil(b bool)`

 SetTradeableNil sets the value for Tradeable to be an explicit nil

### UnsetTradeable
`func (o *BrokerageInstrument) UnsetTradeable()`

UnsetTradeable ensures that no value is present for Tradeable, not even an explicit nil
### GetFractionable

`func (o *BrokerageInstrument) GetFractionable() bool`

GetFractionable returns the Fractionable field if non-nil, zero value otherwise.

### GetFractionableOk

`func (o *BrokerageInstrument) GetFractionableOk() (*bool, bool)`

GetFractionableOk returns a tuple with the Fractionable field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFractionable

`func (o *BrokerageInstrument) SetFractionable(v bool)`

SetFractionable sets Fractionable field to given value.

### HasFractionable

`func (o *BrokerageInstrument) HasFractionable() bool`

HasFractionable returns a boolean if a field has been set.

### SetFractionableNil

`func (o *BrokerageInstrument) SetFractionableNil(b bool)`

 SetFractionableNil sets the value for Fractionable to be an explicit nil

### UnsetFractionable
`func (o *BrokerageInstrument) UnsetFractionable()`

UnsetFractionable ensures that no value is present for Fractionable, not even an explicit nil
### GetUniversalSymbolId

`func (o *BrokerageInstrument) GetUniversalSymbolId() string`

GetUniversalSymbolId returns the UniversalSymbolId field if non-nil, zero value otherwise.

### GetUniversalSymbolIdOk

`func (o *BrokerageInstrument) GetUniversalSymbolIdOk() (*string, bool)`

GetUniversalSymbolIdOk returns a tuple with the UniversalSymbolId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetUniversalSymbolId

`func (o *BrokerageInstrument) SetUniversalSymbolId(v string)`

SetUniversalSymbolId sets UniversalSymbolId field to given value.

### HasUniversalSymbolId

`func (o *BrokerageInstrument) HasUniversalSymbolId() bool`

HasUniversalSymbolId returns a boolean if a field has been set.

### SetUniversalSymbolIdNil

`func (o *BrokerageInstrument) SetUniversalSymbolIdNil(b bool)`

 SetUniversalSymbolIdNil sets the value for UniversalSymbolId to be an explicit nil

### UnsetUniversalSymbolId
`func (o *BrokerageInstrument) UnsetUniversalSymbolId()`

UnsetUniversalSymbolId ensures that no value is present for UniversalSymbolId, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


