

# FigiInstrument

Financial Instrument Global Identifier (FIGI) information for the security. See [OpenFIGI](https://www.openfigi.com/) for more information.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**figiCode** | **String** | This identifier is unique per security per trading venue. See section 1.4.1 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. |  [optional] |
|**figiShareClass** | **String** | This enables users to link multiple FIGIs for the same security in order to obtain an aggregated view across all countries and all exchanges. For example, &#x60;AAPL&#x60; has a different FIGI for each exchange/trading venue it is traded on. The &#x60;figi_share_class&#x60; is the same for all of these FIGIs. See section 1.4.3 of the [FIGI Standard](https://www.openfigi.com/assets/local/figi-allocation-rules.pdf) for more information. |  [optional] |



