# SnapTrade.Net.Model.AccountOrderLeg
One leg of an order.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LegId** | **string** | Brokerage identifier for this leg, when the brokerage assigns one. | [optional] 
**Instrument** | [**Instrument**](Instrument.md) | Instrument metadata for a V2 position. Use &#x60;kind&#x60; to determine which schema is present. | 
**_Action** | **string** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  | 
**TotalQuantity** | **decimal?** | Total number of shares or contracts for this leg. Can be a decimal for fractional orders. | [optional] 
**FilledQuantity** | **decimal?** | Number of shares or contracts filled for this leg. | [optional] 
**CanceledQuantity** | **decimal?** | Number of shares or contracts canceled for this leg. | [optional] 
**ExecutionPrice** | **decimal?** | Average execution price for this leg, when available. | [optional] 
**Status** | **AccountOrderRecordStatusV2Nullable** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

