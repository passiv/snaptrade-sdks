# SnapTrade.Net.Model.OptionBrokerageSymbol
Uniquely describes a security for the option position within an account. The distinction between this and the `option_symbol` child property is that this object is specific to a position within an account, while the `option_symbol` child property is universal across all brokerage accounts. The caller should rely on the `option_symbol` child property for most use cases.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**OptionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**Id** | **string** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. | [optional] 
**Description** | **string** | This field is deprecated and the caller should use the &#x60;option_symbol&#x60; child property&#39;s &#x60;description&#x60; instead. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

