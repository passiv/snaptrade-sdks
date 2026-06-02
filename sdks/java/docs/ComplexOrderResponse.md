

# ComplexOrderResponse

Response returned after successfully placing a complex order. AccountOrderRecord rows for the legs are not created synchronously — they're hydrated by the next brokerage sync, and can be queried later using the returned `brokerage_group_order_id`. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**type** | [**TypeEnum**](#TypeEnum) | The complex order type that was placed. |  [optional] |
|**brokerageGroupOrderId** | **String** | The brokerage-assigned identifier that links all legs of this complex order together. Each leg will eventually appear as a separate AccountOrderRecord sharing this value. May be null if the brokerage does not return a group identifier.  |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| OCO | &quot;OCO&quot; |
| OTO | &quot;OTO&quot; |
| OTOCO | &quot;OTOCO&quot; |



