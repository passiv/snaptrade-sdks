

# BrokerageAuthorizationDataFreshnessMode

Indicates the data freshness provided by the brokerage institution and by SnapTrade for this connection.  `institution` is `delayed` when the brokerage itself provides delayed data. See the \"Data freshness\" column on the \"Positions & recent orders\" tab at https://support.snaptrade.com/brokerages.  `snaptrade` is `delayed` when SnapTrade uses cached data for the connection because of the customer's plan or the integration. Otherwise, it is `realtime` and SnapTrade retrieves current data from the brokerage during API calls. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**institution** | [**InstitutionEnum**](#InstitutionEnum) |  |  |
|**snaptrade** | [**SnaptradeEnum**](#SnaptradeEnum) |  |  |



## Enum: InstitutionEnum

| Name | Value |
|---- | -----|
| REALTIME | &quot;realtime&quot; |
| DELAYED | &quot;delayed&quot; |



## Enum: SnaptradeEnum

| Name | Value |
|---- | -----|
| REALTIME | &quot;realtime&quot; |
| DELAYED | &quot;delayed&quot; |



