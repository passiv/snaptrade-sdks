# How We Bill at SnapTrade

This document explains every component of SnapTrade's Commercial billing process so you know exactly what you're paying for, when you'll be invoiced, and how payments work.

Personal users are currently completely free. Commercial customers may be billed based on connected users, API usage, platform fees, or monthly minimums depending on their agreement. If you are deciding which customer model applies to your integration, start with [SnapTrade Personal vs Commercial](https://docs.snaptrade.com/docs/personal-vs-commercial).

---

## Billing Cycle

SnapTrade bills Commercial customers on a **monthly** cycle. Each invoice covers usage from the 1st through the last day of the previous calendar month. Invoices are generated on the **1st of each month**.

---

## What We Charge For

A Commercial monthly invoice can include up to four types of charges:

### 1. Connected Users (Tiered Pricing)

The primary component of a Commercial bill is based on the number of **unique users** who had an active or inactive brokerage connection during the billing period. A "user" is identified by the `user_id` assigned when creating users in your application. For more details on user creation, see the [SnapTrade user creation documentation](https://docs.snaptrade.com/docs/getting-started#getting-started-users).

By default, Commercial customers start with a single flat rate of **$2.00 per connected user per month**. As your business scales, you can negotiate volume-based tiered pricing where additional users above certain thresholds are charged at progressively lower rates. Contact support if you're interested in negotiating bulk tiered pricing.

**Example of tiered pricing:**

| Tier | User Range | Per-User Fee |
|------|-----------|--------------|
| 1    | 0 - 100   | $2.00        |
| 2    | 101 - 500 | $1.75        |
| 3    | 501+      | $1.50        |

With 250 connected users in this example, the Commercial bill would be:
- 100 users x $2.00 = $200.00
- 150 users x $1.75 = $262.50
- **Total: $462.50**

**What counts as a billable user:** A user is counted if they had at least one completed brokerage connection or [periodic sync event](https://docs.snaptrade.com/docs/syncing) during the billing period. Incomplete connections are not billed.

### 2. Manual Refreshes

If your Commercial agreement with SnapTrade contains pricing for manual refreshes, they will be charged according to the following details.

When your application triggers a manual data refresh (sync) for a user's account, each refresh is recorded as a billable event. The default rate is set per Commercial customer based on their agreement with SnapTrade. Manual Sync is available for Pay-as-you-go Daily plans at **$0.05 per sync**. This feature remains disabled for free plans.

### 3. Recent Orders API Calls

If your Commercial plan includes provisions for the `/recentOrders` endpoint, each API call to this endpoint is billed at a per-call rate defined in your agreement.

Pay as You Go customers have this feature included at no extra charge although this feature may be subject to rate limits at higher volumes.

### 4. Platform Fee / Monthly Minimum

Custom plans may include a fixed **platform fee** that is charged every month regardless of usage. This fee is independent of your user count or API call volume. On custom plans it is possible to bundle in a certain number of connected users with the Platform Fee.

Custom plans may include a **monthly minimum fee**. If your usage-based charges (connected users + manual refreshes + recent orders calls) fall below this minimum, you will be charged the monthly minimum instead. The platform fee, if applicable, is added on top of the monthly minimum.

---

## Invoice Total

A Commercial invoice total is calculated as:

```
  Connected users charge (accounting for tiered pricing if applicable)
+ Manual refresh charges (if applicable)
+ Recent orders API call charges (if applicable)
─────────────────────────────────────────
= Usage subtotal (or monthly minimum if applicable, whichever is greater)
+ Platform fee (if applicable)
─────────────────────────────────────────
= Subtotal
+ Sales Tax (if applicable)
─────────────────────────────────────────
= Invoice total
```

---

## What Happens If an Invoice Goes Unpaid

SnapTrade takes the following steps for overdue Commercial invoices:

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

Commercial customers can use the [SnapTrade Dashboard](https://dashboard.snaptrade.com/settings/billing) to view invoices, download PDFs, and manage payment methods.

---

## Questions?

If you have questions about your Commercial bill or need to discuss your pricing, reach out to your SnapTrade account contact or email the billing address provided in your invoice communications.
