# Guide: Launching your Application

Before you launch to production with the SnapTrade API, you should conduct a pre-production implementation review. This ensures you'll have a successful launch and provide a great end-user experience.

The goal of this review is to:

- Enhance both your experience as a SnapTrade user and your end users' app experience
- Prevent and minimize common pitfalls
- Understand and optimize your needs and use cases, while identifying potential product gaps
- Ensure a smooth product launch

### The Pre-Launch Checklist

- [ ]  You have read the SnapTrade Compliance Policy and your application is in compliance.
- [ ]  You have filled your App Profile in the [Customer Dashboard](dashboard.snaptrade.com).
- [ ]  Your API polling patterns must be acceptable. This means:
    - You don't call the Holdings API more than 4 times per day per user in the background, or more frequently than once per end-user login and at set intervals while the user is actively using your app.
    - You don't call the activities (transactions) endpoint more than once per account every 24 hours.
    - If your app uses webhooks, you poll the API correctly (using the proper endpoint and payload data) in response to the specific webhook type received.
- [ ]  You have a system for detecting disabled end-user brokerage connections (via webhook) and a defined reconnection flow to fix broken connections. This includes at least one method of detection and one way to notify users (such as in-app notifications or emails).
- [ ]  You are aware of the rate limit and have a way of gracefully handling rate-limit 429 errors in your app.
- [ ]  If youʼre using trading functionality, youʼre not executing trades faster than 1 trade per connected account per second.
- [ ]  If you're using trading functionality, you must have either a trade preview flow or clear user consent for automated trading. Users must also have the ability to opt out of SnapTrade functionality and delete their brokerage connection at any time.