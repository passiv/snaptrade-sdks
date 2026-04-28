

# AccountPosition

Describes a single position.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**instrument** | **Object** |  |  |
|**units** | **BigDecimal** | The number of units held in the position. Positive numbers indicate long positions and negative numbers indicate short positions. |  [optional] |
|**price** | **BigDecimal** | Last known market price for the position. |  [optional] |
|**costBasis** | **BigDecimal** | Book price or average purchase price for the position. |  [optional] |
|**currency** | **String** | ISO-4217 currency code for the position &#x60;price&#x60; and &#x60;cost_basis&#x60;. |  [optional] |
|**cashEquivalent** | **Boolean** | Present for stock positions that are also counted in cash balance or buying power. |  [optional] |
|**taxLots** | [**List&lt;TaxLot&gt;**](TaxLot.md) | Present for stock positions when tax lot data is enabled for the account. |  [optional] |



