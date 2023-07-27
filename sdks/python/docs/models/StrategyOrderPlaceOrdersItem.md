# snaptrade_client.model.strategy_order_place_orders_item.StrategyOrderPlaceOrdersItem

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**symbol** | str,  | str,  |  | [optional] 
**symbolId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**totalQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**openQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**filledQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**canceledQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**side** | str,  | str,  |  | [optional] 
**orderType** | str,  | str,  |  | [optional] 
**limitPrice** | str,  | str,  |  | [optional] 
**stopPrice** | str,  | str,  |  | [optional] 
**isAllOrNone** | bool,  | BoolClass,  |  | [optional] 
**isAnonymous** | bool,  | BoolClass,  |  | [optional] 
**icebergQuantity** | str,  | str,  |  | [optional] 
**minQuantity** | str,  | str,  |  | [optional] 
**avgExecPrice** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**lastExecPrice** | str,  | str,  |  | [optional] 
**source** | str,  | str,  |  | [optional] 
**timeInForce** | str,  | str,  |  | [optional] 
**gtdDate** | str,  | str,  |  | [optional] 
**state** | str,  | str,  |  | [optional] 
**rejectionReason** | str,  | str,  |  | [optional] 
**chainId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**creationTime** | str,  | str,  |  | [optional] 
**updateTime** | str,  | str,  |  | [optional] 
**notes** | str,  | str,  |  | [optional] 
**primaryRoute** | str,  | str,  |  | [optional] 
**secondaryRoute** | str,  | str,  |  | [optional] 
**orderRoute** | str,  | str,  |  | [optional] 
**venueHoldingOrder** | str,  | str,  |  | [optional] 
**comissionCharged** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**exchangeOrderId** | str,  | str,  |  | [optional] 
**isSignificantShareHolder** | bool,  | BoolClass,  |  | [optional] 
**isInsider** | bool,  | BoolClass,  |  | [optional] 
**isLimitOffsetInDollar** | bool,  | BoolClass,  |  | [optional] 
**userId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**placementCommission** | str,  | str,  |  | [optional] 
**legs** | [**StrategyOrderPlaceOrdersItemLegs**](StrategyOrderPlaceOrdersItemLegs.md) | [**StrategyOrderPlaceOrdersItemLegs**](StrategyOrderPlaceOrdersItemLegs.md) |  | [optional] 
**strategyType** | str,  | str,  |  | [optional] 
**triggerStopPrice** | str,  | str,  |  | [optional] 
**orderGroupId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**orderClass** | str,  | str,  |  | [optional] 
**isCrossZero** | bool,  | BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

