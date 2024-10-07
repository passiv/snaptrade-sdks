# SnapTrade.Net.Model.Brokerage
Describes a brokerage that SnapTrade supports.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade. | [optional] 
**Slug** | **string** | A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change. | [optional] 
**Name** | **string** | Full name of the brokerage. | [optional] 
**DisplayName** | **string** | A display-friendly name of the brokerage. | [optional] 
**Description** | **string** | A brief description of the brokerage. | [optional] 
**AwsS3LogoUrl** | **string** | URL to the brokerage&#39;s logo. | [optional] 
**AwsS3SquareLogoUrl** | **string** | URL to the brokerage&#39;s logo in square format. | [optional] 
**Url** | **string** | URL to the brokerage&#39;s website. | [optional] 
**Enabled** | **bool** | Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections. | [optional] 
**MaintenanceMode** | **bool** | Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections. | [optional] 
**AllowsTrading** | **bool?** | Whether the brokerage allows trading through SnapTrade. | [optional] 
**AllowsFractionalUnits** | **bool?** | This field is deprecated. Please contact us if you have a valid use case for it. | [optional] 
**HasReporting** | **bool?** | This field is deprecated. Please contact us if you have a valid use case for it. | [optional] 
**IsRealTimeConnection** | **bool** | This field is deprecated. Please contact us if you have a valid use case for it. | [optional] 
**BrokerageType** | [**BrokerageType**](BrokerageType.md) |  | [optional] 
**Exchanges** | **List&lt;Object&gt;** | This field is deprecated. Please contact us if you have a valid use case for it. | [optional] 
**OpenUrl** | **string** | This field is deprecated. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

