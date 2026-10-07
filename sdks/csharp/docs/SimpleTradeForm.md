# SnapTrade.Net.Model.SimpleTradeForm

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OrderType** | **string** |  | 
**TimeInForce** | **string** | Order duration, subject to brokerage and execution-path support. gtd requires expiry_date and a non-market single-leg equity/option order. Existing single-leg option routing does not support ioc. Futures and multi-leg orders do not support gtd through this endpoint. | 
**Legs** | [**List&lt;SimpleTradeLeg&gt;**](SimpleTradeLeg.md) | Legs of one brokerage order. Use equity/option legs or future/future_option legs, without mixing the two families. Brokerage strategy and leg-count limits apply. | 
**LimitPrice** | [**SimpleTradeFormLimitPrice**](SimpleTradeFormLimitPrice.md) |  | [optional] 
**StopPrice** | [**SimpleTradeFormStopPrice**](SimpleTradeFormStopPrice.md) |  | [optional] 
**PriceEffect** | **string** | Only applicable to multi-leg limit and stop_limit orders. Requirements and supported values depend on the brokerage; tastytrade requires credit or debit. even implies a zero limit_price, which may be omitted and must be zero if supplied. Single-leg price effects are derived from the action. | [optional] 
**ClientOrderId** | **string** | Optional canonical UUID, forwarded where the existing execution path supports it and for tastytrade futures orders. Requires the existing client-order-ID enablement; when disabled the value is ignored. Brokerage behavior on duplicates varies; SnapTrade does not enforce uniqueness. Tastytrade uses this as external-identifier for correlation and does not deduplicate submissions. | [optional] 
**ExpiryDate** | **DateTime?** | ISO 8601 expiry timestamp, required for gtd and invalid with other durations. A missing timezone is treated as UTC. Supported only through existing single-leg Public and Sandbox execution paths. | [optional] 
**NotionalValue** | [**SimpleTradeFormNotionalValue**](SimpleTradeFormNotionalValue.md) |  | [optional] 
**TradingSession** | **string** | extended uses existing single-leg equity/option brokerage support and requires extended-hours enablement. Futures and multi-leg orders only accept regular. | [optional] [default to TradingSessionEnum.Regular]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

