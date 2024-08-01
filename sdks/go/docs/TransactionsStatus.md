# TransactionsStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialSyncCompleted** | Pointer to **bool** |  | [optional] 
**LastSuccessfulSync** | Pointer to **NullableString** | Date in YYYY-MM-DD format or null | [optional] 
**FirstTransactionDate** | Pointer to **NullableString** | Date in YYYY-MM-DD format or null | [optional] 

## Methods

### NewTransactionsStatus

`func NewTransactionsStatus() *TransactionsStatus`

NewTransactionsStatus instantiates a new TransactionsStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewTransactionsStatusWithDefaults

`func NewTransactionsStatusWithDefaults() *TransactionsStatus`

NewTransactionsStatusWithDefaults instantiates a new TransactionsStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetInitialSyncCompleted

`func (o *TransactionsStatus) GetInitialSyncCompleted() bool`

GetInitialSyncCompleted returns the InitialSyncCompleted field if non-nil, zero value otherwise.

### GetInitialSyncCompletedOk

`func (o *TransactionsStatus) GetInitialSyncCompletedOk() (*bool, bool)`

GetInitialSyncCompletedOk returns a tuple with the InitialSyncCompleted field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetInitialSyncCompleted

`func (o *TransactionsStatus) SetInitialSyncCompleted(v bool)`

SetInitialSyncCompleted sets InitialSyncCompleted field to given value.

### HasInitialSyncCompleted

`func (o *TransactionsStatus) HasInitialSyncCompleted() bool`

HasInitialSyncCompleted returns a boolean if a field has been set.

### GetLastSuccessfulSync

`func (o *TransactionsStatus) GetLastSuccessfulSync() string`

GetLastSuccessfulSync returns the LastSuccessfulSync field if non-nil, zero value otherwise.

### GetLastSuccessfulSyncOk

`func (o *TransactionsStatus) GetLastSuccessfulSyncOk() (*string, bool)`

GetLastSuccessfulSyncOk returns a tuple with the LastSuccessfulSync field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLastSuccessfulSync

`func (o *TransactionsStatus) SetLastSuccessfulSync(v string)`

SetLastSuccessfulSync sets LastSuccessfulSync field to given value.

### HasLastSuccessfulSync

`func (o *TransactionsStatus) HasLastSuccessfulSync() bool`

HasLastSuccessfulSync returns a boolean if a field has been set.

### SetLastSuccessfulSyncNil

`func (o *TransactionsStatus) SetLastSuccessfulSyncNil(b bool)`

 SetLastSuccessfulSyncNil sets the value for LastSuccessfulSync to be an explicit nil

### UnsetLastSuccessfulSync
`func (o *TransactionsStatus) UnsetLastSuccessfulSync()`

UnsetLastSuccessfulSync ensures that no value is present for LastSuccessfulSync, not even an explicit nil
### GetFirstTransactionDate

`func (o *TransactionsStatus) GetFirstTransactionDate() string`

GetFirstTransactionDate returns the FirstTransactionDate field if non-nil, zero value otherwise.

### GetFirstTransactionDateOk

`func (o *TransactionsStatus) GetFirstTransactionDateOk() (*string, bool)`

GetFirstTransactionDateOk returns a tuple with the FirstTransactionDate field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetFirstTransactionDate

`func (o *TransactionsStatus) SetFirstTransactionDate(v string)`

SetFirstTransactionDate sets FirstTransactionDate field to given value.

### HasFirstTransactionDate

`func (o *TransactionsStatus) HasFirstTransactionDate() bool`

HasFirstTransactionDate returns a boolean if a field has been set.

### SetFirstTransactionDateNil

`func (o *TransactionsStatus) SetFirstTransactionDateNil(b bool)`

 SetFirstTransactionDateNil sets the value for FirstTransactionDate to be an explicit nil

### UnsetFirstTransactionDate
`func (o *TransactionsStatus) UnsetFirstTransactionDate()`

UnsetFirstTransactionDate ensures that no value is present for FirstTransactionDate, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


