

# UnderlyingSymbolType

The type of security. For example, \"Common Stock\" or \"ETF\".

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls. |  [optional] |
|**code** | **String** | A short code representing the security type. For example, \&quot;cs\&quot; for Common Stock. Here are some common values:   - &#x60;ad&#x60; - ADR   - &#x60;bnd&#x60; - Bond   - &#x60;cs&#x60; - Common Stock   - &#x60;cef&#x60; - Closed End Fund   - &#x60;crypto&#x60; - Cryptocurrency   - &#x60;et&#x60; - ETF   - &#x60;oef&#x60; - Open Ended Fund   - &#x60;ps&#x60; - Preferred Stock   - &#x60;rt&#x60; - Right   - &#x60;struct&#x60; - Structured Product   - &#x60;ut&#x60; - Unit   - &#x60;wi&#x60; - When Issued   - &#x60;wt&#x60; - Warrant  |  [optional] |
|**description** | **String** | A human-readable description of the security type. For example, \&quot;Common Stock\&quot; or \&quot;ETF\&quot;. |  [optional] |
|**isSupported** | **Boolean** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. |  [optional] |



