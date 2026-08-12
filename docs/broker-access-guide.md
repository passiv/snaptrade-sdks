# Broker Access Guide

Start building in minutes. The majority of SnapTrade's [brokerage integrations](https://docs.snaptrade.com/docs/integrations) are live the moment your [Production Access Application](https://dashboard.snaptrade.com/production-access) is approved. For the few brokers that work differently, this page breaks down exactly what to expect.

The **free plan** includes up to 5 brokerage connections, with no additional steps required to access any integration.

Brokerages become available on your production keys in one of three ways:

1. Immediately
2. After broker approval
3. By bringing your own API keys

## Available immediately

These brokers are available to your users as soon as your SnapTrade Production Access Application is approved. Complete your profile, get approved, and start connecting.

| Broker | Access Level |
|---|---|
| AJ Bell | Read Only |
| Binance | Read and Trade |
| BUX | Read Only |
| Coinbase | Read and Trade |
| CommSec | Read Only |
| Degiro | Read Only |
| E\*TRADE | Read and Trade |
| eToro | Read Only |
| Interactive Brokers | Read Only |
| Kraken | Read and Trade |
| Moomoo | Read and Trade |
| Public | Read and Trade |
| Questrade | Read Only |
| Robinhood | Read Only |
| Stake Australia | Read and Trade |
| tastytrade | Read and Trade |
| TD Direct Investing | Read Only |
| Trading212 | Read and Trade |
| Trading212 Practice | Read and Trade |
| Upstox | Read Only |
| Vanguard US | Read Only |
| Wealthsimple | Read and Trade |
| Webull CA | Read and Trade |
| Webull US | Read and Trade |
| Zerodha | Read Only |

## Available after broker approval

Some brokers require a production approval step before connections go live. Once your Production Access Application with SnapTrade is completed, we submit these applications automatically — no extra steps on your end. You'll just need to allow a few days for these to come online.

| Broker | Access Level | Estimated Turnaround | Instructions | Status |
|---|---|---|---|---|
| Chase | Read Only | ~2 business days | Fill out app profile | Generally available |
| Citi | Read Only | ~2 business days | Fill out app profile | Beta |
| Edward Jones | Read Only | ~2 business days | Fill out app profile | Alpha |
| Empower | Read Only | ~2 business days | Fill out app profile | Generally available |
| Fidelity | Read Only | ~2 business days | Fill out app profile | Generally available |
| PNC | Read Only | ~2 business days | Fill out app profile | Alpha |
| Schwab | Read Only | ~1 week | Fill out app profile | Generally available |
| TIAA | Read Only | ~2 weeks | Fill out app profile | Alpha |
| Transamerica | Read Only | ~2 business days | Fill out app profile | Alpha |
| US Bank | Read Only | ~1 week | Fill out app profile | Beta |
| Wells Fargo | Read Only | ~2 business days | Fill out app profile | Generally available |

## Bring your own API keys

A small number of brokers require you to apply for API credentials directly with the broker. These are the only integrations where you'll need to take action beyond completing the Production Access Application. Once you have your keys, add them to your SnapTrade dashboard and you're good to go.

Every broker in this section requires your own API keys. Use the table below to understand the steps needed for each.

| Broker | Access Level | Estimated Turnaround |
|---|---|---|
| Schwab | Trading | Case-by-case basis |
| Alpaca | Read and Trade | ~4 weeks |
| TradeStation | Read and Trade | ~2 weeks |
| Tradier | Read and Trade | ~2 weeks |

### Schwab

To enable Schwab OAuth with Trading access:

1. Register for Accounts and Trading commercial access [on the Schwab developer portal](https://developer.schwab.com/products/trader-api--commercial).
2. When prompted, set the callback URL to `https://connect.snaptrade.com/oauth/callback`.
3. Once approved by Schwab, send your API keys securely to SnapTrade (for example, via Bitwarden) at [support@snaptrade.com](mailto:support@snaptrade.com).

### Alpaca

1. Go to [https://alpaca.markets/oauth](https://alpaca.markets/oauth) and click **Submit Your App**.
2. Navigate to **Alpaca Connect > My Developed Apps > Submit Your App**.
3. Complete the application form, setting the callback URL to `https://connect.snaptrade.com/oauth/alpaca`.
4. After you submit, Alpaca generates your API key (Client ID and Secret).
5. Send the keys securely to SnapTrade (for example, via Bitwarden) at [support@snaptrade.com](mailto:support@snaptrade.com).

Note: Alpaca approval can take up to 30 days after keys are issued. Canadian developers are not supported at this time.

### TradeStation

1. Email [ClientExperience@tradestation.com](mailto:ClientExperience@tradestation.com) to request your API key, and ask that the callback URL be set to `https://connect.snaptrade.com/oauth/tradestation`.
2. Once approved by TradeStation, send your API keys securely to SnapTrade (for example, via Bitwarden) at [support@snaptrade.com](mailto:support@snaptrade.com).

Use the simulated trading environment for testing.

### Tradier

1. Sign up for Partner API access at [developer.tradier.com](https://developer.tradier.com/login).
2. Reach out to Tradier's business development team and complete their partner survey.
3. Set the callback URL to `https://connect.snaptrade.com/oauth/tradier`.
4. Tradier will review your application and follow up directly.
5. Once approved by Tradier, send your API keys securely to SnapTrade (for example, via Bitwarden) at [support@snaptrade.com](mailto:support@snaptrade.com).

Notes:

- Developers are charged a one-time fee of $500. Onboarding with Tradier is optional.
- By default, Tradier access tokens expire after 24 hours. If you need users to remain connected without reauthorizing, request that refresh tokens be enabled for your application. This requires Tradier's approval — email [techsupport@tradier.com](mailto:techsupport@tradier.com) to start the process.

## Next steps

[Sign up for SnapTrade](https://dashboard.snaptrade.com/signup) and start connecting broker accounts today. If you have questions about a specific broker or integration, reach out to the SnapTrade team at [support@snaptrade.com](mailto:support@snaptrade.com).
