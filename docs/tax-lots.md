# Tax Lots

> **Summary**: Tax lots is a feature available on certain brokerages that provides the acquisition and cost-basis details for the individual lots that make up a position. The data comes directly from the brokerage and is not created by SnapTrade.

A tax lot represents a specific acquisition of a security. When a position was built through multiple purchases, its tax lots can provide the purchase date, quantity, purchase price, cost basis, current value, and position type for each acquisition.

When enabled, tax lots are returned in the `tax_lots` field of supported stock, ETF, and mutual fund positions from the [List all account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAllAccountPositions) endpoint. Tax lot data is not available for every brokerage or every account.

## Brokerage support

To confirm support for a brokerage, see the [supported brokerages page](https://support.snaptrade.com/brokerages). Look under **Positions & recent orders** for the **Tax Lots available** capability.

Brokerage capabilities may change, so check this page before relying on tax lot data in your application.

## Enabling tax lots

Tax lots are an optional paid feature and are disabled by default. You can enable them for an additional cost from the [SnapTrade Dashboard billing settings](https://dashboard.snaptrade.com/settings/billing).

After enabling the feature, request the account's positions as usual and read the `tax_lots` array when it is present. Your integration should handle positions without tax lots, since the underlying brokerage may not support the feature or may not return lot-level data for a particular position.

## Billing behavior

Tax Lots is billed as an add-on to your standard connected-user charges. Only distinct users who had at least one qualifying connection through a tax-lot-supported brokerage during the invoice period are included in the add-on charge.

If the feature is enabled mid-month, Tax Lot charges are prorated by the number of calendar days the feature is active in the billing period:

`unit price × eligible users × (active days ÷ days in billing period)`

Eligible users are distinct users who had at least one qualifying event through a supported brokerage at any point in the invoice period. This count is prorated from the activation date.

A normal customer cancellation is scheduled for the first day of the following month. Tax Lots remains active through the end of the current month, so the cancellation does not reduce that month's charge.

Your invoice will have an item detailing the tax-lot charge and the number of eligible users based on if they had at least one connection that supports the tax lot feature during the month.
