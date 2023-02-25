# snaptrade_client.model.strategy_order_place.StrategyOrderPlace

The reponse for a correctly placed order

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  | The reponse for a correctly placed order | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**orderId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**[orders](#orders)** | list, tuple,  | tuple,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# orders

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

# items

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
**[legs](#legs)** | list, tuple,  | tuple,  |  | [optional] 
**strategyType** | str,  | str,  |  | [optional] 
**triggerStopPrice** | str,  | str,  |  | [optional] 
**orderGroupId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**orderClass** | str,  | str,  |  | [optional] 
**isCrossZero** | bool,  | BoolClass,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# legs

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple,  | tuple,  |  | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
[items](#items) | dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

# items

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict,  | frozendict.frozendict,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**legId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**symbol** | str,  | str,  |  | [optional] 
**symbolId** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**legRatioQuantity** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**side** | str,  | str,  |  | [optional] 
**avgExecPrice** | decimal.Decimal, int,  | decimal.Decimal,  |  | [optional] value must be a 32 bit integer
**lastExecPrice** | str,  | str,  |  | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

