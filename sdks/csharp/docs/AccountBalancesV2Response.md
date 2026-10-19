# SnapTrade.Net.Model.AccountBalancesV2Response
Balances for a single account, fetched together as one snapshot.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**AccountId** | **string** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. | 
**CashOrMargin** | **string** | Whether the account is a cash or margin account. Same values as &#x60;cash_or_margin&#x60; on the [get account details](/reference/Account%20Information/AccountInformation_getAccountDetails) endpoint. | 
**NetValue** | [**AccountBalancesV2ResponseNetValue**](AccountBalancesV2ResponseNetValue.md) |  | 
**Cash** | [**List&lt;AccountBalancesV2ResponseCashInner&gt;**](AccountBalancesV2ResponseCashInner.md) | Cash held in the account, one entry per currency. Some institutions allow holding multiple currencies in the same account. | 
**BuyingPower** | [**List&lt;AccountBalancesV2ResponseBuyingPowerInner&gt;**](AccountBalancesV2ResponseBuyingPowerInner.md) | How much the account can spend on new purchases, one entry per currency. Amounts are in different currencies and shouldn&#39;t be added together. Null when it can&#39;t be determined. - **Cash accounts:** one entry per currency held, never more than the cash in that currency. Each entry is the settled cash available to spend in that currency where the institution reports it; otherwise it&#39;s the institution&#39;s buying power or cash, which may include proceeds from trades that haven&#39;t settled. Check &#x60;basis&#x60;. - **Margin accounts:** usually a single entry: the institution&#39;s buying power for positions held overnight, based on the account&#39;s total equity. Buying power for trades opened and closed on the same day can be higher and isn&#39;t included.  | 
**Margin** | [**AccountBalancesV2ResponseMargin**](AccountBalancesV2ResponseMargin.md) |  | 
**DataFreshness** | [**AccountBalancesV2ResponseDataFreshness**](AccountBalancesV2ResponseDataFreshness.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

