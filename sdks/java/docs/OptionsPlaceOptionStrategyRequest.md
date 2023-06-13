

# OptionsPlaceOptionStrategyRequest


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**orderType** | [**OrderTypeEnum**](#OrderTypeEnum) |  |  |
|**timeInForce** | [**TimeInForceEnum**](#TimeInForceEnum) |  |  |
|**price** | **Double** | Trade Price if limit or stop limit order |  |



## Enum: OrderTypeEnum

| Name | Value |
|---- | -----|
| LIMIT | &quot;Limit&quot; |
| MARKET | &quot;Market&quot; |
| NETDEBIT | &quot;NetDebit&quot; |
| NETCREDIT | &quot;NetCredit&quot; |



## Enum: TimeInForceEnum

| Name | Value |
|---- | -----|
| DAY | &quot;DAY&quot; |
| GTC | &quot;GTC&quot; |



