# SnapTrade.Net.Model.Balance
Holds balance information for a single currency in an account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Currency** | [**Currency**](Currency.md) |  | [optional] 
**Cash** | **double?** | The amount of available cash in the account denominated in the currency of the &#x60;currency&#x60; field. | [optional] 
**BuyingPower** | **double?** | Buying power only applies to margin accounts. For non-margin accounts, buying power should be the same as cash. Please note that this field is not always available for all brokerages. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

