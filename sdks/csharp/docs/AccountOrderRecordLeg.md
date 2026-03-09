# SnapTrade.Net.Model.AccountOrderRecordLeg
Describes an individual leg that makes up an order in the V2 format.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**LegId** | **string** | Brokerage order identifier for this leg, if available. | [optional] 
**Instrument** | [**AccountOrderRecordLegInstrument**](AccountOrderRecordLegInstrument.md) |  | [optional] 
**_Action** | **string** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  | [optional] 
**ExecutionPrice** | **double?** | Execution price for this leg, if available. | [optional] 
**TotalQuantity** | **string** | The total number of shares or contracts associated with this leg. Can be a decimal number for fractional shares. | [optional] 
**CanceledQuantity** | **string** | The number of shares or contracts that have been canceled for this leg. | [optional] 
**FilledQuantity** | **string** | The number of shares or contracts that have been filled for this leg. | [optional] 
**Status** | **AccountOrderRecordStatusV2Nullable** |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

