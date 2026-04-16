# How We Bill at SnapTrade

This document explains every component of SnapTrade's billing process so you know exactly what you're paying for, when you'll be invoiced, and how payments work.

---

## Billing Cycle

SnapTrade bills on a **monthly** cycle. Each invoice covers usage from the 1st through the last day of the previous calendar month. Invoices are generated on the **1st of each month**.

---

## What We Charge For

Your monthly invoice can include up to four types of charges:

### 1. Connected Users (Tiered Pricing)

The primary component of your bill is based on the number of **unique users** who had an active brokerage connection during the billing period. A "user" is identified by the `external_user_identifier` you assign when creating SnapTrade users in your application.

By default, all customers start with a single flat rate of **$2.00 per connected user per month**. As your business scales, you can negotiate volume-based tiered pricing where additional users above certain thresholds are charged at progressively lower rates. Contact support if you're interested in negotiating bulk tiered pricing.

**Example of tiered pricing:**

| Tier | User Range | Per-User Fee |
|------|-----------|--------------|
| 1    | 0 - 100   | $3.00        |
| 2    | 101 - 500 | $2.50        |
| 3    | 501+      | $2.00        |

With 250 connected users in this example, your bill would be:
- 100 users x $3.00 = $300.00
- 150 users x $2.50 = $375.00
- **Total: $675.00**

**What counts as a billable user:** A user is counted if they had at least one completed brokerage connection or periodic sync event during the billing period. Incomplete connections are not billed. Interactive Brokers (IBKR) connections are excluded from billing.

### 2. Manual Refreshes

If your agreement with SnapTrade contains pricing for manual refreshes, they will be charged according to the following details.

When your application triggers a manual data refresh (sync) for a user's account, each refresh is recorded as a billable event. The default rate is set per customer based on their agreement with SnapTrade.

Pay as You Go customers have this feature included at no extra charge although this feature may be subject to rate limits at higher volumes.

### 3. Recent Orders API Calls

If your plan includes provisions for the `/recentOrders` endpoint, each API call to this endpoint is billed at a per-call rate defined in your agreement.

Pay as You Go customers have this feature included at no extra charge although this feature may be subject to rate limits at higher volumes.

### 4. Platform Fee / Monthly Minimum

Custom plans may include a fixed **platform fee** that is charged every month regardless of usage. This fee is independent of your user count or API call volume. On custom plans it is possible to bundle in a certain number of connected users with the Platform Fee.

### Monthly Minimum

Custom plans may include a **monthly minimum fee**. If your usage-based charges (connected users + manual refreshes + recent orders calls) fall below this minimum, you will be charged the monthly minimum instead. The platform fee, if applicable, is added on top of the monthly minimum.

---

## Invoice Total

Your invoice total is calculated as:

```
  Connected users charge (accounting for tiered pricing if applicable)
+ Manual refresh charges (if applicable)
+ Recent orders API call charges (if applicable)
─────────────────────────────────────────
= Usage subtotal (or monthly minimum if applicable, whichever is greater)
+ Platform fee (if applicable)
─────────────────────────────────────────
= Subtotal
+ HST (if applicable)
─────────────────────────────────────────
= Invoice total
```

---

## What Happens If an Invoice Goes Unpaid

SnapTrade takes the following steps for overdue invoices:

1. **Reminder emails** are sent on the 1st of each month to customers with any invoices past their due date. The email includes the total outstanding amount, your production API key slug, and the date your keys will be disabled if payment is not received.

2. **API key disablement** occurs automatically after the grace period expires (see Payment Terms table above). The default value for grace period is five (5) business days. When your keys are disabled:
   - Your production API keys stop working.
   - All outstanding unpaid invoices are marked uncollectible in our system but it is still possible to pay them.
   - Invoicing continues so that charges are tracked, but new invoices generated while disabled are also generated in an uncollectible status.

3. **Automatic re-enablement** is checked every hour. Your API keys are automatically restored once:
   - All overdue invoices are paid or voided, **and**
   - At least one payment was made **after** the suspension occurred (to confirm the balance has been settled).

---

## Viewing Your Billing Details

Use the [SnapTrade Dashboard](https://dashboard.snaptrade.com/settings/billing) to view invoices, download PDFs, and manage payment methods.

---

## Questions?

If you have questions about your bill or need to discuss your pricing, reach out to your SnapTrade account contact or email the billing address provided in your invoice communications.
