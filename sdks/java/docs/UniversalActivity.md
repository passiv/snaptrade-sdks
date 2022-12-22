

# UniversalActivity

A transaction or activity from an institution

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **String** |  |  [optional] |
|**account** | **AccountSimple** |  |  [optional] |
|**amount** | **BigDecimal** |  |  [optional] |
|**currency** | **Currency** |  |  [optional] |
|**description** | **String** |  |  [optional] |
|**fee** | **BigDecimal** |  |  [optional] |
|**institution** | **String** |  |  [optional] |
|**optionType** | **String** | If an option transaction, then it&#39;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string |  [optional] |
|**price** | **BigDecimal** |  |  [optional] |
|**settlementDate** | **String** |  |  [optional] |
|**symbol** | **Symbol** |  |  [optional] |
|**optionSymbol** | **OptionsSymbol** |  |  [optional] |
|**tradeDate** | **String** |  |  [optional] |
|**type** | [**TypeEnum**](#TypeEnum) |  |  [optional] |
|**units** | **BigDecimal** | Usually but not necessarily an integer |  [optional] |



## Enum: TypeEnum

| Name | Value |
|---- | -----|
| DIVIDEND | &quot;DIVIDEND&quot; |
| BUY | &quot;BUY&quot; |
| SELL | &quot;SELL&quot; |
| CONTRIBUTION | &quot;CONTRIBUTION&quot; |
| WITHDRAWAL | &quot;WITHDRAWAL&quot; |
| EXTERNAL_ASSET_TRANSFER_IN | &quot;EXTERNAL_ASSET_TRANSFER_IN&quot; |
| EXTERNAL_ASSET_TRANSFER_OUT | &quot;EXTERNAL_ASSET_TRANSFER_OUT&quot; |
| INTERNAL_CASH_TRANSFER_IN | &quot;INTERNAL_CASH_TRANSFER_IN&quot; |
| INTERNAL_CASH_TRANSFER_OUT | &quot;INTERNAL_CASH_TRANSFER_OUT&quot; |
| INTERNAL_ASSET_TRANSFER_IN | &quot;INTERNAL_ASSET_TRANSFER_IN&quot; |
| INTERNAL_ASSET_TRANSFER_OUT | &quot;INTERNAL_ASSET_TRANSFER_OUT&quot; |
| INTEREST | &quot;INTEREST&quot; |
| REBATE | &quot;REBATE&quot; |
| GOV_GRANT | &quot;GOV_GRANT&quot; |
| TAX | &quot;TAX&quot; |
| FEE | &quot;FEE&quot; |
| REI | &quot;REI&quot; |
| FXT | &quot;FXT&quot; |



