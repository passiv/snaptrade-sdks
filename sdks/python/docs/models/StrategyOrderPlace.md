# snaptrade_client.model.strategy_order_place.StrategyOrderPlace

The reponse for a correctly placed order

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  | The reponse for a correctly placed order | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**orderId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**[orders](#orders)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# orders

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**symbol** | None, str,  | NoneClass, str,  |  | [optional] 
**symbolId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**totalQuantity** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**openQuantity** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**filledQuantity** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**canceledQuantity** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**side** | None, str,  | NoneClass, str,  |  | [optional] 
**orderType** | None, str,  | NoneClass, str,  |  | [optional] 
**limitPrice** | None, str,  | NoneClass, str,  |  | [optional] 
**stopPrice** | None, str,  | NoneClass, str,  |  | [optional] 
**isAllOrNone** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**isAnonymous** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**icebergQuantity** | None, str,  | NoneClass, str,  |  | [optional] 
**minQuantity** | None, str,  | NoneClass, str,  |  | [optional] 
**avgExecPrice** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**lastExecPrice** | None, str,  | NoneClass, str,  |  | [optional] 
**source** | None, str,  | NoneClass, str,  |  | [optional] 
**timeInForce** | None, str,  | NoneClass, str,  |  | [optional] 
**gtdDate** | None, str,  | NoneClass, str,  |  | [optional] 
**state** | None, str,  | NoneClass, str,  |  | [optional] 
**rejectionReason** | None, str,  | NoneClass, str,  |  | [optional] 
**chainId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**creationTime** | None, str,  | NoneClass, str,  |  | [optional] 
**updateTime** | None, str,  | NoneClass, str,  |  | [optional] 
**notes** | None, str,  | NoneClass, str,  |  | [optional] 
**primaryRoute** | None, str,  | NoneClass, str,  |  | [optional] 
**secondaryRoute** | None, str,  | NoneClass, str,  |  | [optional] 
**orderRoute** | None, str,  | NoneClass, str,  |  | [optional] 
**venueHoldingOrder** | None, str,  | NoneClass, str,  |  | [optional] 
**comissionCharged** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**exchangeOrderId** | None, str,  | NoneClass, str,  |  | [optional] 
**isSignificantShareHolder** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**isInsider** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**isLimitOffsetInDollar** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**userId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**placementCommission** | None, str,  | NoneClass, str,  |  | [optional] 
**[legs](#legs)** | list, tuple, None,  | tuple, NoneClass,  |  | [optional] 
**strategyType** | None, str,  | NoneClass, str,  |  | [optional] 
**triggerStopPrice** | None, str,  | NoneClass, str,  |  | [optional] 
**orderGroupId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**orderClass** | None, str,  | NoneClass, str,  |  | [optional] 
**isCrossZero** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# legs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**legId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**symbol** | None, str,  | NoneClass, str,  |  | [optional] 
**symbolId** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**legRatioQuantity** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**side** | None, str,  | NoneClass, str,  |  | [optional] 
**avgExecPrice** | None, decimal.Decimal, int,  | NoneClass, decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**lastExecPrice** | None, str,  | NoneClass, str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

