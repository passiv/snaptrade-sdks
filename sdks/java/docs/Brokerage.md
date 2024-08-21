

# Brokerage

Describes a brokerage that SnapTrade supports.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade. |  [optional] |
|**slug** | **String** | A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change. |  [optional] |
|**name** | **String** | Full name of the brokerage. |  [optional] |
|**displayName** | **String** | A display-friendly name of the brokerage. |  [optional] |
|**description** | **String** | A brief description of the brokerage. |  [optional] |
|**awsS3LogoUrl** | **String** | URL to the brokerage&#39;s logo. |  [optional] |
|**awsS3SquareLogoUrl** | **String** | URL to the brokerage&#39;s logo in square format. |  [optional] |
|**openUrl** | **String** | This field is deprecated. |  [optional] |
|**url** | **String** | URL to the brokerage&#39;s website. |  [optional] |
|**enabled** | **Boolean** | Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections. |  [optional] |
|**maintenanceMode** | **Boolean** | Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections. |  [optional] |
|**allowsFractionalUnits** | **Boolean** | This field is deprecated. Please contact us if you have a valid use case for it. |  [optional] |
|**allowsTrading** | **Boolean** | Whether the brokerage allows trading through SnapTrade. |  [optional] |
|**hasReporting** | **Boolean** | This field is deprecated. Please contact us if you have a valid use case for it. |  [optional] |
|**isRealTimeConnection** | **Boolean** | This field is deprecated. Please contact us if you have a valid use case for it. |  [optional] |
|**brokerageType** | [**BrokerageType**](BrokerageType.md) |  |  [optional] |
|**exchanges** | **List&lt;Object&gt;** | This field is deprecated. Please contact us if you have a valid use case for it. |  [optional] |



