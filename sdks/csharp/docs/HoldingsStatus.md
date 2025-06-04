# SnapTrade.Net.Model.HoldingsStatus
Status of account holdings sync. SnapTrade syncs holdings from the brokerage under the following conditions: 1. Initial connection - SnapTrade syncs all holdings (positions, balances, recent orders, and transactions) immediately after the connection is established. 2. Daily sync - Once a day SnapTrade refreshes all holdings from the brokerage. 3. Manual sync - You can trigger a refresh of holdings with the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 

## Properties

Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**InitialSyncCompleted** | **bool** | Indicates if the initial sync of holdings has been completed. For accounts with a large number of positions/orders/transactions, the initial sync may take a while to complete. | [optional] 
**LastSuccessfulSync** | **DateTime?** | Date in ISO 8601 format or null (YYYY-MM-DD HH:MM:SS.mmmmmmTZ) | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)

