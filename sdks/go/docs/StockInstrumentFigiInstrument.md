# StockInstrumentFigiInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 
**FigiShareClass** | Pointer to **NullableString** | This enables users to link multiple FIGIs for the same security in order to obtain an aggregated view across all countries and all exchanges. For example, &#x60;AAPL&#x60; has a different FIGI for each exchange/trading venue it is traded on. The &#x60;figi_share_class&#x60; is the same for all of these FIGIs. See section 1.4.3 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 

## Methods

### NewStockInstrumentFigiInstrument

`func NewStockInstrumentFigiInstrument() *StockInstrumentFigiInstrument`

NewStockInstrumentFigiInstrument instantiates a new StockInstrumentFigiInstrument object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewStockInstrumentFigiInstrumentWithDefaults

`func NewStockInstrumentFigiInstrumentWithDefaults() *StockInstrumentFigiInstrument`

NewStockInstrumentFigiInstrumentWithDefaults instantiates a new StockInstrumentFigiInstrument object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFigiCode

`func (o *StockInstrumentFigiInstrument) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *StockInstrumentFigiInstrument) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *StockInstrumentFigiInstrument) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *StockInstrumentFigiInstrument) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *StockInstrumentFigiInstrument) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *StockInstrumentFigiInstrument) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiShareClass

`func (o *StockInstrumentFigiInstrument) GetFigiShareClass() string`

GetFigiShareClass returns the FigiShareClass field if non-nil, zero value otherwise.

### GetFigiShareClassOk

`func (o *StockInstrumentFigiInstrument) GetFigiShareClassOk() (*string, bool)`

GetFigiShareClassOk returns a tuple with the FigiShareClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiShareClass

`func (o *StockInstrumentFigiInstrument) SetFigiShareClass(v string)`

SetFigiShareClass sets FigiShareClass field to given value.

### HasFigiShareClass

`func (o *StockInstrumentFigiInstrument) HasFigiShareClass() bool`

HasFigiShareClass returns a boolean if a field has been set.

### SetFigiShareClassNil

`func (o *StockInstrumentFigiInstrument) SetFigiShareClassNil(b bool)`

 SetFigiShareClassNil sets the value for FigiShareClass to be an explicit nil

### UnsetFigiShareClass
`func (o *StockInstrumentFigiInstrument) UnsetFigiShareClass()`

UnsetFigiShareClass ensures that no value is present for FigiShareClass, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


