# SnapTrade.Net.Model.UniversalActivity
A transaction or activity from an institution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** |  | [optional] 
**Account** | [**AccountSimple**](AccountSimple.md) |  | [optional] 
**Amount** | **decimal?** |  | [optional] 
**Currency** | [**Currency**](Currency.md) |  | [optional] 
**Description** | **string** |  | [optional] 
**Fee** | **decimal** |  | [optional] 
**FxRate** | **decimal?** | The forex conversion rate involved in the transaction if provided by the brokerage | [optional] 
**Institution** | **string** |  | [optional] 
**OptionType** | **string** | If an option transaction, then it&#39;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string | [optional] 
**Price** | **decimal** |  | [optional] 
**SettlementDate** | **string** |  | [optional] 
**ExternalReferenceId** | **string** | Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same external_reference_id | [optional] 
**Symbol** | [**Symbol**](Symbol.md) |  | [optional] 
**OptionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**TradeDate** | **string** |  | [optional] 
**Type** | **string** | Potential values include (but are not limited to) - DIVIDEND - BUY - SELL - CONTRIBUTION - WITHDRAWAL - EXTERNAL_ASSET_TRANSFER_IN - EXTERNAL_ASSET_TRANSFER_OUT - INTERNAL_CASH_TRANSFER_IN - INTERNAL_CASH_TRANSFER_OUT - INTERNAL_ASSET_TRANSFER_IN - INTERNAL_ASSET_TRANSFER_OUT - INTEREST - REBATE - GOV_GRANT - TAX - FEE - REI - FXT | [optional] 
**Units** | **decimal** | Usually but not necessarily an integer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

