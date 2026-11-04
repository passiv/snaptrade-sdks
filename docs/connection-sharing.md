# Connection Sharing (Beta)

Users with a SnapTrade Personal account can sign in through your app's [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal) and share an existing brokerage connection with your app, instead of connecting it again. Users new to SnapTrade can create an account and connect their brokerage there too.

**There are no code changes on your side.** Shared connections work through your existing API integration, and your current connection flows keep working as they do today.

## How It Works

1. Your app opens a Connection Portal link as usual. Alongside connecting a new account, the portal offers the user the option to sign in to SnapTrade.
2. The user signs in, or creates a SnapTrade account and connects their brokerage.
3. The user picks one connection, reviews what your app will be able to do, and confirms. Their other connections are not shared.
4. Your app receives the normal success result: a `SUCCESS` window message or a `status=SUCCESS&connection_id=...` redirect.

The connection then appears under your existing SnapTrade user, using the connection ID from the user's SnapTrade Personal account. It stays in that account, and the user who shared it remains its owner.

:::info{title="Only SnapTrade Personal connections can be shared"}
A connection the user made through another app can't be reused, even if that app also uses SnapTrade. The user can connect the brokerage to your app as usual, or add it to a SnapTrade Personal account and share it from there.
:::

### Which Connections Qualify

A connection can be shared with your app when all of the following are true:

- It belongs to the user's SnapTrade Personal account.
- It's at a brokerage your app offers. If your login link sets `broker`, it must be at that brokerage.
- It isn't disabled. The owner must reconnect it in SnapTrade first.
- It can trade, if you request `connectionType=trade`.

### Signing In

Users sign in with their SnapTrade email and password, plus a code if they have 2FA turned on. The portal can remember a browser for 90 days, which skips the password on later visits but always requires a code: their 2FA, or an emailed code without it.

## What Your App Sees

Shared connections and their accounts come back from the same endpoints, in the same shape, as connections your app created. The API doesn't mark them as shared. Your plan, add-ons, and trading permissions apply, not the owner's.

### Access Level

The `connectionType` in your login link applies as it does for a new connection:

| `connectionType` | Connection can trade | Connection is read-only |
| --- | --- | --- |
| `read` or not set | Read access | Read access |
| `trade-if-available` | Trading access | Read access |
| `trade` | Trading access | Can't be shared with your app |

The user sees the access level before confirming. Sharing never changes the type of the owner's connection.

### Webhooks

[Webhooks](https://docs.snaptrade.com/docs/webhooks) arrive at your existing listener, addressed to your own `userId`, with the shared connection's ID in `brokerageAuthorizationId`.

| Event | What happens on a shared connection |
| --- | --- |
| `CONNECTION_ADDED` | Sent when a share starts, followed by `NEW_ACCOUNT_AVAILABLE` for each account. Accounts that have already synced also send `ACCOUNT_TRANSACTIONS_INITIAL_UPDATE`. |
| `CONNECTION_DELETED` | Sent when a share ends. |
| `CONNECTION_BROKEN`, `CONNECTION_FIXED`, `CONNECTION_UPDATED`, `ACCOUNT_REMOVED`, `ACCOUNT_HOLDINGS_UPDATED`, `ACCOUNT_TRANSACTIONS_UPDATED` | Sent as usual. |
| `TRADE_UPDATE` | Sent only for orders your app placed. |
| `CONNECTION_ATTEMPTED`, `CONNECTION_FAILED`, `TRADE_DETECTION` | Not sent. These stay with the owner. |

### What Works Differently

- **Refresh, disable, and transaction sync:** :api[Connections_refreshBrokerageAuthorization], :api[Connections_disableBrokerageAuthorization], and :api[Connections_syncBrokerageAuthorizationTransactions] are owner-only and return a not found error on a shared connection.
- **Connection `type`:** This field shows the type of the owner's connection, not your access. A read-only share of a trading connection still shows `trade`, and trading requests on it return a not found error.
- **Tax lots:** These may be missing on shared connections, even if you have the add-on.

## Reconnecting and Upgrading

[Fix a broken shared connection](https://docs.snaptrade.com/docs/fix-broken-connections) like any other: call :api[Authentication_loginSnapTradeUser] with `reconnect=<connection id>`. The portal asks the owner to sign in to the account that shared it and fix the connection, and your app gets its normal success result.

To add trading to a read-only share, send `reconnect` with `connectionType=trade`. Once the owner consents, your access is upgraded and you get the normal success result, but no webhook. The type of the owner's connection never changes, so if the connection can't trade, the upgrade fails and your app gets no success result.

## How Access Ends

A share ends when:

- **Your app removes it.** Calling :api[Connections_deleteConnection] on a shared connection ends your access only. The owner's connection isn't affected.
- **The owner stops sharing.** They can do this from **Connected apps** in the [SnapTrade Dashboard](https://dashboard.snaptrade.com).
- **The owner deletes the connection** from their SnapTrade account.
- **You delete your SnapTrade user** with :api[Authentication_deleteSnapTradeUser]. No webhook is sent in this case.

Otherwise, you receive `CONNECTION_DELETED` and the connection and its accounts stop being available to your app. If the user shares the same connection again, it returns with the same connection ID and you receive `CONNECTION_ADDED` again.

## Connection Sharing vs. OAuth Apps

Both let SnapTrade Personal users give your app access to connections they already have. The difference is what you build:

| | Connection sharing | [OAuth app](https://docs.snaptrade.com/docs/oauth-apps) |
| --- | --- | --- |
| What you build | Nothing beyond your Connection Portal integration | A registered OAuth app with a token exchange |
| Who the user is in the API | Your own SnapTrade user (`userId` and `userSecret`) | The SnapTrade Personal user, through Bearer tokens |
| Where the user approves | In your Connection Portal | On SnapTrade's OAuth consent screen |
| Brokerages | Those your app offers | All brokerages supported by SnapTrade Personal |
| Webhooks | Your standard webhook schema | The `oauth_v1` schema, with the `webhook` scope |

## Availability

Connection sharing is on by default for new Commercial customers and is rolling out gradually to existing customers. [Contact us](mailto:support@snaptrade.com) if you'd like it sooner.

## FAQ for Existing Customers

**Will anything change for my existing users and connections?**
Your existing connections and flows stay as they are. Once connection sharing is on for your app, users opening the Connection Portal also see the option to sign in to SnapTrade, and can still connect a new account instead.

**Can the same brokerage account appear twice for one user?**
Yes. If a user already connected an account through your app and also shares their SnapTrade Personal connection to it, you see two separate connections with different connection and account IDs.
