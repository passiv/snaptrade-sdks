# AccountBalancesV2ResponseMargin

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LoanBalances** | [**[]BalanceV2CurrencyAmount**](BalanceV2CurrencyAmount.md) | The margin debit the institution is charging interest on, one entry per currency owed, as positive amounts. Debits in different currencies are listed separately and are never netted against cash in another currency, because institutions charge interest on each currency&#39;s debit.  An empty list means the account isn&#39;t borrowing. Null when the institution doesn&#39;t report it.  | 

## Methods

### NewAccountBalancesV2ResponseMargin

`func NewAccountBalancesV2ResponseMargin(loanBalances []BalanceV2CurrencyAmount, ) *AccountBalancesV2ResponseMargin`

NewAccountBalancesV2ResponseMargin instantiates a new AccountBalancesV2ResponseMargin object
This constructor will assign default values to properties that have it defined,
and makes sure properties required by API are set, but the set of arguments
will change when the set of required properties is changed

### NewAccountBalancesV2ResponseMarginWithDefaults

`func NewAccountBalancesV2ResponseMarginWithDefaults() *AccountBalancesV2ResponseMargin`

NewAccountBalancesV2ResponseMarginWithDefaults instantiates a new AccountBalancesV2ResponseMargin object
This constructor will only assign default values to properties that have it defined,
but it doesn't guarantee that properties required by API are set

### GetLoanBalances

`func (o *AccountBalancesV2ResponseMargin) GetLoanBalances() []BalanceV2CurrencyAmount`

GetLoanBalances returns the LoanBalances field if non-nil, zero value otherwise.

### GetLoanBalancesOk

`func (o *AccountBalancesV2ResponseMargin) GetLoanBalancesOk() (*[]BalanceV2CurrencyAmount, bool)`

GetLoanBalancesOk returns a tuple with the LoanBalances field if it's non-nil, zero value otherwise
and a boolean to check if the value has been set.

### SetLoanBalances

`func (o *AccountBalancesV2ResponseMargin) SetLoanBalances(v []BalanceV2CurrencyAmount)`

SetLoanBalances sets LoanBalances field to given value.


### SetLoanBalancesNil

`func (o *AccountBalancesV2ResponseMargin) SetLoanBalancesNil(b bool)`

 SetLoanBalancesNil sets the value for LoanBalances to be an explicit nil

### UnsetLoanBalances
`func (o *AccountBalancesV2ResponseMargin) UnsetLoanBalances()`

UnsetLoanBalances ensures that no value is present for LoanBalances, not even an explicit nil

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


