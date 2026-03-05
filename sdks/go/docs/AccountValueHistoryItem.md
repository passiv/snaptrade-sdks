# AccountValueHistoryItem

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Date** | Pointer to **string** | The date of the estimated account value | [optional] 
**TotalValue** | Pointer to **string** | Estimate of the total market value of this account (includes cash, equity, fixed income, etc) at the given date. | [optional] 

## Methods

### NewAccountValueHistoryItem

`func NewAccountValueHistoryItem() *AccountValueHistoryItem`

NewAccountValueHistoryItem instantiates a new AccountValueHistoryItem object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountValueHistoryItemWithDefaults

`func NewAccountValueHistoryItemWithDefaults() *AccountValueHistoryItem`

NewAccountValueHistoryItemWithDefaults instantiates a new AccountValueHistoryItem object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetDate

`func (o *AccountValueHistoryItem) GetDate() string`

GetDate returns the Date field if non-nil, zero value otherwise.

### GetDateOk

`func (o *AccountValueHistoryItem) GetDateOk() (*string, bool)`

GetDateOk returns a tuple with the Date field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetDate

`func (o *AccountValueHistoryItem) SetDate(v string)`

SetDate sets Date field to given value.

### HasDate

`func (o *AccountValueHistoryItem) HasDate() bool`

HasDate returns a boolean if a field has been set.

### GetTotalValue

`func (o *AccountValueHistoryItem) GetTotalValue() string`

GetTotalValue returns the TotalValue field if non-nil, zero value otherwise.

### GetTotalValueOk

`func (o *AccountValueHistoryItem) GetTotalValueOk() (*string, bool)`

GetTotalValueOk returns a tuple with the TotalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValue

`func (o *AccountValueHistoryItem) SetTotalValue(v string)`

SetTotalValue sets TotalValue field to given value.

### HasTotalValue

`func (o *AccountValueHistoryItem) HasTotalValue() bool`

HasTotalValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


