# How to Fix Broken Connections

A SnapTrade connection provides direct access to a user's trading account. Users choose to connect their account to a SnapTrade partner app, and the connection is established in one of the following ways:

- The user enters an OAuth connection flow and grants access to their account.
- The user enters their account credentials in SnapTrade, which are used to login to their account and generate an access token.
- The user is sent to one of SnapTrade aggregation providers who receive the account credentials and provide an access token.

Connections can break for a variety of reasons, which are usually related to security needs. Access tokens usually have some sort of expiry associated with them, so that users occasionally need to reauthorize access in order to show that they still approve of the connection. It is important to understand that SnapTrade works with live trading accounts, which contain real money and real investments. Since the potential damages associated with any form of unauthorized access are high, access tokens typically expire after a few weeks and need to be reauthorized occasionally.

When an access token is no longer valid, SnapTrade considered this to be a _broken connection_ which will no longer provide live account data until it is fixed by the user.

# Expectations

It is important that users are directed to _fix connections_ rather than simply create new ones. Using the Connection Portal in the normal manner will create new connections, which will have a different connection id and different account ids if successful, and will also leave the broken connection lying around.

All apps that connect through SnapTrade are expected to implement the ability to reconnect accounts so that connections can be fixed. There are mechanisms available to be notified when connections break, either through a) webhooks as described below, or b) by polling the [brokerage authorizations endpoint](https://docs.snaptrade.com/reference/get_authorizations-1) for each user and checking the `disabled` status. When `disabled == true`, the connection is broken and the user must take an action to fix it.

# How to fix a broken connection

SnapTrade's Connection Portal has a special mode that's designed for fixing connections, rather than creating new ones. To use the reconnect mode, you simply pass along the connection id (also known as brokerage authorization id) in the `reconnect` field as part of the request to [generate a login link](https://docs.snaptrade.com/reference/authentication_loginsnaptradeuser).

When the Connection Portal is accessed with the `reconnect` parameter, it will immediately take the user into the appropriate reconnection flow for that connection. When successful, the broken connection will be updated with a new access token and start working again.

Note: It is important that the user logs into the same trading account that was originally used for the connection when attempting to reconnect. Changing the trading account that's associated with a connection is not permitted. If the user wishes to change the trading account, they should delete the old connection and create a new one to the new trading account.

# Webhooks

SnapTrade provides webhooks to notify when new connections are:

- Attempted
- Added
- Updated
- Deleted
- Broken
- Fixed

If you have a webhook listener URL associated with your SnapTrade account, you will automatically receive webhook events to let you know when any of those events take place. This is especially useful for noticing when connections break so that you can inform the user that they need to reconnect.

Review the documentation on [SnapTrade Webhooks](https://docs.snaptrade.com/reference/webhooks-getting-started) for more detail, sample payloads, etc.