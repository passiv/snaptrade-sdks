# Tax Lots

> **Summary**: Tax lots is a feature available on certain brokerages that provides the acquisition and cost-basis details for the individual lots that make up a position. The data comes directly from the brokerage and is not created by SnapTrade.

A tax lot represents a specific acquisition of a security. When a position was built through multiple purchases, its tax lots can provide the purchase date, quantity, purchase price, cost basis, current value, and position type for each acquisition.

When enabled, tax lots are returned in the `tax_lots` field of supported stock, ETF, and mutual fund positions from the [List all account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAllAccountPositions) endpoint. Tax lot data is not available for every brokerage, account or position. Positions that do not have tax lot data will return an empty list.

## Brokerage support

To confirm support for a brokerage, see the [supported brokerages page](https://support.snaptrade.com/brokerages). Look under **Positions & recent orders** for the **Tax Lots available** capability.

Brokerage capabilities may change, so check this page before relying on tax lot data in your application.

## Enabling tax lots

Tax Lots is an optional feature that must be enabled through [Dashboard Add-ons](https://dashboard.snaptrade.com/add-ons).

- Personal: Free.
- Commercial Build: Free for development and testing, within the existing five-connection Build plan limit.
- Commercial production: $0.50 USD per eligible connected user per month, in addition to standard plan charges.

Tax Lots is free to test on Commercial Build keys, but is a paid add-on in production. Enabling it for testing does not make it free in production.

Tax-lot data is available only for supported brokerages, accounts and positions. Your application should handle positions without tax-lot data. Enabling Tax Lots may increase API response times.

After enabling Tax Lots, request account positions using the [List all account positions](https://docs.snaptrade.com/reference/Account%20Information/AccountInformation_getAllAccountPositions) endpoint and inspect the `tax_lots` field.

## Billing behavior

On Commercial production keys, Tax Lots costs $0.50 USD per eligible connected user per month. Only distinct users who had at least one qualifying connection through a tax-lot-supported brokerage during the invoice period are included in the add-on charge.

If the feature is enabled mid-month, Tax Lot charges are prorated by the number of calendar days the feature is active in the billing period:

`unit price × eligible users × (active days ÷ days in billing period)`

Eligible users are distinct users who had at least one qualifying event through a supported brokerage at any point in the invoice period. This count is prorated from the activation date.

A normal customer cancellation is scheduled for the first day of the following month. Tax Lots remains active through the end of the current month, so the cancellation does not reduce that month's charge.

Your invoice will have an item detailing the tax-lot charge and the number of eligible users based on if they had at least one connection that supports the tax lot feature during the month.
