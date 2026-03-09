# SnapTrade.Net.Model.PositionCurrency
The 'position currency' (`price` and `average_purchase_price`). This currency can potentially be different from the 'listing currency' of the security. The 'listing currency' is what's quoted on the listing exchange, while the 'position currency' is what the brokerage uses to hold and value your position. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the currency. This is the UUID used to reference the currency in SnapTrade. | [optional] 
**Code** | **string** | The ISO-4217 currency code for the currency. | [optional] 
**Name** | **string** | A human-friendly name of the currency. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

