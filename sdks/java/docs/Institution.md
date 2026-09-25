

# Institution

An institution in SnapTrade's public catalog and what it supports. A `null` field means the information is not documented yet.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**slug** | **String** | A short, unique identifier for the institution. It is usually the name in capital letters and will never change. It matches the &#x60;slug&#x60; of the same brokerage in &#x60;GET /brokerages&#x60;. |  |
|**name** | **String** | Full name of the institution. |  |
|**displayName** | **String** | A display-friendly name of the institution. |  |
|**description** | **String** | A brief description of the institution. |  |
|**website** | **String** | URL of the institution&#39;s website. |  |
|**logoUrl** | **String** | URL of the institution&#39;s rectangular logo. |  |
|**squareLogoUrl** | **String** | URL of the institution&#39;s square logo. |  |
|**releaseStage** | [**ReleaseStageEnum**](#ReleaseStageEnum) | How mature the integration is. - &#x60;GENERALLY_AVAILABLE&#x60;: fully supported and validated for production use. - &#x60;BETA&#x60;: production-ready, with ongoing validation and improvements.  |  |
|**regions** | [**List&lt;RegionsEnum&gt;**](#List&lt;RegionsEnum&gt;) | Regions where end users can connect to this institution. - &#x60;US&#x60;: United States - &#x60;CA&#x60;: Canada - &#x60;EUROPE&#x60;: Europe, including the United Kingdom - &#x60;AU&#x60;: Australia - &#x60;IN&#x60;: India  |  |
|**connection** | [**InstitutionConnectionNullable**](InstitutionConnectionNullable.md) |  |  |



## Enum: ReleaseStageEnum

| Name | Value |
|---- | -----|
| GENERALLY_AVAILABLE | &quot;GENERALLY_AVAILABLE&quot; |
| BETA | &quot;BETA&quot; |



## Enum: List&lt;RegionsEnum&gt;

| Name | Value |
|---- | -----|
| US | &quot;US&quot; |
| CA | &quot;CA&quot; |
| EUROPE | &quot;EUROPE&quot; |
| AU | &quot;AU&quot; |
| IN | &quot;IN&quot; |



