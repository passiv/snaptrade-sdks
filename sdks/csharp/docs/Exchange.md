# SnapTrade.Net.Model.Exchange
Describes a single stock or crypto exchange.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique ID for the exchange in SnapTrade. | [optional] 
**Code** | **string** | A short name for the exchange. For standardized exchange code, please us the &#x60;mic_code&#x60; field. | [optional] 
**MicCode** | **string** | The [Market Identifier Code](https://en.wikipedia.org/wiki/Market_Identifier_Code) (MIC) for the exchange. | [optional] 
**Name** | **string** | The full name of the exchange. | [optional] 
**Timezone** | **string** | The timezone for the trading hours (&#x60;start_time&#x60; and &#x60;close_time&#x60;) of the exchange. | [optional] 
**StartTime** | **string** | The time when the exchange opens for trading. | [optional] 
**CloseTime** | **string** | The time when the exchange closes for trading. | [optional] 
**Suffix** | **string** | The suffix to be appended to the symbol when trading on this exchange. For example, the suffix for the Toronto Stock Exchange is &#x60;.TO&#x60;. See &#x60;UniversalSymbol-&gt;symbol&#x60; and &#x60;UniversalSymbol-&gt;raw_symbol&#x60; for more detail. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

