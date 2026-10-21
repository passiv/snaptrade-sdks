

# AccountBalancesV2Response

Balances for a single account, fetched together as one snapshot.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**accountId** | **UUID** | Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. |  |
|**cashOrMargin** | [**CashOrMarginEnum**](#CashOrMarginEnum) | Whether the account is a cash or margin account. Same values as &#x60;cash_or_margin&#x60; on the [get account details](/reference/Account%20Information/AccountInformation_getAccountDetails) endpoint. |  |
|**netValue** | [**AccountBalancesV2ResponseNetValue**](AccountBalancesV2ResponseNetValue.md) |  |  |
|**cash** | [**List&lt;AccountBalancesV2ResponseCashInner&gt;**](AccountBalancesV2ResponseCashInner.md) | Cash held in the account, one entry per currency. Some institutions allow holding multiple currencies in the same account. |  |
|**buyingPower** | [**List&lt;AccountBalancesV2ResponseBuyingPowerInner&gt;**](AccountBalancesV2ResponseBuyingPowerInner.md) | How much the account can spend on new purchases, one entry per currency. Amounts are in different currencies and shouldn&#39;t be added together. Null when it can&#39;t be determined. - **Cash accounts:** one entry per currency held, never more than the cash in that currency. Each entry is the settled cash available to spend in that currency where the institution reports it; otherwise it&#39;s the institution&#39;s buying power or cash, which may include proceeds from trades that haven&#39;t settled. Check &#x60;basis&#x60;. - **Margin accounts:** a single entry with the institution&#39;s buying power, typically its overnight figure (day-trading buying power isn&#39;t included). How it&#39;s calculated varies by institution, it can be negative, and it may not cover options or other non-marginable securities.  |  |
|**margin** | [**AccountBalancesV2ResponseMargin**](AccountBalancesV2ResponseMargin.md) |  |  |
|**dataFreshness** | [**AccountBalancesV2ResponseDataFreshness**](AccountBalancesV2ResponseDataFreshness.md) |  |  |



## Enum: CashOrMarginEnum

| Name | Value |
|---- | -----|
| CASH | &quot;cash&quot; |
| MARGIN | &quot;margin&quot; |
| UNKNOWN | &quot;unknown&quot; |



