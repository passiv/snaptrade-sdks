

# OptionImpact

Estimated cash change and fees for an option order before it is placed.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**estimatedCashChange** | **String** | Estimated cash change for the order, before fees. |  [optional] |
|**cashChangeDirection** | [**CashChangeDirectionEnum**](#CashChangeDirectionEnum) | Direction of the cash change. CREDIT means cash is received, DEBIT means cash is paid out, EVEN means no cash changes hands. UNKNOWN if the direction cannot be determined from the request. |  [optional] |
|**estimatedFeeTotal** | **String** | Estimated total transaction fees and commissions for the order. |  [optional] |



## Enum: CashChangeDirectionEnum

| Name | Value |
|---- | -----|
| CREDIT | &quot;CREDIT&quot; |
| DEBIT | &quot;DEBIT&quot; |
| EVEN | &quot;EVEN&quot; |
| UNKNOWN | &quot;UNKNOWN&quot; |



