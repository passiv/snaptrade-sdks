

# OtherOrderType

An order type SnapTrade could not normalize, or a recognized type whose required price the brokerage did not report. The brokerage's own label is in `raw_type`.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**kind** | [**KindEnum**](#KindEnum) |  |  |
|**rawType** | **String** | The order type label as reported by the brokerage. |  |
|**limitPrice** | **BigDecimal** |  |  [optional] |
|**stopPrice** | **BigDecimal** |  |  [optional] |



## Enum: KindEnum

| Name | Value |
|---- | -----|
| OTHER | &quot;other&quot; |



