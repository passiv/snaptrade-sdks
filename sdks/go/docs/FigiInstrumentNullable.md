# FigiInstrumentNullable

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**FigiCode** | Pointer to **NullableString** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 
**FigiShareClass** | Pointer to **NullableString** | This enables users to link multiple FIGIs for the same security in order to obtain an aggregated view across all countries and all exchanges. For example, &#x60;AAPL&#x60; has a different FIGI for each exchange/trading venue it is traded on. The &#x60;figi_share_class&#x60; is the same for all of these FIGIs. See section 1.4.3 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. | [optional] 

## Methods

### NewFigiInstrumentNullable

`func NewFigiInstrumentNullable() *FigiInstrumentNullable`

NewFigiInstrumentNullable instantiates a new FigiInstrumentNullable object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewFigiInstrumentNullableWithDefaults

`func NewFigiInstrumentNullableWithDefaults() *FigiInstrumentNullable`

NewFigiInstrumentNullableWithDefaults instantiates a new FigiInstrumentNullable object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetFigiCode

`func (o *FigiInstrumentNullable) GetFigiCode() string`

GetFigiCode returns the FigiCode field if non-nil, zero value otherwise.

### GetFigiCodeOk

`func (o *FigiInstrumentNullable) GetFigiCodeOk() (*string, bool)`

GetFigiCodeOk returns a tuple with the FigiCode field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiCode

`func (o *FigiInstrumentNullable) SetFigiCode(v string)`

SetFigiCode sets FigiCode field to given value.

### HasFigiCode

`func (o *FigiInstrumentNullable) HasFigiCode() bool`

HasFigiCode returns a boolean if a field has been set.

### SetFigiCodeNil

`func (o *FigiInstrumentNullable) SetFigiCodeNil(b bool)`

 SetFigiCodeNil sets the value for FigiCode to be an explicit nil

### UnsetFigiCode
`func (o *FigiInstrumentNullable) UnsetFigiCode()`

UnsetFigiCode ensures that no value is present for FigiCode, not even an explicit nil
### GetFigiShareClass

`func (o *FigiInstrumentNullable) GetFigiShareClass() string`

GetFigiShareClass returns the FigiShareClass field if non-nil, zero value otherwise.

### GetFigiShareClassOk

`func (o *FigiInstrumentNullable) GetFigiShareClassOk() (*string, bool)`

GetFigiShareClassOk returns a tuple with the FigiShareClass field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFigiShareClass

`func (o *FigiInstrumentNullable) SetFigiShareClass(v string)`

SetFigiShareClass sets FigiShareClass field to given value.

### HasFigiShareClass

`func (o *FigiInstrumentNullable) HasFigiShareClass() bool`

HasFigiShareClass returns a boolean if a field has been set.

### SetFigiShareClassNil

`func (o *FigiInstrumentNullable) SetFigiShareClassNil(b bool)`

 SetFigiShareClassNil sets the value for FigiShareClass to be an explicit nil

### UnsetFigiShareClass
`func (o *FigiInstrumentNullable) UnsetFigiShareClass()`

UnsetFigiShareClass ensures that no value is present for FigiShareClass, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


