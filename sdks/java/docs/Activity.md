

# Activity

A recorded transaction in a brokerage account.

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**transactionId** | **String** | A stable and unique transaction id when available |  |
|**type** | **String** | A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;BUY_TO_OPEN&#x60; - Option bought to open a long position.   - &#x60;BUY_TO_CLOSE&#x60; - Option bought to close a short position.   - &#x60;SELL_TO_OPEN&#x60; - Option sold to open a short position.   - &#x60;SELL_TO_CLOSE&#x60; - Option sold to close a long position.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;SUBSTITUTE_DIVIDEND&#x60; - Payment in lieu of a dividend.   - &#x60;CAPITAL_GAINS_LONG&#x60; - Long-term capital-gain distribution.   - &#x60;CAPITAL_GAINS_SHORT&#x60; - Short-term capital-gain distribution.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;STOCK_DIVIDEND&#x60; - A type of dividend where a company distributes shares instead of cash   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;TAX&#x60; - A tax related fee.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event.   - &#x60;TRANSFER&#x60; - Transfer of asset(s) from one account to another.   - &#x60;EXTERNAL_ASSET_TRANSFER_IN&#x60; - Incoming transfer of an asset from an external account to this account.   - &#x60;EXTERNAL_ASSET_TRANSFER_OUT&#x60; - Outgoing transfer of an asset from this account to an external account.   - &#x60;SPLIT&#x60; - A stock share split.   - &#x60;ADJUSTMENT&#x60; - A one time adjustment of the account&#39;s cash balance or shares of an asset  |  |
|**date** | **OffsetDateTime** | Recorded date and time in UTC. Precision depends on what the brokerage supplies. |  |
|**description** | **String** | Brokerage activity description, including an unresolved brokerage symbol&#39;s name when available. |  |
|**instrument** | **Object** |  |  |
|**pricedIn** | **Object** |  |  |
|**amount** | **BigDecimal** | The amount of the transaction denominated in &#x60;priced_in&#x60;. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount. |  |
|**price** | **BigDecimal** | The price of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. For option transactions, this represents the price per share of the option contract. |  |
|**units** | **BigDecimal** | The number of units of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. In general, BUYs result in positive units while SELLs result in negative due to the shares leaving the account |  |
|**fee** | **BigDecimal** | Recorded fee. Some missing brokerage fees are stored as zero. |  |
|**fxRate** | **BigDecimal** | Foreign exchange rate recorded for the transaction, when available. |  |



