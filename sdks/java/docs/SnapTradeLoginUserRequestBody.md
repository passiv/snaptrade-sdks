

# SnapTradeLoginUserRequestBody

Data to login a user via SnapTrade Partner

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**broker** | **String** | Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;3cfea70ef4254afc89704e47275a7a9a&amp;pvs&#x3D;4) for a list of supported brokerages and their slugs. |  [optional] |
|**immediateRedirect** | **Boolean** | When set to &#x60;true&#x60;, user will be redirected back to the partner&#39;s site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. |  [optional] |
|**customRedirect** | **String** | URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. |  [optional] |
|**reconnect** | **String** | The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information. |  [optional] |
|**connectionType** | [**ConnectionTypeEnum**](#ConnectionTypeEnum) | Determines connection permissions (default: read) - &#x60;read&#x60;: Data access only. - &#x60;trade&#x60;: Data and trading access. - &#x60;trade-if-available&#x60;: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically.  |  [optional] |
|**showCloseButton** | **Boolean** | Controls whether the close (X) button is displayed in the connection portal. When false, you control closing behavior from your app. Defaults to true. |  [optional] |
|**connectionPortalVersion** | [**ConnectionPortalVersionEnum**](#ConnectionPortalVersionEnum) | Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4. |  [optional] |



## Enum: ConnectionTypeEnum

| Name | Value |
|---- | -----|
| READ | &quot;read&quot; |
| TRADE | &quot;trade&quot; |
| TRADE_IF_AVAILABLE | &quot;trade-if-available&quot; |



## Enum: ConnectionPortalVersionEnum

| Name | Value |
|---- | -----|
| V4 | &quot;v4&quot; |
| V3 | &quot;v3&quot; |
| V2 | &quot;v2&quot; |



