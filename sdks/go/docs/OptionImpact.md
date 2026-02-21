# OptionImpact

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**EstimatedCost** | Pointer to **string** | Estimated option premium for the order (before fees). | [optional] 
**EstimatedTransactionFee** | Pointer to **string** | Estimated transaction fees and commissions for the order. | [optional] 

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

### GetEstimatedCost

`func (o *OptionImpact) GetEstimatedCost() string`

GetEstimatedCost returns the EstimatedCost field if non-nil, zero value otherwise.

### GetEstimatedCostOk

`func (o *OptionImpact) GetEstimatedCostOk() (*string, bool)`

GetEstimatedCostOk returns a tuple with the EstimatedCost field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedCost

`func (o *OptionImpact) SetEstimatedCost(v string)`

SetEstimatedCost sets EstimatedCost field to given value.

### HasEstimatedCost

`func (o *OptionImpact) HasEstimatedCost() bool`

HasEstimatedCost returns a boolean if a field has been set.

### GetEstimatedTransactionFee

`func (o *OptionImpact) GetEstimatedTransactionFee() string`

GetEstimatedTransactionFee returns the EstimatedTransactionFee field if non-nil, zero value otherwise.

### GetEstimatedTransactionFeeOk

`func (o *OptionImpact) GetEstimatedTransactionFeeOk() (*string, bool)`

GetEstimatedTransactionFeeOk returns a tuple with the EstimatedTransactionFee field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetEstimatedTransactionFee

`func (o *OptionImpact) SetEstimatedTransactionFee(v string)`

SetEstimatedTransactionFee sets EstimatedTransactionFee field to given value.

### HasEstimatedTransactionFee

`func (o *OptionImpact) HasEstimatedTransactionFee() bool`

HasEstimatedTransactionFee returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


