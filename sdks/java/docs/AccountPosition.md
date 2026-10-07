

# AccountPosition

Describes a single position.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**instrument** | **Object** |  |  |
|**units** | **BigDecimal** | The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions. |  [optional] |
|**price** | **BigDecimal** | Last known market price _per share_. The freshness of this price depends on the brokerage. Some brokerages provide real-time prices, while others provide delayed prices. It is recommended that you rely on your own third-party market data provider for most up to date prices. |  [optional] |
|**costBasis** | **BigDecimal** | Book price or average purchase price for the position. For options, this is per-share. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the position &#x60;price&#x60; and &#x60;cost_basis&#x60;. |  [optional] |
|**cashEquivalent** | **Boolean** | Present for mutual fund positions and for other instrument kinds when true. A true value means the position is also counted in cash balance or buying power. |  [optional] |
|**taxLots** | [**List&lt;TaxLot&gt;**](TaxLot.md) | List of tax lots for the given position. Disabled by default; enable via the Customer Dashboard Add-ons page. When enabled, this field is included only for stocks, ADRs, ETFs, mutual funds, and crypto positions. For these positions, an empty list means no tax lot data is available. Availability varies by brokerage and position. This field is omitted for all other instrument kinds or when the feature is disabled. |  [optional] |



