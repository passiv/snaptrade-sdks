# OptionImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EstimatedCashChange** | Pointer to **string** | Estimated cash change for the order, before fees. | [optional] 
**CashChangeDirection** | Pointer to **NullableString** | Direction of the cash change. CREDIT means cash is received, DEBIT means cash is paid out, EVEN means no cash changes hands. UNKNOWN if the direction cannot be determined from the request. | [optional] 
**EstimatedFeeTotal** | Pointer to **string** | Estimated total transaction fees and commissions for the order. | [optional] 

## Methods

### NewOptionImpact

`func NewOptionImpact() *OptionImpact`

NewOptionImpact instantiates a new OptionImpact object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewOptionImpactWithDefaults

`func NewOptionImpactWithDefaults() *OptionImpact`

NewOptionImpactWithDefaults instantiates a new OptionImpact object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetEstimatedCashChange

`func (o *OptionImpact) GetEstimatedCashChange() string`

GetEstimatedCashChange returns the EstimatedCashChange field if non-nil, zero value otherwise.

### GetEstimatedCashChangeOk

`func (o *OptionImpact) GetEstimatedCashChangeOk() (*string, bool)`

GetEstimatedCashChangeOk returns a tuple with the EstimatedCashChange field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCashChange

`func (o *OptionImpact) SetEstimatedCashChange(v string)`

SetEstimatedCashChange sets EstimatedCashChange field to given value.

### HasEstimatedCashChange

`func (o *OptionImpact) HasEstimatedCashChange() bool`

HasEstimatedCashChange returns a boolean if a field has been set.

### GetCashChangeDirection

`func (o *OptionImpact) GetCashChangeDirection() string`

GetCashChangeDirection returns the CashChangeDirection field if non-nil, zero value otherwise.

### GetCashChangeDirectionOk

`func (o *OptionImpact) GetCashChangeDirectionOk() (*string, bool)`

GetCashChangeDirectionOk returns a tuple with the CashChangeDirection field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCashChangeDirection

`func (o *OptionImpact) SetCashChangeDirection(v string)`

SetCashChangeDirection sets CashChangeDirection field to given value.

### HasCashChangeDirection

`func (o *OptionImpact) HasCashChangeDirection() bool`

HasCashChangeDirection returns a boolean if a field has been set.

### SetCashChangeDirectionNil

`func (o *OptionImpact) SetCashChangeDirectionNil(b bool)`

 SetCashChangeDirectionNil sets the value for CashChangeDirection to be an explicit nil

### UnsetCashChangeDirection
`func (o *OptionImpact) UnsetCashChangeDirection()`

UnsetCashChangeDirection ensures that no value is present for CashChangeDirection, not even an explicit nil
### GetEstimatedFeeTotal

`func (o *OptionImpact) GetEstimatedFeeTotal() string`

GetEstimatedFeeTotal returns the EstimatedFeeTotal field if non-nil, zero value otherwise.

### GetEstimatedFeeTotalOk

`func (o *OptionImpact) GetEstimatedFeeTotalOk() (*string, bool)`

GetEstimatedFeeTotalOk returns a tuple with the EstimatedFeeTotal field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedFeeTotal

`func (o *OptionImpact) SetEstimatedFeeTotal(v string)`

SetEstimatedFeeTotal sets EstimatedFeeTotal field to given value.

### HasEstimatedFeeTotal

`func (o *OptionImpact) HasEstimatedFeeTotal() bool`

HasEstimatedFeeTotal returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


