

# TransactionsStatus

Status of account transaction sync. SnapTrade syncs transactions from the brokerage under the following conditions: 1. Initial connection - SnapTrade syncs all transactions from the brokerage account as far back as the brokerage allows. Check [our integrations doc](https://support.snaptrade.com/brokerages-table?v=6fab8012ade6441fa0c6d9af9c55ce3a) for details on how far back we sync for each brokerage. 2. Daily sync - Once a day SnapTrade syncs new transactions from the brokerage. 3. Manual sync - You can trigger an incremental sync of transactions with the [transactions sync](/reference/Experimental%20endpoints/Connections_syncBrokerageAuthorizationTransactions) endpoint. 

## Properties

| Name | Type | Description | Notes |
|------------ | ------------- | ------------- | -------------|
|**initialSyncCompleted** | **Boolean** | Indicates if the initial sync of transactions has been completed. For accounts with a large number of transactions, the initial sync may take a while to complete. |  [optional] |
|**lastSuccessfulSync** | **LocalDate** | Date in YYYY-MM-DD format or null |  [optional] |
|**firstTransactionDate** | [**LocalDate**](LocalDate.md) | The date of the first transaction in the account known to SnapTrade. It&#39;s possible that the account has transactions before this date, but they are not known to SnapTrade. |  [optional] |



