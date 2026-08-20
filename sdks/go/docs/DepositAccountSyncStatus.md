# DepositAccountSyncStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Transactions** | Pointer to [**TransactionsStatus**](TransactionsStatus.md) |  | [optional] 
**Balances** | Pointer to **NullableTime** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

## Methods

### NewDepositAccountSyncStatus

`func NewDepositAccountSyncStatus() *DepositAccountSyncStatus`

NewDepositAccountSyncStatus instantiates a new DepositAccountSyncStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewDepositAccountSyncStatusWithDefaults

`func NewDepositAccountSyncStatusWithDefaults() *DepositAccountSyncStatus`

NewDepositAccountSyncStatusWithDefaults instantiates a new DepositAccountSyncStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTransactions

`func (o *DepositAccountSyncStatus) GetTransactions() TransactionsStatus`

GetTransactions returns the Transactions field if non-nil, zero value otherwise.

### GetTransactionsOk

`func (o *DepositAccountSyncStatus) GetTransactionsOk() (*TransactionsStatus, bool)`

GetTransactionsOk returns a tuple with the Transactions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactions

`func (o *DepositAccountSyncStatus) SetTransactions(v TransactionsStatus)`

SetTransactions sets Transactions field to given value.

### HasTransactions

`func (o *DepositAccountSyncStatus) HasTransactions() bool`

HasTransactions returns a boolean if a field has been set.

### GetBalances

`func (o *DepositAccountSyncStatus) GetBalances() time.Time`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *DepositAccountSyncStatus) GetBalancesOk() (*time.Time, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *DepositAccountSyncStatus) SetBalances(v time.Time)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *DepositAccountSyncStatus) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### SetBalancesNil

`func (o *DepositAccountSyncStatus) SetBalancesNil(b bool)`

 SetBalancesNil sets the value for Balances to be an explicit nil

### UnsetBalances
`func (o *DepositAccountSyncStatus) UnsetBalances()`

UnsetBalances ensures that no value is present for Balances, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


