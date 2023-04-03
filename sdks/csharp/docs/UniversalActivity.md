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
**Institution** | **string** |  | [optional] 
**OptionType** | **string** | If an option transaction, then it&#39;s type (BUY_TO_OPEN, SELL_TO_CLOSE, etc), otherwise empty string | [optional] 
**Price** | **decimal** |  | [optional] 
**SettlementDate** | **string** |  | [optional] 
**Symbol** | [**Symbol**](Symbol.md) |  | [optional] 
**OptionSymbol** | [**OptionsSymbol**](OptionsSymbol.md) |  | [optional] 
**TradeDate** | **string** |  | [optional] 
**Type** | **string** |  | [optional] 
**Units** | **decimal** | Usually but not necessarily an integer | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

