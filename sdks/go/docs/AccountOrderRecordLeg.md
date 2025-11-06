# AccountOrderRecordLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LegId** | Pointer to **NullableString** | Brokerage order identifier for this leg, if available. | [optional] 
**Instrument** | Pointer to [**AccountOrderRecordLegInstrument**](AccountOrderRecordLegInstrument.md) |  | [optional] 
**Action** | Pointer to **string** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat32** | Execution price for this leg, if available. | [optional] 
**TotalQuantity** | Pointer to **NullableString** | The total number of shares or contracts associated with this leg. Can be a decimal number for fractional shares. | [optional] 
**CanceledQuantity** | Pointer to **NullableString** | The number of shares or contracts that have been canceled for this leg. | [optional] 
**FilledQuantity** | Pointer to **NullableString** | The number of shares or contracts that have been filled for this leg. | [optional] 
**Status** | Pointer to [**NullableAccountOrderRecordStatusV2**](AccountOrderRecordStatusV2.md) |  | [optional] 

## Methods

### NewAccountOrderRecordLeg

`func NewAccountOrderRecordLeg() *AccountOrderRecordLeg`

NewAccountOrderRecordLeg instantiates a new AccountOrderRecordLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderRecordLegWithDefaults

`func NewAccountOrderRecordLegWithDefaults() *AccountOrderRecordLeg`

NewAccountOrderRecordLegWithDefaults instantiates a new AccountOrderRecordLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLegId

`func (o *AccountOrderRecordLeg) GetLegId() string`

GetLegId returns the LegId field if non-nil, zero value otherwise.

### GetLegIdOk

`func (o *AccountOrderRecordLeg) GetLegIdOk() (*string, bool)`

GetLegIdOk returns a tuple with the LegId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegId

`func (o *AccountOrderRecordLeg) SetLegId(v string)`

SetLegId sets LegId field to given value.

### HasLegId

`func (o *AccountOrderRecordLeg) HasLegId() bool`

HasLegId returns a boolean if a field has been set.

### SetLegIdNil

`func (o *AccountOrderRecordLeg) SetLegIdNil(b bool)`

 SetLegIdNil sets the value for LegId to be an explicit nil

### UnsetLegId
`func (o *AccountOrderRecordLeg) UnsetLegId()`

UnsetLegId ensures that no value is present for LegId, not even an explicit nil
### GetInstrument

`func (o *AccountOrderRecordLeg) GetInstrument() AccountOrderRecordLegInstrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *AccountOrderRecordLeg) GetInstrumentOk() (*AccountOrderRecordLegInstrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *AccountOrderRecordLeg) SetInstrument(v AccountOrderRecordLegInstrument)`

SetInstrument sets Instrument field to given value.

### HasInstrument

`func (o *AccountOrderRecordLeg) HasInstrument() bool`

HasInstrument returns a boolean if a field has been set.

### GetAction

`func (o *AccountOrderRecordLeg) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AccountOrderRecordLeg) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AccountOrderRecordLeg) SetAction(v string)`

SetAction sets Action field to given value.

### HasAction

`func (o *AccountOrderRecordLeg) HasAction() bool`

HasAction returns a boolean if a field has been set.

### GetExecutionPrice

`func (o *AccountOrderRecordLeg) GetExecutionPrice() float32`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *AccountOrderRecordLeg) GetExecutionPriceOk() (*float32, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *AccountOrderRecordLeg) SetExecutionPrice(v float32)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *AccountOrderRecordLeg) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *AccountOrderRecordLeg) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *AccountOrderRecordLeg) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetTotalQuantity

`func (o *AccountOrderRecordLeg) GetTotalQuantity() string`

GetTotalQuantity returns the TotalQuantity field if non-nil, zero value otherwise.

### GetTotalQuantityOk

`func (o *AccountOrderRecordLeg) GetTotalQuantityOk() (*string, bool)`

GetTotalQuantityOk returns a tuple with the TotalQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalQuantity

`func (o *AccountOrderRecordLeg) SetTotalQuantity(v string)`

SetTotalQuantity sets TotalQuantity field to given value.

### HasTotalQuantity

`func (o *AccountOrderRecordLeg) HasTotalQuantity() bool`

HasTotalQuantity returns a boolean if a field has been set.

### SetTotalQuantityNil

`func (o *AccountOrderRecordLeg) SetTotalQuantityNil(b bool)`

 SetTotalQuantityNil sets the value for TotalQuantity to be an explicit nil

### UnsetTotalQuantity
`func (o *AccountOrderRecordLeg) UnsetTotalQuantity()`

UnsetTotalQuantity ensures that no value is present for TotalQuantity, not even an explicit nil
### GetCanceledQuantity

`func (o *AccountOrderRecordLeg) GetCanceledQuantity() string`

GetCanceledQuantity returns the CanceledQuantity field if non-nil, zero value otherwise.

### GetCanceledQuantityOk

`func (o *AccountOrderRecordLeg) GetCanceledQuantityOk() (*string, bool)`

GetCanceledQuantityOk returns a tuple with the CanceledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanceledQuantity

`func (o *AccountOrderRecordLeg) SetCanceledQuantity(v string)`

SetCanceledQuantity sets CanceledQuantity field to given value.

### HasCanceledQuantity

`func (o *AccountOrderRecordLeg) HasCanceledQuantity() bool`

HasCanceledQuantity returns a boolean if a field has been set.

### SetCanceledQuantityNil

`func (o *AccountOrderRecordLeg) SetCanceledQuantityNil(b bool)`

 SetCanceledQuantityNil sets the value for CanceledQuantity to be an explicit nil

### UnsetCanceledQuantity
`func (o *AccountOrderRecordLeg) UnsetCanceledQuantity()`

UnsetCanceledQuantity ensures that no value is present for CanceledQuantity, not even an explicit nil
### GetFilledQuantity

`func (o *AccountOrderRecordLeg) GetFilledQuantity() string`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *AccountOrderRecordLeg) GetFilledQuantityOk() (*string, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *AccountOrderRecordLeg) SetFilledQuantity(v string)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *AccountOrderRecordLeg) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### SetFilledQuantityNil

`func (o *AccountOrderRecordLeg) SetFilledQuantityNil(b bool)`

 SetFilledQuantityNil sets the value for FilledQuantity to be an explicit nil

### UnsetFilledQuantity
`func (o *AccountOrderRecordLeg) UnsetFilledQuantity()`

UnsetFilledQuantity ensures that no value is present for FilledQuantity, not even an explicit nil
### GetStatus

`func (o *AccountOrderRecordLeg) GetStatus() AccountOrderRecordStatusV2`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AccountOrderRecordLeg) GetStatusOk() (*AccountOrderRecordStatusV2, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AccountOrderRecordLeg) SetStatus(v AccountOrderRecordStatusV2)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AccountOrderRecordLeg) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### SetStatusNil

`func (o *AccountOrderRecordLeg) SetStatusNil(b bool)`

 SetStatusNil sets the value for Status to be an explicit nil

### UnsetStatus
`func (o *AccountOrderRecordLeg) UnsetStatus()`

UnsetStatus ensures that no value is present for Status, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


