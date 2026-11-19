

# Activity

A recorded transaction in a brokerage account.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**transactionId** | **String** | Brokerage transaction reference, when available. Related transactions such as a fill and a fee can share this value. |  |
|**type** | **String** | Best-effort activity classification. A reported option action takes precedence over its base type. Common values include BUY, SELL, BUY_TO_OPEN, BUY_TO_CLOSE, SELL_TO_OPEN, SELL_TO_CLOSE, DIVIDEND, INTEREST, CONTRIBUTION, WITHDRAWAL, TRANSFER and FEE. Clients must accept unfamiliar values.  |  |
|**date** | **OffsetDateTime** | Recorded date and time in UTC. Precision depends on what the brokerage supplies. |  |
|**description** | **String** | Brokerage activity description, including an unresolved brokerage symbol&#39;s name when available. |  |
|**instrument** | **Object** |  |  |
|**pricedIn** | **Object** |  |  |
|**amount** | **BigDecimal** | Signed amount recorded for the transaction. Use this value directly. Price, units and fees may be insufficient to reconstruct it. |  |
|**price** | **BigDecimal** | Recorded unit price. For options this is the price per underlying share. Some missing brokerage prices are stored as zero. |  |
|**units** | **BigDecimal** | Signed quantity recorded for the transaction. For options the quantity counts contracts. |  |
|**fee** | **BigDecimal** | Recorded fee. Some missing brokerage fees are stored as zero. |  |
|**fxRate** | **BigDecimal** | Foreign exchange rate recorded for the transaction, when available. |  |



