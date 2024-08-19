# SnapTrade.Net.Model.UniversalSymbol
Uniquely describes a single security + exchange combination across all brokerages.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls. | 
**Symbol** | **string** | The security&#39;s trading ticker symbol. For example \&quot;AAPL\&quot; for Apple Inc. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. | 
**RawSymbol** | **string** | The raw symbol is &#x60;symbol&#x60; with the exchange suffix removed. For example, if &#x60;symbol&#x60; is \&quot;VAB.TO\&quot;, then &#x60;raw_symbol&#x60; is \&quot;VAB\&quot;. | 
**Description** | **string** | A human-readable description of the security. This is usually the company name or ETF name. | [optional] 
**Currency** | [**SymbolCurrency**](SymbolCurrency.md) |  | 
**Exchange** | [**SymbolExchange**](SymbolExchange.md) |  | [optional] 
**Type** | [**SecurityType**](SecurityType.md) |  | 
**Currencies** | [**List&lt;Currency&gt;**](Currency.md) | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | 
**FigiCode** | **string** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. This value should be the same as the &#x60;figi_code&#x60; in the &#x60;figi_instrument&#x60; child property. | [optional] 
**FigiInstrument** | [**FigiInstrumentNullable**](FigiInstrumentNullable.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

