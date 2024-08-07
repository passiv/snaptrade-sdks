# AccountHoldingsAccount

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | Pointer to [**SnapTradeHoldingsAccountAccountId**](SnapTradeHoldingsAccountAccountId.md) |  | [optional] 
**Balances** | Pointer to [**[]Balance**](Balance.md) | List of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances). | [optional] 
**Positions** | Pointer to [**[]Position**](Position.md) | List of stock/ETF/crypto/mutual fund positions in the account. | [optional] 
**OptionPositions** | Pointer to [**[]OptionsPosition**](OptionsPosition.md) | List of option positions in the account. | [optional] 
**Orders** | Pointer to [**[]AccountOrderRecord**](AccountOrderRecord.md) | List of recent orders in the account, including both pending and executed orders. | [optional] 
**TotalValue** | Pointer to [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 

## Methods

### NewAccountHoldingsAccount

`func NewAccountHoldingsAccount() *AccountHoldingsAccount`

NewAccountHoldingsAccount instantiates a new AccountHoldingsAccount object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountHoldingsAccountWithDefaults

`func NewAccountHoldingsAccountWithDefaults() *AccountHoldingsAccount`

NewAccountHoldingsAccountWithDefaults instantiates a new AccountHoldingsAccount object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccount

`func (o *AccountHoldingsAccount) GetAccount() SnapTradeHoldingsAccountAccountId`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *AccountHoldingsAccount) GetAccountOk() (*SnapTradeHoldingsAccountAccountId, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *AccountHoldingsAccount) SetAccount(v SnapTradeHoldingsAccountAccountId)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *AccountHoldingsAccount) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetBalances

`func (o *AccountHoldingsAccount) GetBalances() []Balance`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *AccountHoldingsAccount) GetBalancesOk() (*[]Balance, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *AccountHoldingsAccount) SetBalances(v []Balance)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *AccountHoldingsAccount) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### SetBalancesNil

`func (o *AccountHoldingsAccount) SetBalancesNil(b bool)`

 SetBalancesNil sets the value for Balances to be an explicit nil

### UnsetBalances
`func (o *AccountHoldingsAccount) UnsetBalances()`

UnsetBalances ensures that no value is present for Balances, not even an explicit nil
### GetPositions

`func (o *AccountHoldingsAccount) GetPositions() []Position`

GetPositions returns the Positions field if non-nil, zero value otherwise.

### GetPositionsOk

`func (o *AccountHoldingsAccount) GetPositionsOk() (*[]Position, bool)`

GetPositionsOk returns a tuple with the Positions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPositions

`func (o *AccountHoldingsAccount) SetPositions(v []Position)`

SetPositions sets Positions field to given value.

### HasPositions

`func (o *AccountHoldingsAccount) HasPositions() bool`

HasPositions returns a boolean if a field has been set.

### SetPositionsNil

`func (o *AccountHoldingsAccount) SetPositionsNil(b bool)`

 SetPositionsNil sets the value for Positions to be an explicit nil

### UnsetPositions
`func (o *AccountHoldingsAccount) UnsetPositions()`

UnsetPositions ensures that no value is present for Positions, not even an explicit nil
### GetOptionPositions

`func (o *AccountHoldingsAccount) GetOptionPositions() []OptionsPosition`

GetOptionPositions returns the OptionPositions field if non-nil, zero value otherwise.

### GetOptionPositionsOk

`func (o *AccountHoldingsAccount) GetOptionPositionsOk() (*[]OptionsPosition, bool)`

GetOptionPositionsOk returns a tuple with the OptionPositions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOptionPositions

`func (o *AccountHoldingsAccount) SetOptionPositions(v []OptionsPosition)`

SetOptionPositions sets OptionPositions field to given value.

### HasOptionPositions

`func (o *AccountHoldingsAccount) HasOptionPositions() bool`

HasOptionPositions returns a boolean if a field has been set.

### SetOptionPositionsNil

`func (o *AccountHoldingsAccount) SetOptionPositionsNil(b bool)`

 SetOptionPositionsNil sets the value for OptionPositions to be an explicit nil

### UnsetOptionPositions
`func (o *AccountHoldingsAccount) UnsetOptionPositions()`

UnsetOptionPositions ensures that no value is present for OptionPositions, not even an explicit nil
### GetOrders

`func (o *AccountHoldingsAccount) GetOrders() []AccountOrderRecord`

GetOrders returns the Orders field if non-nil, zero value otherwise.

### GetOrdersOk

`func (o *AccountHoldingsAccount) GetOrdersOk() (*[]AccountOrderRecord, bool)`

GetOrdersOk returns a tuple with the Orders field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetOrders

`func (o *AccountHoldingsAccount) SetOrders(v []AccountOrderRecord)`

SetOrders sets Orders field to given value.

### HasOrders

`func (o *AccountHoldingsAccount) HasOrders() bool`

HasOrders returns a boolean if a field has been set.

### SetOrdersNil

`func (o *AccountHoldingsAccount) SetOrdersNil(b bool)`

 SetOrdersNil sets the value for Orders to be an explicit nil

### UnsetOrders
`func (o *AccountHoldingsAccount) UnsetOrders()`

UnsetOrders ensures that no value is present for Orders, not even an explicit nil
### GetTotalValue

`func (o *AccountHoldingsAccount) GetTotalValue() SnapTradeHoldingsTotalValue`

GetTotalValue returns the TotalValue field if non-nil, zero value otherwise.

### GetTotalValueOk

`func (o *AccountHoldingsAccount) GetTotalValueOk() (*SnapTradeHoldingsTotalValue, bool)`

GetTotalValueOk returns a tuple with the TotalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValue

`func (o *AccountHoldingsAccount) SetTotalValue(v SnapTradeHoldingsTotalValue)`

SetTotalValue sets TotalValue field to given value.

### HasTotalValue

`func (o *AccountHoldingsAccount) HasTotalValue() bool`

HasTotalValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


