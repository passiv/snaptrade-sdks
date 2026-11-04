# SimpleTradeInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Symbol** | **string** | Equity ticker, OCC equity-option symbol, or brokerage-native futures symbol. Tastytrade future tickers begin with &#x60;/&#x60; and future-option tickers begin with &#x60;./&#x60;; preserve their spaces and punctuation. Webull US futures require a specific unprefixed contract symbol such as ESZ6, without whitespace; slash aliases and continuous/root-only symbols are not accepted. Universal symbol IDs are not accepted. | 

## Methods

### NewSimpleTradeInstrument

`func NewSimpleTradeInstrument(kind string, symbol string, ) *SimpleTradeInstrument`

NewSimpleTradeInstrument instantiates a new SimpleTradeInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSimpleTradeInstrumentWithDefaults

`func NewSimpleTradeInstrumentWithDefaults() *SimpleTradeInstrument`

NewSimpleTradeInstrumentWithDefaults instantiates a new SimpleTradeInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetKind

`func (o *SimpleTradeInstrument) GetKind() string`

GetKind returns the Kind field if non-nil, zero value otherwise.

### GetKindOk

`func (o *SimpleTradeInstrument) GetKindOk() (*string, bool)`

GetKindOk returns a tuple with the Kind field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetKind

`func (o *SimpleTradeInstrument) SetKind(v string)`

SetKind sets Kind field to given value.


### GetSymbol

`func (o *SimpleTradeInstrument) GetSymbol() string`

GetSymbol returns the Symbol field if non-nil, zero value otherwise.

### GetSymbolOk

`func (o *SimpleTradeInstrument) GetSymbolOk() (*string, bool)`

GetSymbolOk returns a tuple with the Symbol field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetSymbol

`func (o *SimpleTradeInstrument) SetSymbol(v string)`

SetSymbol sets Symbol field to given value.



[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


