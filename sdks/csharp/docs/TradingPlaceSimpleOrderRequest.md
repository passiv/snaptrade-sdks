# SnapTrade.Net.Model.TradingPlaceSimpleOrderRequest

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Instrument** | [**TradingInstrument**](TradingInstrument.md) |  | 
**Side** | **ActionStrict** |  | 
**Type** | **string** | The type of order to place. | 
**TimeInForce** | **TimeInForceStrict** |  | 
**Amount** | **decimal** | The amount of the base currency to buy or sell. | 
**LimitPrice** | **decimal** | The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT. | [optional] 
**StopPrice** | **decimal** | The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT. | [optional] 
**PostOnly** | **bool** | Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.  | [optional] 
**ExpirationDate** | **DateTime** | The expiration date of the order. Required if the time_in_force is GTD. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

