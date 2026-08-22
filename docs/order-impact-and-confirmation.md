# Order Impact and Confirmation

SnapTrade supports equity and option orders across institutions with different preview capabilities. A missing brokerage preview does not mean that an order cannot be placed: trading support and preview support are separate capabilities.

In this guide, *order* means either an equity order or an option order unless a section says otherwise. Always confirm the institution's current asset, order, and preview support in the [SnapTrade Institution Support guide](https://support.snaptrade.com/brokerages).

## Confirm every order

Before submitting an order, present the available instructions and impact information clearly enough for the account owner to understand and consent to the order.

The confirmation screen should include:

- Institution and brokerage account
- Security symbol, option contract, or option legs, as applicable
- Order action for the order or each option leg
- Quantity in shares, units, notional amount, or contracts
- Order type
- Limit price, stop price, or net debit or credit, when applicable
- Time in force
- Available cash-impact, commission, fee, and foreign-exchange estimates
- Source of the impact information: brokerage preview, application-generated estimate, or not available
- Clear disclosure describing unavailable values and the limits of any estimate
- Explicit action through which the account owner confirms the order

SnapTrade's [Application Compliance Policy](https://snaptrade.com/compliance-policy) requires applicable regulatory disclosures when an account owner issues trading instructions. If the execution price, fees, commissions, or cash impact are unknown or estimated, explain that clearly before the account owner confirms the order.

## Identify the impact source

The confirmation experience should distinguish the source of displayed values. Do not use the same label for brokerage-supplied data, an application calculation, and unavailable information.

### Brokerage-supplied preview

For supported equity orders, :api[Trading_getOrderImpact] checks the order without placing it. For supported option orders, :api[Trading_getOptionImpact] simulates an order with up to four legs. The response shape differs by workflow and institution.

For option orders, available fields can include:

- `estimated_cash_change`: estimated cash change before fees
- `cash_change_direction`: whether the order results in a debit, credit, even result, or unknown result
- `estimated_fee_total`: estimated transaction fees and commissions

For equity orders, the preview can return estimated remaining cash, commission, and foreign-exchange fees. The application can combine these values with the order details when presenting estimated totals. All preview values are estimates, not guaranteed execution amounts.

Recommended source label:

> **Impact source: Brokerage preview**

### Application-generated estimate

When a brokerage does not expose a dedicated preview endpoint, an application can calculate a reasonable estimate from the latest available bid, ask, or last-trade quote; the order quantity or notional amount; current cash balances; currency-conversion assumptions; and any locally implemented commission or fee schedule.

Recommended source label:

> **Impact source: Application-generated estimate** — This application calculated these amounts using the latest available quote and fee assumptions. They were not supplied or verified by SnapTrade or the brokerage.

### No reliable estimate

If neither the brokerage nor the application can produce a reliable estimate, show the known order instructions and identify the missing values. Do not display unavailable fees or commissions as `$0.00`; zero can incorrectly suggest that no charges will apply.

Recommended presentation:

> **Estimated cash impact:** Not available
>
> **Estimated fees and commissions:** Not available

## Recommended disclaimer language

### Brokerage preview or application-generated estimate

> **Estimated results.** The amounts shown are estimates only and are not guaranteed. The brokerage determines the final execution price, transaction amount, commissions, fees, and cash impact. Market orders can fill at a different price than the latest quote, and orders may partially fill or fill over multiple days. Exchange, ECN, regulatory, ADR, foreign-exchange, borrow, and other fees may apply, including when estimated commissions are `$0.00`.

For an application-generated estimate, place the application-generated source label immediately before this disclaimer.

### Impact information unavailable

> **Order impact unavailable.** A reliable pre-trade impact or fee estimate is not available for this order. The final execution price, transaction amount, commissions, fees, and cash impact may not be known until the order is submitted or executed. Fees may apply. By submitting this order, you agree to proceed without these estimates.

## Does unavailable impact prevent trading?

No. Preview support and trading support are separate institution capabilities. The [SnapTrade trading workflow](/docs/trading-with-snaptrade) requires applications to validate order details in their own interface, but it does not make a brokerage preview a universal prerequisite for every equity or option order.

Before enabling a workflow, verify that the institution supports:

- Asset and symbol being traded
- Requested order type and time in force
- Fractional-unit or notional orders, when applicable
- Single-leg or multi-leg options, when applicable
- Intended option action and number of legs, when applicable
- Any institution-specific permissions, account requirements, or limitations
