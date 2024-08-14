# SymbolFigiInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 
**FigiShareClass** | Pointer to **NullableString** | This enables users to link multiple FIGIs for the same security in order to obtain an aggregated view across all countries and all exchanges. For example, &#x60;AAPL&#x60; has a different FIGI for each exchange/trading venue it is traded on. The &#x60;figi_share_class&#x60; is the same for all of these FIGIs. See section 1.4.3 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 

## Methods

### NewSymbolFigiInstrument

`func NewSymbolFigiInstrument() *SymbolFigiInstrument`

NewSymbolFigiInstrument instantiates a new SymbolFigiInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewSymbolFigiInstrumentWithDefaults

`func NewSymbolFigiInstrumentWithDefaults() *SymbolFigiInstrument`

NewSymbolFigiInstrumentWithDefaults instantiates a new SymbolFigiInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFigiCode

`func (o *SymbolFigiInstrument) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *SymbolFigiInstrument) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *SymbolFigiInstrument) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *SymbolFigiInstrument) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *SymbolFigiInstrument) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *SymbolFigiInstrument) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiShareClass

`func (o *SymbolFigiInstrument) GetFigiShareClass() string`

GetFigiShareClass returns the FigiShareClass field if non-nil, zero value otherwise.

### GetFigiShareClassOk

`func (o *SymbolFigiInstrument) GetFigiShareClassOk() (*string, bool)`

GetFigiShareClassOk returns a tuple with the FigiShareClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiShareClass

`func (o *SymbolFigiInstrument) SetFigiShareClass(v string)`

SetFigiShareClass sets FigiShareClass field to given value.

### HasFigiShareClass

`func (o *SymbolFigiInstrument) HasFigiShareClass() bool`

HasFigiShareClass returns a boolean if a field has been set.

### SetFigiShareClassNil

`func (o *SymbolFigiInstrument) SetFigiShareClassNil(b bool)`

 SetFigiShareClassNil sets the value for FigiShareClass to be an explicit nil

### UnsetFigiShareClass
`func (o *SymbolFigiInstrument) UnsetFigiShareClass()`

UnsetFigiShareClass ensures that no value is present for FigiShareClass, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


