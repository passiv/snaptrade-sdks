# snaptrade_client.model.brokerage.Brokerage

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
dict, frozendict.frozendict, None,  | frozendict.frozendict, NoneClass,  |  | 

### Dictionary Keys
Key | Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | ------------- | -------------
**id** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**name** | None, str,  | NoneClass, str,  |  | [optional] 
**display_name** | None, str,  | NoneClass, str,  |  | [optional] 
**description** | None, str,  | NoneClass, str,  |  | [optional] 
**aws_s3_logo_url** | None, str,  | NoneClass, str,  |  | [optional] 
**slug** | None, str,  | NoneClass, str,  |  | [optional] 
**url** | None, str,  | NoneClass, str,  |  | [optional] 
**enabled** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**maintenance_mode** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**allows_fractional_units** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**allows_trading** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**has_reporting** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**is_real_time_connection** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**allows_trading_through_snaptrade_api** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**is_scraping_integration** | None, bool,  | NoneClass, BoolClass,  |  | [optional] 
**default_currency** | str, uuid.UUID,  | str,  |  | [optional] value must be a uuid
**brokerage_type** | [**BrokerageType**](BrokerageType.md) | [**BrokerageType**](BrokerageType.md) |  | [optional] 
**[exchanges](#exchanges)** | list, tuple, None,  | tuple, NoneClass,  | List of exchange ID supported by brokerage | [optional] 
**any_string_name** | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO | any string name can be used but the value must be the correct type | [optional]

# exchanges

List of exchange ID supported by brokerage

## Model Type Info
Input Type | Accessed Type | Description | Notes
------------ | ------------- | ------------- | -------------
list, tuple, None,  | tuple, NoneClass,  | List of exchange ID supported by brokerage | 

### Tuple Items
Class Name | Input Type | Accessed Type | Description | Notes
------------- | ------------- | ------------- | ------------- | -------------
items | dict, frozendict.frozendict, str, date, datetime, uuid.UUID, int, float, decimal.Decimal, bool, None, list, tuple, bytes, io.FileIO, io.BufferedReader,  | frozendict.frozendict, str, decimal.Decimal, BoolClass, NoneClass, tuple, bytes, FileIO |  | 

[[Back to Model list]](../../README.md#documentation-for-models) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to README]](../../README.md)

