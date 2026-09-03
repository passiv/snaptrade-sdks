

# BrokerageAuthorizationDataFreshnessMode

Indicates the data freshness provided by the institution and by SnapTrade for this connection. The two values are independent; the connection's data is effectively delayed if either value is `delayed`.  The \"Data freshness\" column on the [SnapTrade Institution Support](https://support.snaptrade.com/brokerages) page (Positions & recent orders tab) identifies institutions whose connections are considered delayed on a Real-time plan because either `institution` or `snaptrade` is `delayed`. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**institution** | [**InstitutionEnum**](#InstitutionEnum) | Indicates the freshness of the data provided by the institution. &#x60;realtime&#x60; means the institution provides current data; &#x60;delayed&#x60; means the institution itself does not allow intra-day data updates.  |  |
|**snaptrade** | [**SnaptradeEnum**](#SnaptradeEnum) | Indicates how SnapTrade retrieves data for this connection. &#x60;realtime&#x60; means SnapTrade retrieves current data from the institution during API calls. &#x60;delayed&#x60; means SnapTrade serves cached data, either because the customer&#39;s plan uses Daily data or because retrieving live data from the institution is too latency-intensive.  When this value is &#x60;delayed&#x60;, you can request updated data using the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  |  |



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



