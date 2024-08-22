

# ManualTradeSymbol

Information about the security for the order.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**brokerageSymbolId** | **UUID** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. |  [optional] |
|**universalSymbolId** | **UUID** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. |  [optional] |
|**currency** | [**Currency**](Currency.md) |  |  [optional] |
|**localId** | **String** | This field is deprecated and should not be used. |  [optional] |
|**description** | **String** | This field is deprecated and should not be used. |  [optional] |
|**symbol** | **String** | This field is deprecated and should not be used. |  [optional] |



