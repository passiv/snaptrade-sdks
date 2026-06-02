

# TrailingStop

Trail configuration for trailing stop orders.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**amount** | **String** | The trail amount. Interpreted as dollars if &#x60;type&#x60; is &#x60;DOLLAR&#x60;, or a percentage if &#x60;type&#x60; is &#x60;PERCENT&#x60;. |  |
|**type** | [**TypeEnum**](#TypeEnum) | Whether the trail &#x60;amount&#x60; is a dollar amount (&#x60;DOLLAR&#x60;) or a percentage (&#x60;PERCENT&#x60;). For example, if &#x60;amount&#x60; is \&quot;0.60\&quot; and &#x60;type&#x60; is &#x60;DOLLAR&#x60;, the stop price will trail the market price by $0.60. If &#x60;amount&#x60; is \&quot;5\&quot; and &#x60;type&#x60; is &#x60;PERCENT&#x60;, the stop price will trail the market price by 5%. |  |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| DOLLAR | &quot;DOLLAR&quot; |
| PERCENT | &quot;PERCENT&quot; |



