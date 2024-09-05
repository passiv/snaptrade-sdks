# SnapTrade.Net.Model.PartnerData
Configurations for your SnapTrade Client ID, including allowed brokerages and data access.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** | A short, unique identifier for your company or product. | [optional] 
**Name** | **string** | Your company or product name. | [optional] 
**LogoUrl** | **string** | URL to your company or product logo. | [optional] 
**AllowedBrokerages** | [**List&lt;Brokerage&gt;**](Brokerage.md) | Brokerages that can be accessed by your Client ID. | [optional] 
**CanAccessTrades** | **bool** | Whether trading is enabled for your SnapTrade Client ID. | [optional] 
**CanAccessHoldings** | **bool** | Whether holdings data is enabled for your SnapTrade Client ID. | [optional] 
**CanAccessAccountHistory** | **bool** | Whether account historical transactions is enabled for your SnapTrade Client ID. | [optional] 
**CanAccessReferenceData** | **bool** | Whether reference data is enabled for your SnapTrade Client ID. | [optional] 
**CanAccessPortfolioManagement** | **bool** | Whether portfolio management is enabled for your SnapTrade Client ID. | [optional] 
**CanAccessOrders** | **bool** | Whether recent order history is enabled for your SnapTrade Client ID. | [optional] 
**RedirectUri** | **string** | URI to redirect user back to after user is done adding brokerage connections. | [optional] 
**PinRequired** | **bool** | Shows if pin is required by users to access connection page. This field has been deprecated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

