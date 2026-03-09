# SnapTrade.Net.Model.BrokerageInstrument

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | **string** | The instrument&#39;s trading symbol / ticker. | 
**ExchangeMic** | **string** | The MIC code of the exchange where the instrument is traded. | [optional] 
**Tradeable** | **bool?** | Whether the instrument is tradeable through the brokerage. &#x60;null&#x60; if the tradeability is unknown. | [optional] 
**Fractionable** | **bool?** | Whether the instrument allows fractional units. &#x60;null&#x60; if the fractionability is unknown. | [optional] 
**UniversalSymbolId** | **string** | The universal symbol ID of the instrument. This is the ID used to reference the instrument in SnapTrade API calls. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

