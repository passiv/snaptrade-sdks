

# SymbolExchange

The exchange on which the security is listed and traded.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique ID for the exchange in SnapTrade. |  [optional] |
|**code** | **String** | A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field. |  [optional] |
|**micCode** | **String** | The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange. |  [optional] |
|**name** | **String** | The full name of the exchange. |  [optional] |
|**timezone** | **String** | The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange. |  [optional] |
|**startTime** | **String** | The time when the exchange opens for trading. |  [optional] |
|**closeTime** | **String** | The time when the exchange closes for trading. |  [optional] |
|**suffix** | **String** | The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail. |  [optional] |



