# SnapTrade.Net.Model.Institution
An institution in SnapTrade's public catalog and what it supports. A `null` field means the information is not documented yet.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Slug** | **string** | A short, unique identifier for the institution. It is usually the name in capital letters and will never change. It matches the &#x60;slug&#x60; of the same brokerage in &#x60;GET /brokerages&#x60;. | 
**Name** | **string** | Full name of the institution. | 
**DisplayName** | **string** | A display-friendly name of the institution. | 
**Description** | **string** | A brief description of the institution. | 
**Website** | **string** | URL of the institution&#39;s website. | 
**LogoUrl** | **string** | URL of the institution&#39;s rectangular logo. | 
**SquareLogoUrl** | **string** | URL of the institution&#39;s square logo. | 
**ReleaseStage** | **string** | How mature the integration is. - &#x60;GENERALLY_AVAILABLE&#x60;: fully supported and validated for production use. - &#x60;BETA&#x60;: production-ready, with ongoing validation and improvements.  | 
**Regions** | **List&lt;Institution.RegionsEnum&gt;** | Regions where end users can connect to this institution. - &#x60;US&#x60;: United States - &#x60;CA&#x60;: Canada - &#x60;EUROPE&#x60;: Europe, including the United Kingdom - &#x60;AU&#x60;: Australia - &#x60;IN&#x60;: India  | 
**Connection** | [**InstitutionConnectionNullable**](InstitutionConnectionNullable.md) |  | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

