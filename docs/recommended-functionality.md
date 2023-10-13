# Recommended Functionality

There are a number of best practices that SnapTrade customers should implement within their own app to ensure a good user experience.

This section will describe these best practices so you can make sure your app is feature-complete.

## Ability to reconnect

There are a number of situations that may break a user's brokerage connection, including brokerage API maintenance windows or unscheduled brokerage downtime.

Because of this, it is critical to ensure that your project includes a flow to reconnect a user's brokerage account.

We make this easy by notifying you of broken connections via webhooks. See our related section on [How to Fix Broken Connections](/docs/fix-broken-connections) for more information.

## Ability to edit trade permissions

Users who are connecting their brokerage accounts via SnapTrade have the ability to decide whether to allow read-only access or trading access.

Making the user explicitly decide as part of the authentication flow helps them understand the nature of the connection they're creating, and ensures a good user experience.

## View and Delete Existing Connections

The ability to view and delete existing connections is critical to allow users to manage their authorizations.

The following endpoints have the information you need for this:

- :api[Connections_listBrokerageAuthorizations]
- :api[Connections_removeBrokerageAuthorization]
