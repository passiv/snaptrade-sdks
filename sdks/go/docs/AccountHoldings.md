# AccountHoldings

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | Pointer to [**SnapTradeHoldingsAccount**](SnapTradeHoldingsAccount.md) |  | [optional] 
**Balances** | Pointer to [**[]Balance**](Balance.md) |  | [optional] 
**Positions** | Pointer to [**[]Position**](Position.md) |  | [optional] 
**TotalValue** | Pointer to [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 

## Methods

### NewAccountHoldings

`func NewAccountHoldings() *AccountHoldings`

NewAccountHoldings instantiates a new AccountHoldings object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountHoldingsWithDefaults

`func NewAccountHoldingsWithDefaults() *AccountHoldings`

NewAccountHoldingsWithDefaults instantiates a new AccountHoldings object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetAccount

`func (o *AccountHoldings) GetAccount() SnapTradeHoldingsAccount`

GetAccount returns the Account field if non-nil, zero value otherwise.

### GetAccountOk

`func (o *AccountHoldings) GetAccountOk() (*SnapTradeHoldingsAccount, bool)`

GetAccountOk returns a tuple with the Account field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetAccount

`func (o *AccountHoldings) SetAccount(v SnapTradeHoldingsAccount)`

SetAccount sets Account field to given value.

### HasAccount

`func (o *AccountHoldings) HasAccount() bool`

HasAccount returns a boolean if a field has been set.

### GetBalances

`func (o *AccountHoldings) GetBalances() []Balance`

GetBalances returns the Balances field if non-nil, zero value otherwise.

### GetBalancesOk

`func (o *AccountHoldings) GetBalancesOk() (*[]Balance, bool)`

GetBalancesOk returns a tuple with the Balances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetBalances

`func (o *AccountHoldings) SetBalances(v []Balance)`

SetBalances sets Balances field to given value.

### HasBalances

`func (o *AccountHoldings) HasBalances() bool`

HasBalances returns a boolean if a field has been set.

### SetBalancesNil

`func (o *AccountHoldings) SetBalancesNil(b bool)`

 SetBalancesNil sets the value for Balances to be an explicit nil

### UnsetBalances
`func (o *AccountHoldings) UnsetBalances()`

UnsetBalances ensures that no value is present for Balances, not even an explicit nil
### GetPositions

`func (o *AccountHoldings) GetPositions() []Position`

GetPositions returns the Positions field if non-nil, zero value otherwise.

### GetPositionsOk

`func (o *AccountHoldings) GetPositionsOk() (*[]Position, bool)`

GetPositionsOk returns a tuple with the Positions field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetPositions

`func (o *AccountHoldings) SetPositions(v []Position)`

SetPositions sets Positions field to given value.

### HasPositions

`func (o *AccountHoldings) HasPositions() bool`

HasPositions returns a boolean if a field has been set.

### SetPositionsNil

`func (o *AccountHoldings) SetPositionsNil(b bool)`

 SetPositionsNil sets the value for Positions to be an explicit nil

### UnsetPositions
`func (o *AccountHoldings) UnsetPositions()`

UnsetPositions ensures that no value is present for Positions, not even an explicit nil
### GetTotalValue

`func (o *AccountHoldings) GetTotalValue() SnapTradeHoldingsTotalValue`

GetTotalValue returns the TotalValue field if non-nil, zero value otherwise.

### GetTotalValueOk

`func (o *AccountHoldings) GetTotalValueOk() (*SnapTradeHoldingsTotalValue, bool)`

GetTotalValueOk returns a tuple with the TotalValue field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetTotalValue

`func (o *AccountHoldings) SetTotalValue(v SnapTradeHoldingsTotalValue)`

SetTotalValue sets TotalValue field to given value.

### HasTotalValue

`func (o *AccountHoldings) HasTotalValue() bool`

HasTotalValue returns a boolean if a field has been set.


[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


