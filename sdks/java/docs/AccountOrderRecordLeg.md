

# AccountOrderRecordLeg

Describes an individual leg that makes up an order in the V2 format.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**legId** | **String** | Brokerage order identifier for this leg, if available. |  [optional] |
|**instrument** | [**AccountOrderRecordLegInstrument**](AccountOrderRecordLegInstrument.md) |  |  [optional] |
|**action** | **String** | The action describes the intent or side of a trade.   - BUY   - SELL   - BUY_COVER   - SELL_SHORT   - BUY_TO_OPEN   - BUY_TO_CLOSE   - SELL_TO_OPEN   - SELL_TO_CLOSE  |  [optional] |
|**executionPrice** | **Double** | Execution price for this leg, if available. |  [optional] |
|**totalQuantity** | **String** | The total number of shares or contracts associated with this leg. Can be a decimal number for fractional shares. |  [optional] |
|**canceledQuantity** | **String** | The number of shares or contracts that have been canceled for this leg. |  [optional] |
|**filledQuantity** | **String** | The number of shares or contracts that have been filled for this leg. |  [optional] |
|**status** | **AccountOrderRecordStatusV2Nullable** |  |  [optional] |



