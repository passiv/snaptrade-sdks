

# AccountBalancesV2ResponseBuyingPowerInner


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**currency** | **String** | ISO-4217 currency code. |  |
|**amount** | **BigDecimal** | Buying power in this currency, rounded to 2 decimal places. Can be negative, for example on a margin account that has exceeded its margin requirement. |  |
|**basis** | [**BasisEnum**](#BasisEnum) | What the amount may include. - &#x60;settled&#x60;: settled cash only. Excludes proceeds from sales that haven&#39;t settled and cash already committed to purchases that haven&#39;t settled, so spending it won&#39;t cause a good-faith violation. - &#x60;cash&#x60;: may include proceeds from trades that haven&#39;t settled. - &#x60;margin&#x60;: may include money borrowed on margin.  To avoid good-faith violations on cash accounts, only treat the amount as safe to spend when &#x60;basis&#x60; is &#x60;settled&#x60;.  |  |



## Enum: BasisEnum

| Name | Value |
|---- | -----|
| SETTLED | &quot;settled&quot; |
| CASH | &quot;cash&quot; |
| MARGIN | &quot;margin&quot; |



