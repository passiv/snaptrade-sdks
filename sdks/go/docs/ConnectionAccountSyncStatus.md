# ConnectionAccountSyncStatus

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Transactions** | Pointer to [**TransactionsStatus**](TransactionsStatus.md) |  | [optional] 
**Orders** | Pointer to [**NullableTime.Time**](time.Time.md) | The last time orders were successfully synced by SnapTrade. | [optional] 
**Positions** | Pointer to [**NullableTime.Time**](time.Time.md) | The last time positions were successfully synced by SnapTrade. | [optional] 
**Balances** | Pointer to [**NullableTime.Time**](time.Time.md) | The last time balances were successfully synced by SnapTrade. | [optional] 

## Methods

### NewConnectionAccountSyncStatus

`func NewConnectionAccountSyncStatus() *ConnectionAccountSyncStatus`

NewConnectionAccountSyncStatus instantiates a new ConnectionAccountSyncStatus object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewConnectionAccountSyncStatusWithDefaults

`func NewConnectionAccountSyncStatusWithDefaults() *ConnectionAccountSyncStatus`

NewConnectionAccountSyncStatusWithDefaults instantiates a new ConnectionAccountSyncStatus object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetTransactions

`func (o *ConnectionAccountSyncStatus) GetTransactions() TransactionsStatus`

GetTransactions returns the Transactions field if non-nil, zero value otherwise.

### GetTransactionsOk

`func (o *ConnectionAccountSyncStatus) GetTransactionsOk() (*TransactionsStatus, bool)`

GetTransactionsOk returns a tuple with the Transactions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTransactions

`func (o *ConnectionAccountSyncStatus) SetTransactions(v TransactionsStatus)`

SetTransactions sets Transactions field to given value.

### HasTransactions

`func (o *ConnectionAccountSyncStatus) HasTransactions() bool`

HasTransactions returns a boolean if a field has been set.

### GetOrders

`func (o *ConnectionAccountSyncStatus) GetOrders() time.Time`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *ConnectionAccountSyncStatus) GetOrdersOk() (*time.Time, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *ConnectionAccountSyncStatus) SetOrders(v time.Time)`

SetOrders sets Orders field to given value.

### HasOrders

`func (o *ConnectionAccountSyncStatus) HasOrders() bool`

HasOrders returns a boolean if a field has been set.

### SetOrdersNil

`func (o *ConnectionAccountSyncStatus) SetOrdersNil(b bool)`

 SetOrdersNil sets the value for Orders to be an explicit nil

### UnsetOrders
`func (o *ConnectionAccountSyncStatus) UnsetOrders()`

UnsetOrders ensures that no value is present for Orders, not even an explicit nil
### GetPositions

`func (o *ConnectionAccountSyncStatus) GetPositions() time.Time`

GetPositions returns the Positions field if non-nil, zero value otherwise.

### GetPositionsOk

`func (o *ConnectionAccountSyncStatus) GetPositionsOk() (*time.Time, bool)`

GetPositionsOk returns a tuple with the Positions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPositions

`func (o *ConnectionAccountSyncStatus) SetPositions(v time.Time)`

SetPositions sets Positions field to given value.

### HasPositions

`func (o *ConnectionAccountSyncStatus) HasPositions() bool`

HasPositions returns a boolean if a field has been set.

### SetPositionsNil

`func (o *ConnectionAccountSyncStatus) SetPositionsNil(b bool)`

 SetPositionsNil sets the value for Positions to be an explicit nil

### UnsetPositions
`func (o *ConnectionAccountSyncStatus) UnsetPositions()`

UnsetPositions ensures that no value is present for Positions, not even an explicit nil
### GetBalances

`func (o *ConnectionAccountSyncStatus) GetBalances() time.Time`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *ConnectionAccountSyncStatus) GetBalancesOk() (*time.Time, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *ConnectionAccountSyncStatus) SetBalances(v time.Time)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *ConnectionAccountSyncStatus) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### SetBalancesNil

`func (o *ConnectionAccountSyncStatus) SetBalancesNil(b bool)`

 SetBalancesNil sets the value for Balances to be an explicit nil

### UnsetBalances
`func (o *ConnectionAccountSyncStatus) UnsetBalances()`

UnsetBalances ensures that no value is present for Balances, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


