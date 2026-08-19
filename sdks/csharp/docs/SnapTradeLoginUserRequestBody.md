# SnapTrade.Net.Model.SnapTradeLoginUserRequestBody
Data to login a user via SnapTrade Partner

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Broker** | **string** | Slug of the brokerage to connect the user to. See [the integrations page](https://support.snaptrade.com/brokerages) for a list of supported brokerages and their slugs. | [optional] 
**ImmediateRedirect** | **bool** | When set to &#x60;true&#x60;, user will be redirected back to the partner&#39;s site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**CustomRedirect** | **string** | URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information. | [optional] 
**Reconnect** | **string** | The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information. | [optional] 
**ConnectionType** | **string** | Determines connection permissions (default: read) - &#x60;read&#x60;: Data access only. - &#x60;trade&#x60;: Data and trading access. - &#x60;trade-if-available&#x60;: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically.  | [optional] [default to ConnectionTypeEnum.Read]
**ShowCloseButton** | **bool** | Controls whether the close (X) button is displayed in the connection portal. When false, you control closing behavior from your app. Defaults to true. | [optional] 
**DarkMode** | **bool** | Enable dark mode for the connection portal. Defaults to false. | [optional] 
**Locale** | **string** | Language the connection portal renders in. &#x60;en&#x60; and &#x60;pt-BR&#x60; are the languages we ship; any other language is rejected with a 400. Matching is case- and separator-insensitive, so &#x60;pt-br&#x60;, &#x60;pt-BR&#x60; and &#x60;pt_BR&#x60; are equivalent, and a regional tag resolves to the language when we ship it, so &#x60;en-US&#x60; renders &#x60;en&#x60;. Deliberately not an enum: those equivalent spellings are all accepted by the API, and an enum would have generated SDKs reject them before the request is sent. Screens without translated copy fall back to English individually. Defaults to &#x60;en&#x60;.  | [optional] [default to "en"]
**ConnectionPortalVersion** | **string** | Sets the connection portal version to render. Currently only &#x60;v4&#x60; is supported and is the default. All other versions are deprecated and will automatically be set to v4. | [optional] [default to ConnectionPortalVersionEnum.V4]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

