# SnapTrade.Net.Model.AccountOrder
A single order. Single-leg orders have exactly one entry in `legs`; multi-leg orders (spreads, strangles, covered calls) have one entry per leg.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**BrokerageOrderId** | **string** | Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system. | 
**Status** | **AccountOrderRecordStatusV2** |  | 
**OrderType** | [**OrderTypeConfiguration**](OrderTypeConfiguration.md) | The order type and the prices that belong to it. Use &#x60;kind&#x60; to determine which fields are present. | 
**TimeInForce** | **string** | How long the order remains active. Brokerage values that cannot be mapped to this list are returned as &#x60;OTHER&#x60;.   - &#x60;DAY&#x60; - valid only for the trading day on which it is placed.   - &#x60;GTC&#x60; - Good Til Canceled.   - &#x60;FOK&#x60; - Fill Or Kill.   - &#x60;IOC&#x60; - Immediate Or Cancel.   - &#x60;GTD&#x60; - Good Til Date; see &#x60;expiry_date&#x60;.   - &#x60;MOO&#x60; - Market On Open.   - &#x60;EHP&#x60; - Extended Hours P.M.   - &#x60;EHA&#x60; - Extended Hours A.M.   - &#x60;OTHER&#x60; - the brokerage reported a value outside this list.  | 
**ExpiryDate** | **DateTime?** | When the order expires, for orders with a &#x60;time_in_force&#x60; of &#x60;GTD&#x60;. | [optional] 
**PriceCurrency** | **string** | ISO-4217 currency code the order prices are denominated in. For crypto pairs this is the quote asset (for example &#x60;USDC&#x60; for &#x60;ETH-USDC&#x60;). | [optional] 
**PriceEffect** | **string** | Direction of the net order price. CREDIT means cash is received, DEBIT means cash is paid, EVEN means the net price is zero, and UNKNOWN means the direction could not be determined. | 
**TotalQuantity** | **decimal?** | Total quantity requested. For multi-leg orders this is the number of spreads, not the sum of leg quantities. | [optional] 
**FilledQuantity** | **decimal?** | Quantity filled so far. | [optional] 
**CanceledQuantity** | **decimal?** | Quantity canceled. | [optional] 
**OpenQuantity** | **decimal?** | Quantity still open (not yet filled or canceled). | [optional] 
**ExecutionPrice** | **decimal?** | Average execution price. Per unit for single-leg orders; net price per spread for multi-leg orders. | [optional] 
**TimePlaced** | **DateTime?** | The time the order was submitted to the brokerage, when the brokerage reports it. | [optional] 
**TimeUpdated** | **DateTime?** | The time the order was last updated at the brokerage, when available. | [optional] 
**TimeExecuted** | **DateTime?** | The time the order was executed, when available. | [optional] 
**Group** | [**AccountOrderGroupNullable**](AccountOrderGroupNullable.md) |  | [optional] 
**Legs** | [**List&lt;AccountOrderLeg&gt;**](AccountOrderLeg.md) | The legs that make up the order. Always has at least one entry. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

