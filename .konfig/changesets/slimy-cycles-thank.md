---
java: major
ruby: major
python: major
typescript: major
csharp: major
php: major
go: major
php7: major
---

Remove deprecated SDK endpoints. Migrate to the following alternatives:

- `GET /holdings` (`AccountInformation_getAllUserHoldings`): list accounts with `AccountInformation_listUserAccounts`, then use `AccountInformation_getUserAccountBalance`, `AccountInformation_getAllAccountPositions`, and `AccountInformation_getUserAccountOrders` for each account.
- `GET /accounts/{accountId}/positions` (`AccountInformation_getUserAccountPositions`): use `AccountInformation_getAllAccountPositions`.
- `GET /accounts/{accountId}/options` (`Options_listOptionHoldings`): use `AccountInformation_getAllAccountPositions`, which returns equity, option, and other supported position types.
- `POST /accounts/{accountId}/orders/cancel` (`Trading_cancelUserAccountOrder`): use `Trading_cancelOrder`.
- `POST /accounts/{accountId}/trading/bracket` (`Trading_placeBracketOrder`): use `Trading_placeComplexOrder`.
- `GET /activities` (`TransactionsAndReporting_getActivities`): use `AccountInformation_getAccountActivities` for each account.
- `GET /performance/custom` (`TransactionsAndReporting_getReportingCustomRange`): use `AccountInformation_getUserAccountReturnRates` for an account or `Connections_returnRates` for a connection.
