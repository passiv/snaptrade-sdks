# SnapTrade.Net.Model.Activity
A recorded transaction in a brokerage account.

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**TransactionId** | **string** | Brokerage transaction reference, when available. Related transactions such as a fill and a fee can share this value. | 
**Type** | **string** | Best-effort activity classification. A reported option action takes precedence over its base type. Common values include BUY, SELL, BUY_TO_OPEN, BUY_TO_CLOSE, SELL_TO_OPEN, SELL_TO_CLOSE, DIVIDEND, INTEREST, CONTRIBUTION, WITHDRAWAL, TRANSFER and FEE. Clients must accept unfamiliar values.  | 
**Date** | **DateTime** | Recorded trade date and time in UTC. Precision depends on what the brokerage supplies. | 
**Description** | **string** | Brokerage activity description, including an unresolved brokerage symbol&#39;s name when available. | 
**Instrument** | [**InstrumentNullable**](InstrumentNullable.md) | Instrument metadata for a V2 position. Use &#x60;kind&#x60; to determine which schema is present. | 
**PricedIn** | [**PricedInInstrumentNullable**](PricedInInstrumentNullable.md) | The asset an order&#39;s prices are denominated in. Use &#x60;kind&#x60; to determine which schema is present. | 
**Amount** | **decimal** | Signed amount recorded for the transaction. Use this value directly. Price, units and fees may be insufficient to reconstruct it. | 
**Price** | **decimal?** | Recorded unit price. For options this is the price per underlying share. Some missing brokerage prices are stored as zero. | 
**Units** | **decimal** | Signed quantity recorded for the transaction. For options the quantity counts contracts. | 
**Fee** | **decimal** | Recorded fee. Some missing brokerage fees are stored as zero. | 
**FxRate** | **decimal?** | Foreign exchange rate recorded for the transaction, when available. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

