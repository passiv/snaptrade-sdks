

# OptionQuote

Real-time quote for a single option contract.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The OCC-formatted option symbol. |  [optional] |
|**bidPrice** | **Double** | The best bid price for the option contract. |  [optional] |
|**bidSize** | **Integer** | The number of contracts available at the bid price. |  [optional] |
|**askPrice** | **Double** | The best ask price for the option contract. |  [optional] |
|**askSize** | **Integer** | The number of contracts available at the ask price. |  [optional] |
|**lastPrice** | **Double** | The price of the last trade for the option contract. |  [optional] |
|**lastSize** | **Integer** | The number of contracts in the last trade. |  [optional] |
|**openInterest** | **Integer** | The total number of outstanding contracts. |  [optional] |
|**volume** | **Integer** | The total number of contracts traded during the current session. |  [optional] |
|**impliedVolatility** | **Double** | The implied volatility of the option contract. |  [optional] |
|**underlyingPrice** | **Double** | The current price of the underlying security. |  [optional] |
|**timestamp** | **OffsetDateTime** | The timestamp of the quote. |  [optional] |



