# AccountSyncStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Transactions** | Pointer to [**TransactionsStatus**](TransactionsStatus.md) |  | [optional] 
**Holdings** | Pointer to [**HoldingsStatus**](HoldingsStatus.md) |  | [optional] 

## Methods

### NewAccountSyncStatus

`func NewAccountSyncStatus() *AccountSyncStatus`

NewAccountSyncStatus instantiates a new AccountSyncStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountSyncStatusWithDefaults

`func NewAccountSyncStatusWithDefaults() *AccountSyncStatus`

NewAccountSyncStatusWithDefaults instantiates a new AccountSyncStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTransactions

`func (o *AccountSyncStatus) GetTransactions() TransactionsStatus`

GetTransactions returns the Transactions field if non-nil, zero value otherwise.

### GetTransactionsOk

`func (o *AccountSyncStatus) GetTransactionsOk() (*TransactionsStatus, bool)`

GetTransactionsOk returns a tuple with the Transactions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactions

`func (o *AccountSyncStatus) SetTransactions(v TransactionsStatus)`

SetTransactions sets Transactions field to given value.

### HasTransactions

`func (o *AccountSyncStatus) HasTransactions() bool`

HasTransactions returns a boolean if a field has been set.

### GetHoldings

`func (o *AccountSyncStatus) GetHoldings() HoldingsStatus`

GetHoldings returns the Holdings field if non-nil, zero value otherwise.

### GetHoldingsOk

`func (o *AccountSyncStatus) GetHoldingsOk() (*HoldingsStatus, bool)`

GetHoldingsOk returns a tuple with the Holdings field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetHoldings

`func (o *AccountSyncStatus) SetHoldings(v HoldingsStatus)`

SetHoldings sets Holdings field to given value.

### HasHoldings

`func (o *AccountSyncStatus) HasHoldings() bool`

HasHoldings returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


