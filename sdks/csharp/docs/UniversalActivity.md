# SnapTrade.Net.Model.UniversalActivity
A transaction or activity from an institution

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**Id** | **string** | Unique identifier for the transaction. This is the ID used to reference the transaction in SnapTrade.  Please note that this ID _can_ change if the transaction is deleted and re-added. Under normal circumstances, SnapTrade does not delete transactions. The only time this would happen is if SnapTrade re-fetches and reprocesses the data from the brokerage, which is rare. If you require a stable ID, please let us know and we can work with you to provide one.  | [optional] 
**Account** | [**AccountSimple**](AccountSimple.md) |  | [optional] 
**Symbol** | [**SymbolNullable**](SymbolNullable.md) |  | [optional] 
**OptionSymbol** | [**OptionsSymbolNullable**](OptionsSymbolNullable.md) |  | [optional] 
**Price** | **double** | The price of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. | [optional] 
**Units** | **double** | The number of units of the security for the transaction. This is mostly applicable to &#x60;BUY&#x60;, &#x60;SELL&#x60;, and &#x60;DIVIDEND&#x60; transactions. | [optional] 
**Amount** | **double?** | The amount of the transaction denominated in &#x60;currency&#x60;. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount. | [optional] 
**Currency** | [**UniversalActivityCurrency**](UniversalActivityCurrency.md) |  | [optional] 
**Type** | **string** | A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event. &#x60;option_symbol&#x60; contains the related option contract info.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event. &#x60;option_symbol&#x60; contains the related option contract info.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event. &#x60;option_symbol&#x60; contains the related option contract info.  | [optional] 
**OptionType** | **string** | If an option &#x60;BUY&#x60; or &#x60;SELL&#x60; transaction, this further specifies the type of action. The possible values are: - BUY_TO_OPEN - BUY_TO_CLOSE - SELL_TO_OPEN - SELL_TO_CLOSE  | [optional] 
**Description** | **string** | A human-readable description of the transaction. This is usually the brokerage&#39;s description of the transaction. | [optional] 
**TradeDate** | **DateTime?** | The recorded time for the transaction. The granularity of this timestamp depends on the brokerage. Some brokerages provide the exact time of the transaction, while others provide only the date. Please check the [integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;6fab8012ade6441fa0c6d9af9c55ce3a) for the specific brokerage to see the granularity of the timestamps. Note that even though the field is named &#x60;trade_date&#x60;, it can represent any type of transaction, not just trades. | [optional] 
**SettlementDate** | **DateTime** | The date on which the transaction is settled. | [optional] 
**Fee** | **double** | Any fee associated with the transaction if provided by the brokerage. | [optional] 
**FxRate** | **double?** | The forex conversion rate involved in the transaction if provided by the brokerage. Used in cases where securities of one currency are purchased in a different currency, and the forex conversion is automatic. In those cases, price, amount and fee will be in the top level currency (activity -&gt; currency) | [optional] 
**Institution** | **string** | The institution that the transaction is associated with. This is usually the brokerage name. | [optional] 
**ExternalReferenceId** | **string** | Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same &#x60;external_reference_id&#x60; | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

