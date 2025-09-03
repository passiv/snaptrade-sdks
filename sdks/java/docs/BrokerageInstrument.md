

# BrokerageInstrument


## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**symbol** | **String** | The instrument&#39;s trading symbol / ticker. |  |
|**exchangeMic** | **String** | The MIC code of the exchange where the instrument is traded. |  [optional] |
|**tradeable** | **Boolean** | Whether the instrument is tradeable through the brokerage. &#x60;null&#x60; if the tradeability is unknown. |  [optional] |
|**fractionable** | **Boolean** | Whether the instrument allows fractional units. &#x60;null&#x60; if the fractionability is unknown. |  [optional] |
|**universalSymbolId** | **UUID** | The universal symbol ID of the instrument. This is the ID used to reference the instrument in SnapTrade API calls. |  [optional] |



