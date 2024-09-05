

# PartnerData

Configurations for your SnapTrade Client ID, including allowed brokerages and data access.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | A short, unique identifier for your company or product. |  [optional] |
|**name** | **String** | Your company or product name. |  [optional] |
|**logoUrl** | **String** | URL to your company or product logo. |  [optional] |
|**allowedBrokerages** | [**List&lt;Brokerage&gt;**](Brokerage.md) | Brokerages that can be accessed by your Client ID. |  [optional] |
|**canAccessTrades** | **Boolean** | Whether trading is enabled for your SnapTrade Client ID. |  [optional] |
|**canAccessHoldings** | **Boolean** | Whether holdings data is enabled for your SnapTrade Client ID. |  [optional] |
|**canAccessAccountHistory** | **Boolean** | Whether account historical transactions is enabled for your SnapTrade Client ID. |  [optional] |
|**canAccessReferenceData** | **Boolean** | Whether reference data is enabled for your SnapTrade Client ID. |  [optional] |
|**canAccessPortfolioManagement** | **Boolean** | Whether portfolio management is enabled for your SnapTrade Client ID. |  [optional] |
|**canAccessOrders** | **Boolean** | Whether recent order history is enabled for your SnapTrade Client ID. |  [optional] |
|**redirectUri** | **String** | URI to redirect user back to after user is done adding brokerage connections. |  [optional] |
|**pinRequired** | **Boolean** | Shows if pin is required by users to access connection page. This field has been deprecated. |  [optional] |



