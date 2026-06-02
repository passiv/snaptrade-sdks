

# RateOfReturnObject

Individual rate of return object with return percent and timeframe

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**timeframe** | [**TimeframeEnum**](#TimeframeEnum) | The timeframe this return percent is reflecting |  [optional] |
|**returnPercent** | **Double** | The percent return of the portfolio, directly from the brokerage. 5.97 indicates a 5.97% return over the timeframe |  [optional] |
|**createdDate** | **OffsetDateTime** | The date this was fetched |  [optional] |



## Enum: TimeframeEnum

| Name | Value |
|---- | -----|
| ALL | &quot;ALL&quot; |
| _1Y | &quot;1Y&quot; |
| YTD | &quot;YTD&quot; |
| _1M | &quot;1M&quot; |
| _1W | &quot;1W&quot; |
| _1D | &quot;1D&quot; |



