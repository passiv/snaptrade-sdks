# AccountValueHistoryResponse

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**History** | Pointer to [**[]AccountValueHistoryItem**](AccountValueHistoryItem.md) | List of estimated account values over time returned by the endpoint. | [optional] 
**Currency** | Pointer to **string** | The ISO-4217 currency code for the account values. | [optional] 

## Methods

### NewAccountValueHistoryResponse

`func NewAccountValueHistoryResponse() *AccountValueHistoryResponse`

NewAccountValueHistoryResponse instantiates a new AccountValueHistoryResponse object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountValueHistoryResponseWithDefaults

`func NewAccountValueHistoryResponseWithDefaults() *AccountValueHistoryResponse`

NewAccountValueHistoryResponseWithDefaults instantiates a new AccountValueHistoryResponse object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetHistory

`func (o *AccountValueHistoryResponse) GetHistory() []AccountValueHistoryItem`

GetHistory returns the History field if non-nil, zero value otherwise.

### GetHistoryOk

`func (o *AccountValueHistoryResponse) GetHistoryOk() (*[]AccountValueHistoryItem, bool)`

GetHistoryOk returns a tuple with the History field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHistory

`func (o *AccountValueHistoryResponse) SetHistory(v []AccountValueHistoryItem)`

SetHistory sets History field to given value.

### HasHistory

`func (o *AccountValueHistoryResponse) HasHistory() bool`

HasHistory returns a boolean if a field has been set.

### GetCurrency

`func (o *AccountValueHistoryResponse) GetCurrency() string`

GetCurrency returns the Currency field if non-nil, zero value otherwise.

### GetCurrencyOk

`func (o *AccountValueHistoryResponse) GetCurrencyOk() (*string, bool)`

GetCurrencyOk returns a tuple with the Currency field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetCurrency

`func (o *AccountValueHistoryResponse) SetCurrency(v string)`

SetCurrency sets Currency field to given value.

### HasCurrency

`func (o *AccountValueHistoryResponse) HasCurrency() bool`

HasCurrency returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


