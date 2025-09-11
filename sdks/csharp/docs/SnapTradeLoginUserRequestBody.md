# SnapTrade.Net.Model.SnapTradeLoginUserRequestBody
Data to login a user via SnapTrade Partner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Broker** | **string** | Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;3cfea70ef4254afc89704e47275a7a9a&amp;pvs&#x3D;4) for a list of supported brokerages and their slugs. | [optional] 
**ImmediateRedirect** | **bool** | When set to &#x60;true&#x60;, user will be redirected back to the partner&#39;s site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**CustomRedirect** | **string** | URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**Reconnect** | **string** | The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information. | [optional] 
**ConnectionType** | **string** | Determines connection permissions (default: read) - &#x60;read&#x60;: Data access only. - &#x60;trade&#x60;: Data and trading access. - &#x60;trade-if-available&#x60;: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically.  | [optional] [default to ConnectionTypeEnum.Read]
**ConnectionPortalVersion** | **string** | Sets the connection portal version to render. Currently only v4 is supported and is the default. All other versions are deprecated and will automatically be set to v4. | [optional] [default to ConnectionPortalVersionEnum.V4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

