# SnapTrade.Net.Model.PartnerStats
User, connection, and connected asset totals for your SnapTrade Client ID.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TotalUsers** | **int** | Number of users registered with your Client ID. | 
**TotalConnectedUsers** | **int** | Number of users registered with your Client ID that have at least one connection, active or disabled. | 
**TotalActiveConnections** | **int** | Number of active connections across users registered with your Client ID. | 
**TotalDisabledConnections** | **int** | Number of disabled connections across users registered with your Client ID. | 
**OauthTotalUsers** | **int?** | Number of users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalConnectedUsers** | **int?** | Number of users who have authorized your OAuth application and have at least one connection, active or disabled. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalActiveConnections** | **int?** | Number of active connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**OauthTotalDisabledConnections** | **int?** | Number of disabled connections across users who have authorized your OAuth application. &#x60;null&#x60; if your Client ID has no OAuth application. | 
**AssetsUnderManagement** | **double?** | Total latest account value across active connections of users registered with your Client ID, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**DisabledAssetsUnderManagement** | **double?** | Total account value across disabled connections of users registered with your Client ID, as of each connection&#39;s last sync, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; until the first daily snapshot has been calculated. | 
**OauthAssetsUnderManagement** | **double?** | Total latest account value across active connections of users who have authorized your OAuth application, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**OauthDisabledAssetsUnderManagement** | **double?** | Total account value across disabled connections of users who have authorized your OAuth application, as of each connection&#39;s last sync, in &#x60;assets_under_management_currency&#x60;. &#x60;null&#x60; if your Client ID has no OAuth application, or until the first daily snapshot after it was added. | 
**AssetsUnderManagementCurrency** | **string** | ISO 4217 currency code the asset values are expressed in. | 
**AssetsUnderManagementCalculatedAt** | **DateTime?** | Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. &#x60;null&#x60; until the first daily snapshot has been calculated. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

