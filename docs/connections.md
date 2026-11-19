# Connections

A connection links SnapTrade to a user's brokerage and provides access to their connected accounts.

- **Commercial API Key:** your app manages connections for its end users.
- **Personal API Key:** you manage connections to your own brokerages.
- **OAuth:** your app accesses connections managed by the consenting SnapTrade Personal user.

## Connection Portal

The Connection Portal is a UI widget designed to allow users to securely connect brokerage accounts to SnapTrade-powered applications. It handles brokerage selection, OAuth redirects, username/password authentication, and multi-factor auth verification in one flow.

## Disabled Connections

Connections can break for a variety of reasons, which are usually related to security needs. Access tokens usually have some sort of expiry associated with them, so that users occasionally need to reauthorize access in order to show that they still approve of the connection. Access tokens typically expire after a few weeks and need to be reauthorized occasionally.

When an access token is no longer valid, SnapTrade considered this to be a *disabled connection* which will no longer provide live data until it is repaired by the user.

---

See also:
- [Fix Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections)
- [Integrate the Connection Portal into Your Application](https://docs.snaptrade.com/docs/implement-connection-portal#implement-connection-portal-integrate-the-connection-portal-into-your-application)
