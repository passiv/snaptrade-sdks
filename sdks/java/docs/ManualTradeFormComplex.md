

# ManualTradeFormComplex

Request body for placing a complex conditional order (OCO, OTO, or OTOCO).

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) | The complex order type. - &#x60;OCO&#x60;: One Cancels the Other — two peer orders. - &#x60;OTO&#x60;: One Triggers the Other — a trigger order and a conditional order. - &#x60;OTOCO&#x60;: One Triggers a One Cancels the Other — a trigger order and two peer orders.  |  |
|**orders** | [**List&lt;ComplexOrderLeg&gt;**](ComplexOrderLeg.md) | The orders that make up the complex order. Required counts and roles per type: - &#x60;OCO&#x60;: exactly 2 orders, both &#x60;PEER&#x60; - &#x60;OTO&#x60;: exactly 2 orders, one &#x60;TRIGGER&#x60; and one &#x60;CONDITIONAL&#x60; - &#x60;OTOCO&#x60;: exactly 3 orders, one &#x60;TRIGGER&#x60; and two &#x60;PEER&#x60;  |  |
|**clientOrderId** | **String** | An optional client-provided identifier for this complex order. Passed through to the brokerage and returned in the response. |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| OCO | &quot;OCO&quot; |
| OTO | &quot;OTO&quot; |
| OTOCO | &quot;OTOCO&quot; |



