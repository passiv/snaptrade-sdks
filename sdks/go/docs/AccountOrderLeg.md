# AccountOrderLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LegId** | Pointer to **NullableString** | Brokerage identifier for this leg, when the brokerage assigns one. | [optional] 
**Instrument** | [**Instrument**](Instrument.md) |  | 
**Action** | **string** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  | 
**TotalQuantity** | Pointer to **NullableFloat64** | Total number of shares or contracts for this leg. Can be a decimal for fractional orders. | [optional] 
**FilledQuantity** | Pointer to **NullableFloat64** | Number of shares or contracts filled for this leg. | [optional] 
**CanceledQuantity** | Pointer to **NullableFloat64** | Number of shares or contracts canceled for this leg. | [optional] 
**ExecutionPrice** | Pointer to **NullableFloat64** | Average execution price for this leg, when available. | [optional] 
**Status** | Pointer to [**NullableAccountOrderRecordStatusV2Nullable**](AccountOrderRecordStatusV2Nullable.md) |  | [optional] 

## Methods

### NewAccountOrderLeg

`func NewAccountOrderLeg(instrument Instrument, action string, ) *AccountOrderLeg`

NewAccountOrderLeg instantiates a new AccountOrderLeg object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountOrderLegWithDefaults

`func NewAccountOrderLegWithDefaults() *AccountOrderLeg`

NewAccountOrderLegWithDefaults instantiates a new AccountOrderLeg object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLegId

`func (o *AccountOrderLeg) GetLegId() string`

GetLegId returns the LegId field if non-nil, zero value otherwise.

### GetLegIdOk

`func (o *AccountOrderLeg) GetLegIdOk() (*string, bool)`

GetLegIdOk returns a tuple with the LegId field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLegId

`func (o *AccountOrderLeg) SetLegId(v string)`

SetLegId sets LegId field to given value.

### HasLegId

`func (o *AccountOrderLeg) HasLegId() bool`

HasLegId returns a boolean if a field has been set.

### SetLegIdNil

`func (o *AccountOrderLeg) SetLegIdNil(b bool)`

 SetLegIdNil sets the value for LegId to be an explicit nil

### UnsetLegId
`func (o *AccountOrderLeg) UnsetLegId()`

UnsetLegId ensures that no value is present for LegId, not even an explicit nil
### GetInstrument

`func (o *AccountOrderLeg) GetInstrument() Instrument`

GetInstrument returns the Instrument field if non-nil, zero value otherwise.

### GetInstrumentOk

`func (o *AccountOrderLeg) GetInstrumentOk() (*Instrument, bool)`

GetInstrumentOk returns a tuple with the Instrument field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInstrument

`func (o *AccountOrderLeg) SetInstrument(v Instrument)`

SetInstrument sets Instrument field to given value.


### GetAction

`func (o *AccountOrderLeg) GetAction() string`

GetAction returns the Action field if non-nil, zero value otherwise.

### GetActionOk

`func (o *AccountOrderLeg) GetActionOk() (*string, bool)`

GetActionOk returns a tuple with the Action field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAction

`func (o *AccountOrderLeg) SetAction(v string)`

SetAction sets Action field to given value.


### GetTotalQuantity

`func (o *AccountOrderLeg) GetTotalQuantity() float64`

GetTotalQuantity returns the TotalQuantity field if non-nil, zero value otherwise.

### GetTotalQuantityOk

`func (o *AccountOrderLeg) GetTotalQuantityOk() (*float64, bool)`

GetTotalQuantityOk returns a tuple with the TotalQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalQuantity

`func (o *AccountOrderLeg) SetTotalQuantity(v float64)`

SetTotalQuantity sets TotalQuantity field to given value.

### HasTotalQuantity

`func (o *AccountOrderLeg) HasTotalQuantity() bool`

HasTotalQuantity returns a boolean if a field has been set.

### SetTotalQuantityNil

`func (o *AccountOrderLeg) SetTotalQuantityNil(b bool)`

 SetTotalQuantityNil sets the value for TotalQuantity to be an explicit nil

### UnsetTotalQuantity
`func (o *AccountOrderLeg) UnsetTotalQuantity()`

UnsetTotalQuantity ensures that no value is present for TotalQuantity, not even an explicit nil
### GetFilledQuantity

`func (o *AccountOrderLeg) GetFilledQuantity() float64`

GetFilledQuantity returns the FilledQuantity field if non-nil, zero value otherwise.

### GetFilledQuantityOk

`func (o *AccountOrderLeg) GetFilledQuantityOk() (*float64, bool)`

GetFilledQuantityOk returns a tuple with the FilledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFilledQuantity

`func (o *AccountOrderLeg) SetFilledQuantity(v float64)`

SetFilledQuantity sets FilledQuantity field to given value.

### HasFilledQuantity

`func (o *AccountOrderLeg) HasFilledQuantity() bool`

HasFilledQuantity returns a boolean if a field has been set.

### SetFilledQuantityNil

`func (o *AccountOrderLeg) SetFilledQuantityNil(b bool)`

 SetFilledQuantityNil sets the value for FilledQuantity to be an explicit nil

### UnsetFilledQuantity
`func (o *AccountOrderLeg) UnsetFilledQuantity()`

UnsetFilledQuantity ensures that no value is present for FilledQuantity, not even an explicit nil
### GetCanceledQuantity

`func (o *AccountOrderLeg) GetCanceledQuantity() float64`

GetCanceledQuantity returns the CanceledQuantity field if non-nil, zero value otherwise.

### GetCanceledQuantityOk

`func (o *AccountOrderLeg) GetCanceledQuantityOk() (*float64, bool)`

GetCanceledQuantityOk returns a tuple with the CanceledQuantity field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCanceledQuantity

`func (o *AccountOrderLeg) SetCanceledQuantity(v float64)`

SetCanceledQuantity sets CanceledQuantity field to given value.

### HasCanceledQuantity

`func (o *AccountOrderLeg) HasCanceledQuantity() bool`

HasCanceledQuantity returns a boolean if a field has been set.

### SetCanceledQuantityNil

`func (o *AccountOrderLeg) SetCanceledQuantityNil(b bool)`

 SetCanceledQuantityNil sets the value for CanceledQuantity to be an explicit nil

### UnsetCanceledQuantity
`func (o *AccountOrderLeg) UnsetCanceledQuantity()`

UnsetCanceledQuantity ensures that no value is present for CanceledQuantity, not even an explicit nil
### GetExecutionPrice

`func (o *AccountOrderLeg) GetExecutionPrice() float64`

GetExecutionPrice returns the ExecutionPrice field if non-nil, zero value otherwise.

### GetExecutionPriceOk

`func (o *AccountOrderLeg) GetExecutionPriceOk() (*float64, bool)`

GetExecutionPriceOk returns a tuple with the ExecutionPrice field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetExecutionPrice

`func (o *AccountOrderLeg) SetExecutionPrice(v float64)`

SetExecutionPrice sets ExecutionPrice field to given value.

### HasExecutionPrice

`func (o *AccountOrderLeg) HasExecutionPrice() bool`

HasExecutionPrice returns a boolean if a field has been set.

### SetExecutionPriceNil

`func (o *AccountOrderLeg) SetExecutionPriceNil(b bool)`

 SetExecutionPriceNil sets the value for ExecutionPrice to be an explicit nil

### UnsetExecutionPrice
`func (o *AccountOrderLeg) UnsetExecutionPrice()`

UnsetExecutionPrice ensures that no value is present for ExecutionPrice, not even an explicit nil
### GetStatus

`func (o *AccountOrderLeg) GetStatus() AccountOrderRecordStatusV2Nullable`

GetStatus returns the Status field if non-nil, zero value otherwise.

### GetStatusOk

`func (o *AccountOrderLeg) GetStatusOk() (*AccountOrderRecordStatusV2Nullable, bool)`

GetStatusOk returns a tuple with the Status field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetStatus

`func (o *AccountOrderLeg) SetStatus(v AccountOrderRecordStatusV2Nullable)`

SetStatus sets Status field to given value.

### HasStatus

`func (o *AccountOrderLeg) HasStatus() bool`

HasStatus returns a boolean if a field has been set.

### SetStatusNil

`func (o *AccountOrderLeg) SetStatusNil(b bool)`

 SetStatusNil sets the value for Status to be an explicit nil

### UnsetStatus
`func (o *AccountOrderLeg) UnsetStatus()`

UnsetStatus ensures that no value is present for Status, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


