# SnapTrade.Net.Model.UnderlyingSymbolType
The type of security. For example, \"Common Stock\" or \"ETF\".

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the security type within SnapTrade. This is the ID used to reference the security type in SnapTrade API calls. | [optional] 
**Code** | **string** | A short code representing the security type. For example, \&quot;cs\&quot; for Common Stock. Here are some common values:   ad - ADR   bnd - Bond   cs - Common Stock   cef - Closed End Fund   et - ETF   oef - Open Ended Fund   ps - Preferred Stock   rt - Right   struct - Structured Product   ut - Unit   wi - When Issued   wt - Warrant  | [optional] 
**Description** | **string** | A human-readable description of the security type. For example, \&quot;Common Stock\&quot; or \&quot;ETF\&quot;. | [optional] 
**IsSupported** | **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

