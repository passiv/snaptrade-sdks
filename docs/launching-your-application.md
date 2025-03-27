# Launching your Application

Before you launch to production with the SnapTrade API, you should conduct a pre-production implementation review. This ensures you'll have a successful launch and provide a great end-user experience.

The goal of this review is to:

- Enhance both your experience as a SnapTrade user and your end users' app experience
- Prevent and minimize common pitfalls
- Understand and optimize your needs and use cases, while identifying potential product gaps
- Ensure a smooth product launch

## The Pre-Launch Checklist

### 1. SnapTrade Compliance Policy

You have read the [SnapTrade Compliance Policy](https://snaptrade.com/compliance-policy) and your application is in compliance.

### 2. App Profile

In order to generate your paid keys, you will need to have your app profile filled in the SnapTrade Dashboard. This app profile will add your logo to the connection portal also be used to get you access to certain OAuth integrations like Fidelity.

### 3. API polling patterns

You don't call the Holdings API more than 4 times per day per user in the background, or more frequently than once per end-user login and at set intervals while the user is actively using your app. 

You don't call the activities (transactions) endpoint more than once per account every 24 hours for an account.

If you run a daily job to pull data, you spread the calls out as much as possible over the period.  

If your app uses webhooks, you poll the API correctly (using the proper endpoint and payload data) in response to the specific webhook type received.

### 4. User Onboarding

You should have a user onboarding flow that handles registering a SnapTrade user and storing the generated user secret. 

SnapTrade allows read-only access or trading access for brokerage connections. Making the user explicitly decide as part of the authentication flow helps them understand the nature of the connection they're creating, and ensures a good user experience.

### 5. Users can View and Delete their Connections

The ability to view and delete existing connections is critical to allow users to manage their authorizations, and to stay compliant with GDPR and privacy guidelines.

The following endpoints have the information you need for this:

- :api[Connections_listBrokerageAuthorizations]
- :api[Connections_removeBrokerageAuthorization]

### 6. Handle Disabled Connections

You have a system for detecting disabled end-user brokerage connections (via webhook) and a defined re-connection flow to fix broken connections. This includes at least one method of detection and one way to notify users (such as in-app notifications or emails).

See [How to Fix Broken Connections](https://docs.snaptrade.com/docs/fix-broken-connections)

### 7. New Integrations

You have a strategy for handling newly released integrations. If you are making use of the `broker` parameter when calling :api[Authentication_loginSnapTradeUser], you will need to manually add any new brokerage integrations that are released. If you are not using this parameter, newly released integrations will appear automatically in the Connection Portal. You can call :api[ReferenceData_getPartnerInfo] to stay up to date. This returns the configuration for your Clint ID, including allowed brokerage integrations and data access.

### 7. Rate-limiting

You are aware of the general rate limit and have a way of gracefully handling rate-limit 429 errors in your app. If youʼre using trading functionality, youʼre not executing trades faster than 1 trade per connected account per second.

See [Ratelimiting](https://docs.snaptrade.com/docs/ratelimiting).

### 8. Trading

If you're using trading functionality, you must have either clear user consent for automated trading or a trade preview flow that shows all expected fees and commissions. Users must also have the ability to opt out of SnapTrade functionality and delete their brokerage connection at any time. It’s recommended to not execute trades faster than 1 trade per connected account per second.

See [Trading with SnapTrade](https://docs.snaptrade.com/docs/trading-with-snaptrade).

### 9. Webhooks

You have set your webhook listener URL in the [SnapTrade Dashboard](https://dashboard.snaptrade.com).

## Next Steps

- Get your Production Keys through the [SnapTrade Dashboard](https://dashboard.snaptrade.com)
- Reach out to us at [support@snaptrade.com](mailto:support@snaptrade.com) or over [Discord](https://discord.gg/UDwzZUuQ)
