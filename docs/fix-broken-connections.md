# Fix Disabled Connections

A SnapTrade connection provides direct access to a user's trading account. When an access token is no longer valid, SnapTrade considered this to be a _disabled connection_ which will no longer provide live data until it is repaired by the user.

# Required Functionalities

It is important that users are directed to _fix connections_ rather than they create new ones. This allows you to provide a better experience to the user, minimize the number of disabled connections you are managing, and retain historical session data. Using the Connection Portal in the normal manner will create new connections, which will have a different connection id and different account ids if successful, as well as will leave the disabled connection to remain.

It is a requirement to implement the ability to reconnect so that connections can be fixed. There are mechanisms available to be notified when connections break, either through a) [webhooks](/docs/webhooks) as described below, or b) by polling the brokerage authorizations endpoint (:api[Connections_listBrokerageAuthorizations]) for each user and checking the `disabled` status. When `disabled == true`, the connection is disabled and the user must take an action to fix it.

# How to fix a disabled connection

SnapTrade's Connection Portal has a special mode that's designed for fixing connections, rather than creating new ones. To use the reconnect mode, you simply pass along the connection id (also known as brokerage authorization id) in the `reconnect` field as part of the request to generate a login link. See :api[Authentication_loginSnapTradeUser].

When the Connection Portal is accessed with the `reconnect` parameter, it will immediately take the user into the appropriate reconnection flow for that connection. When successful, the disabled connection will be updated with a new access token and start working again.

Note: It is important that the user logs into the same brokerage connection when attempting to reconnect. Changing the connection in a reconnect is not permitted and will return an error. If the user wishes to change the connection, they should delete the old connection and create a new one to the new trading account.

# Webhooks

SnapTrade provides webhooks to notify when new connections are:

- Attempted
- Added
- Updated
- Deleted
- Broken
- Fixed

If you have a webhook listener URL associated with your SnapTrade account, you will automatically receive webhook events to let you know when any of those events take place. This is especially useful for noticing when connections break so that you can inform the user that they need to reconnect.

Review the documentation on [SnapTrade Webhooks](/docs/webhooks) for more detail, sample payloads, etc.
