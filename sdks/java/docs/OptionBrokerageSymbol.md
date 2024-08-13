

# OptionBrokerageSymbol

Uniquely describes a security for the option position within an account. The distinction between this and the `option_symbol` child property is that this object is specific to a position within an account, while the `option_symbol` child property is universal across all brokerage accounts. The caller should rely on the `option_symbol` child property for most use cases.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**id** | **UUID** | A unique ID for the security within SnapTrade, scoped to the brokerage account that the security belongs to. This is a legacy field and should not be used. Do not rely on this being a stable ID as it can change. |  [optional] |
|**description** | **String** | This field is deprecated and the caller should use the &#x60;option_symbol&#x60; child property&#39;s &#x60;description&#x60; instead. |  [optional] |
|**optionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  |  [optional] |



