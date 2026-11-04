# SnapTrade.Net.Model.SimpleTradeInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Kind** | **string** |  | 
**Symbol** | **string** | Equity ticker, OCC equity-option symbol, or brokerage-native futures symbol. Tastytrade future tickers begin with &#x60;/&#x60; and future-option tickers begin with &#x60;./&#x60;; preserve their spaces and punctuation. Webull US futures require a specific unprefixed contract symbol such as ESZ6, without whitespace. TradeStation (live and SIM) requires a specific two-digit-year contract such as ESZ26 or @ESZ26, or a futures-option symbol such as &#x60;ESZ26 C6000&#x60;, preserving the space and any session alias. TradeStation&#39;s optional @ prefix for dated futures contracts is forwarded unchanged. Webull and TradeStation do not accept slash aliases or root-only continuous symbols. Universal symbol IDs are not accepted. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

