

# OptionQuote

Real-time quote for a single option contract.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The OCC-formatted option symbol. |  [optional] |
|**syntheticPrice** | **Double** | The derived synthetic price of the contract. |  [optional] |
|**impliedVolatility** | **Double** | The implied volatility of the option contract. |  [optional] |
|**timestamp** | **OffsetDateTime** | The timestamp of the last update for the option quote. |  [optional] |
|**greeks** | [**OptionQuoteGreeks**](OptionQuoteGreeks.md) |  |  [optional] |



