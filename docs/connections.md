# Connections

A connection is an open channel for you to access the account data of your end-users. Each connection is associated one-to-one with a set of credentials to an institution. If the access token for the connection is no longer valid, the connection will become disabled and the end-user will need to go through the connection portal again to enable the connection.

## Connection Portal

The Connection Portal is a UI widget designed to allow end users to securely connect their brokerage accounts to your app. It handles brokerage selection, OAuth redirects, username/password authentication, and multi-factor auth verification in one flow.

## Disabled Connections

Connections can break for a variety of reasons, which are usually related to security needs. Access tokens usually have some sort of expiry associated with them, so that users occasionally need to reauthorize access in order to show that they still approve of the connection. Access tokens typically expire after a few weeks and need to be reauthorized occasionally.

When an access token is no longer valid, SnapTrade considered this to be a *disabled connection* which will no longer provide live data until it is repaired by the user.

---

See also:
- [Fix Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections)
- [Integrate the Connection Portal into Your Application](https://docs.snaptrade.com/docs/implement-connection-portal#implement-connection-portal-integrate-the-connection-portal-into-your-application)
