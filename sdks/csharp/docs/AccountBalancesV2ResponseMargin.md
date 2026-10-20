# SnapTrade.Net.Model.AccountBalancesV2ResponseMargin
Margin details. Null when `cash_or_margin` is `cash`; present for `margin` and `unknown` accounts.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LoanBalances** | [**List&lt;BalanceV2CurrencyAmount&gt;**](BalanceV2CurrencyAmount.md) | The margin debit the institution is charging interest on, one entry per currency owed, as positive amounts. Debits in different currencies are listed separately and are never netted against cash in another currency, because institutions charge interest on each currency&#39;s debit.  An empty list means the account isn&#39;t borrowing. Debits under 0.01 are left out as rounding leftovers. Null when the institution doesn&#39;t report it.  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

