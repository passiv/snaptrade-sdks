# SnapTrade.Net.Model.TransactionsStatus
Status of account transaction sync. SnapTrade syncs transactions from the brokerage under the following conditions: 1. Initial connection - SnapTrade syncs all transactions from the brokerage account as far back as the brokerage allows. Check [our integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=6fab8012ade6441fa0c6d9af9c55ce3a) for details on how far back we sync for each brokerage. 2. Daily sync - Once a day SnapTrade syncs new transactions from the brokerage. 3. Manual sync - You can retrigger an incremental sync of transactions with the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialSyncCompleted** | **bool** | Indicates if the initial sync of transactions has been completed. For accounts with a large number of transactions, the initial sync may take a while to complete. | [optional] 
**LastSuccessfulSync** | **DateTime** | All transactions up to this date have been successfully synced. Please note that this is not the date of the last transaction, nor the last time SnapTrade attempted to sync transactions. | [optional] 
**FirstTransactionDate** | **DateTime** | The date of the first transaction in the account known to SnapTrade. It&#39;s possible that the account has transactions before this date, but they are not known to SnapTrade. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

