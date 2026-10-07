# SnapTrade.Net.Model.SimpleTradeLeg

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**SimpleTradeInstrument**](SimpleTradeInstrument.md) |  | 
**_Action** | **string** | Equities and futures require buy or sell. Equity options and future options require buy_to_open, buy_to_close, sell_to_open, or sell_to_close. | 
**Units** | **decimal** | Positive shares or contracts for this leg. Required unless the order is a single-equity market order using notional_value, in which case omit or set to null. Fractional units are supported only for single-equity orders on eligible brokerages; all other legs require whole units. Quantities are absolute units per leg, not strategy ratios. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

