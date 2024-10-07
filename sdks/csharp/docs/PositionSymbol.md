# SnapTrade.Net.Model.PositionSymbol
Uniquely describes a security for the position within an account. The distinction between this and the `symbol` child property is that this object is specific to a position within an account, while the `symbol` child property is universal across all brokerage accounts. The caller should rely on the `symbol` child property for most use cases.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Symbol** | [**UniversalSymbol**](UniversalSymbol.md) |  | [optional] 
**Id** | **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 
**Description** | **string** | This field is deprecated and the caller should use the &#x60;symbol&#x60; child property&#39;s &#x60;description&#x60; instead. | [optional] 
**LocalId** | **string** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 
**IsQuotable** | **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 
**IsTradable** | **bool** | This field is deprecated and should not be used. Please reach out to SnapTrade support if you have a valid usecase for this. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

