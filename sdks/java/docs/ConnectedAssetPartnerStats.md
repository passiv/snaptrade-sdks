

# ConnectedAssetPartnerStats

User, connection, and connected asset totals for your SnapTrade Client ID.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**totalUsers** | **Integer** | Number of users registered with your Client ID. |  |
|**totalConnectedUsers** | **Integer** | Number of users registered with your Client ID that have at least one connection, active or disabled. |  |
|**totalActiveConnections** | **Integer** | Number of active connections across users registered with your Client ID. |  |
|**totalDisabledConnections** | **Integer** | Number of disabled connections across users registered with your Client ID. |  |
|**oauthTotalUsers** | **Integer** | Number of users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. |  |
|**oauthTotalConnectedUsers** | **Integer** | Number of users who have authorized your OAuth application and have at least one connection, active or disabled. &#x60;null&#x60; if your Client ID has no OAuth application. |  |
|**oauthTotalActiveConnections** | **Integer** | Number of active connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. |  |
|**oauthTotalDisabledConnections** | **Integer** | Number of disabled connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. |  |
|**connectedAssets** | **Double** | Total latest account value across active connections of users registered with your Client ID, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. |  |
|**disabledConnectedAssets** | **Double** | Total account value across disabled connections of users registered with your Client ID, as of each connection&#39;s last sync, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. |  |
|**oauthConnectedAssets** | **Double** | Total latest account value across active connections of users who have authorized your OAuth application, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. |  |
|**oauthDisabledConnectedAssets** | **Double** | Total account value across disabled connections of users who have authorized your OAuth application, as of each connection&#39;s last sync, in &#x60;connected_assets_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. |  |
|**connectedAssetsCurrency** | **String** | ISO 4217 currency code the asset values are expressed in. |  |
|**connectedAssetsCalculatedAt** | **OffsetDateTime** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. &#x60;null&#x60; until the first daily snapshot has been calculated. |  |



