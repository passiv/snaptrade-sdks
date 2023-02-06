# AccountOrderRecord

Record of order in brokerageaccount

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**brokerage_order_id** | **str** | Order id returned by brokerage | [optional] 
**status** | [**AccountOrderRecordStatus**](AccountOrderRecordStatus.md) |  | [optional] 
**symbol** | **str** |  | [optional] 
**universal_symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**action** | [**Action**](Action.md) |  | [optional] 
**total_quantity** | **float** | Trade Units | [optional] 
**open_quantity** | **float** | Trade Units | [optional] 
**canceled_quantity** | **float** | Trade Units | [optional] 
**filled_quantity** | **float** | Trade Units | [optional] 
**execution_price** | **float** | Trade Price if limit or stop limit order | [optional] 
**limit_price** | **float** | Trade Price if limit or stop limit order | [optional] 
**stop_price** | **float** | Trade Price if limit or stop limit order | [optional] 
**order_type** | [**OrderType**](OrderType.md) |  | [optional] 
**time_in_force** | [**TimeInForce**](TimeInForce.md) |  | [optional] 
**time_placed** | **str** | Time | [optional] 
**time_updated** | **str** | Time | [optional] 
**expiry_date** | **str** | Time | [optional] 
**any string name** | **bool, dict, float, int, list, str, none_type** | any string name can be used but the value must be the correct type | [optional]

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


