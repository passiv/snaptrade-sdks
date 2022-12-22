

# Trade

A trade object

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** |  |  [optional] |
|**account** | **Account** |  |  [optional] |
|**symbol** | **BrokerageSymbol** |  |  [optional] |
|**universalSymbol** | [**UniversalSymbol**](UniversalSymbol.md) |  |  [optional] |
|**action** | [**ActionEnum**](#ActionEnum) |  |  [optional] |
|**units** | **Integer** |  |  [optional] |
|**price** | **BigDecimal** |  |  [optional] |
|**sequence** | **Integer** |  |  [optional] |



## Enum: ActionEnum

| Name | Value |
|---- | -----|
| BUY | &quot;BUY&quot; |
| SELL | &quot;SELL&quot; |



