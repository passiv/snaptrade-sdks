# SnapTrade.Net.Model.AccountHoldingsAccount
A wrapper object containing holdings information for a single account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Account** | [**SnapTradeHoldingsAccountAccountId**](SnapTradeHoldingsAccountAccountId.md) |  | [optional] 
**Balances** | [**List&lt;Balance&gt;**](Balance.md) | List of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances). | [optional] 
**Positions** | [**List&lt;Position&gt;**](Position.md) | List of stock/ETF/crypto/mutual fund positions in the account. | [optional] 
**OptionPositions** | [**List&lt;OptionsPosition&gt;**](OptionsPosition.md) | List of option positions in the account. | [optional] 
**Orders** | [**List&lt;AccountOrderRecord&gt;**](AccountOrderRecord.md) | List of recent orders in the account, including both pending and executed orders. Note that option orders are included in this list. Option orders will have a null &#x60;universal_symbol&#x60; field and a non-null &#x60;option_symbol&#x60; field. | [optional] 
**TotalValue** | [**SnapTradeHoldingsTotalValue**](SnapTradeHoldingsTotalValue.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

