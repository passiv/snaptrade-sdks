# Fix Disabled Connections

A SnapTrade connection provides direct access to a user's trading account. When an access token is no longer valid, SnapTrade considered this to be a _disabled connection_ which will no longer provide live data until it is repaired by the user.

This guide applies to **Commercial API Key**, **Personal API Key**, and **OAuth** integrations. Generate reconnect links using your method's credentials; see [Connection Portal](https://docs.snaptrade.com/docs/implement-connection-portal). OAuth users can also repair their connections in the [SnapTrade Dashboard](https://dashboard.snaptrade.com).

# Required Functionalities

It is important that users are directed to _fix connections_ rather than they create new ones. This allows you to provide a better experience to the user, minimize the number of disabled connections you are managing, and retain historical session data. Using the Connection Portal in the normal manner will create new connections, which will have a different connection id and different account ids if successful, as well as will leave the disabled connection to remain.

It is a requirement to implement the ability to reconnect so that connections can be fixed. There are mechanisms available to be notified when connections break, either through a) [webhooks](/docs/webhooks) as described below, or b) by polling the connections endpoint (:api[Connections_listBrokerageAuthorizations]) for each user and checking the `disabled` status. When `disabled == true`, the connection is disabled and the user must take an action to fix it.

# How to fix a disabled connection

SnapTrade's Connection Portal has a special mode that's designed for fixing connections, rather than creating new ones. To use the reconnect mode, you simply pass along the connection id in the `reconnect` field as part of the request to generate a login link. See :api[Authentication_loginSnapTradeUser].

When the Connection Portal is accessed with the `reconnect` parameter, it will immediately take the user into the appropriate reconnection flow for that connection. When successful, the disabled connection will be updated with a new access token and start working again.

Note: The user must reconnect the same brokerage connection. Changing it during reconnection is not permitted. API-key integrations can delete the old connection and create a replacement. OAuth API requests cannot delete connections; direct the user to manage them in the [SnapTrade Dashboard](https://dashboard.snaptrade.com).

# Webhooks

SnapTrade provides webhooks to notify when new connections are:

- Attempted
- Added
- Updated
- Deleted
- Broken
- Fixed

Configure a webhook listener to receive supported connection events. For OAuth apps, the user's authorization must also include the `webhook` scope. These events help you notify users when they need to reconnect.

Review the documentation on [SnapTrade Webhooks](/docs/webhooks) for more detail, sample payloads, etc.
