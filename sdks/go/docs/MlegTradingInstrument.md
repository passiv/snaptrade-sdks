# MlegTradingInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The security&#39;s trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example \&quot;AAPL  131124C00240000\&quot; represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format) | 
**InstrumentType** | [**MlegInstrumentType**](MlegInstrumentType.md) |  | 

## Methods

### NewMlegTradingInstrument

`func NewMlegTradingInstrument(symbol string, instrumentType MlegInstrumentType, ) *MlegTradingInstrument`

NewMlegTradingInstrument instantiates a new MlegTradingInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewMlegTradingInstrumentWithDefaults

`func NewMlegTradingInstrumentWithDefaults() *MlegTradingInstrument`

NewMlegTradingInstrumentWithDefaults instantiates a new MlegTradingInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetSymbol

`func (o *MlegTradingInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *MlegTradingInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *MlegTradingInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.


### GetInstrumentType

`func (o *MlegTradingInstrument) GetInstrumentType() MlegInstrumentType`

GetInstrumentType returns the InstrumentType field if non-nil, zero value otherwise.

### GetInstrumentTypeOk

`func (o *MlegTradingInstrument) GetInstrumentTypeOk() (*MlegInstrumentType, bool)`

GetInstrumentTypeOk returns a tuple with the InstrumentType field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrumentType

`func (o *MlegTradingInstrument) SetInstrumentType(v MlegInstrumentType)`

SetInstrumentType sets InstrumentType field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


