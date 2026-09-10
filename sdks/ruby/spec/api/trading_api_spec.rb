=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::TradingApi
describe 'TradingApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::TradingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TradingApi' do
    it 'should create an instance of TradingApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::TradingApi)
    end
  end

  # unit tests for cancel_order
  # Cancel order
  # Cancels an order in the specified account. Accepts order IDs for all asset types. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param account_information_get_user_account_order_detail_request 
  # @param [Hash] opts the optional parameters
  # @return [CancelOrderResponse]
  describe 'cancel_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_cryptocurrency_pair_quote
  # Get crypto pair quote
  # Gets a quote for the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param instrument_symbol 
  # @param [Hash] opts the optional parameters
  # @return [CryptocurrencyPairQuote]
  describe 'get_cryptocurrency_pair_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_option_impact
  # Get option order impact
  # Simulates an option order with up to 4 legs and returns the estimated cost and transaction fees without placing it. Only supported for certain enabled brokerages. Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for more information on which brokerages support this endpoint. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param mleg_trade_form 
  # @param [Hash] opts the optional parameters
  # @return [OptionImpact]
  describe 'get_option_impact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_order_impact
  # Check equity order impact
  # Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a &#x60;Trade&#x60; object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the &#x60;Trade&#x60; object returned expires after 5 minutes. Any order placed using an expired &#x60;Trade&#x60; will be rejected.
  # @param user_id 
  # @param user_secret 
  # @param manual_trade_form 
  # @param [Hash] opts the optional parameters
  # @return [ManualTradeAndImpact]
  describe 'get_order_impact test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_option_quotes
  # Get option quote
  # Returns a quote for a single option contract. The option contract is specified using in the 21 character OCC format. For example &#x60;AAPL  251114C00240000&#x60; represents a call option on AAPL expiring on 2025-11-14 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format) **Note:** These are derived values and are not suitable for trading purposes.  **This Endpoint is deprecated and will cease to return data as of October 1, 2026** 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param symbol The OCC-formatted option symbol.
  # @param [Hash] opts the optional parameters
  # @return [OptionQuote]
  describe 'get_user_account_option_quotes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_quotes
  # Get equity symbol quotes
  # Returns a maximum of 10 quotes from the brokerage for the specified symbols and account.  The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint.  **This endpoint is not a substitute for a market data provider. Frequent polling of this endpoint may result in the disabling of your keys**  This endpoint does not work for options quotes. 
  # @param user_id 
  # @param user_secret 
  # @param symbols List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator. Maximum of 10 values allowed
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :use_ticker Should be set to &#x60;True&#x60; if &#x60;symbols&#x60; are comprised of tickers. Defaults to &#x60;False&#x60; if not provided.
  # @return [Array<SymbolsQuotesInner>]
  describe 'get_user_account_quotes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_complex_order
  # Place complex order
  # Places a complex conditional order (OCO, OTO, or OTOCO). Only supported on certain brokerages. Please refer to the [brokerage trading support page](https://support.snaptrade.com/brokerages) for details on which brokerages support complex orders and which types they support.  - **OCO** (One Cancels the Other): Two peer orders; when one fills the other is cancelled. - **OTO** (One Triggers the Other): A trigger order that, when filled, activates a conditional order. - **OTOCO** (One Triggers a One Cancels the Other): A trigger order that, when filled, activates an OCO pair of two peer orders.  Option OCO peers must trade the same OCC option symbol with the same closing action and positive whole-contract quantity.  On tastytrade, option OCO supports closing an existing long or short option position with one &#x60;Limit&#x60; order and one &#x60;Stop&#x60; or &#x60;StopLimit&#x60; order. Both &#x60;PEER&#x60; orders must use &#x60;SELL_TO_CLOSE&#x60; or both must use &#x60;BUY_TO_CLOSE&#x60;, with &#x60;Day&#x60; or &#x60;GTC&#x60; time in force. Opening option OCOs are not supported.  On enabled Webull US v3 accounts, option OCO supports closing an existing long option position with one &#x60;Limit&#x60; take-profit order and one &#x60;Stop&#x60; stop-loss order. Both &#x60;PEER&#x60; orders must use &#x60;SELL_TO_CLOSE&#x60;, &#x60;Day&#x60;, the same OCC option symbol, and the same positive whole-contract quantity. Webull receives these as &#x60;STOP_PROFIT&#x60; and &#x60;STOP_LOSS&#x60; orders sharing a combo ID, without a MASTER order. Opening option OCOs, &#x60;BUY_TO_CLOSE&#x60;, &#x60;StopLimit&#x60;, and other option order pairs are not supported on Webull. Equity complex-order behavior is unchanged. 
  # @param account_id The ID of the account to execute the trade on.
  # @param user_id 
  # @param user_secret 
  # @param manual_trade_form_complex 
  # @param [Hash] opts the optional parameters
  # @return [ComplexOrderResponse]
  describe 'place_complex_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_crypto_order
  # Place crypto order
  # Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param crypto_order_form 
  # @param [Hash] opts the optional parameters
  # @return [OrderUpdatedResponse]
  describe 'place_crypto_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_force_order
  # Place equity order
  # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
  # @param user_id 
  # @param user_secret 
  # @param manual_trade_form_with_options 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'place_force_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_mleg_order
  # Place option order
  # Places a multi-leg option order. Only supported on certain option trading brokerages. https://support.snaptrade.com/brokerages has information on brokerage trading support 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param mleg_trade_form 
  # @param [Hash] opts the optional parameters
  # @return [MlegOrderResponse]
  describe 'place_mleg_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_order
  # Place checked equity order
  # Places the previously checked order with the brokerage. The &#x60;tradeId&#x60; is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
  # @param trade_id Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @option opts [ValidatedTradeBody] :validated_trade_body 
  # @return [AccountOrderRecord]
  describe 'place_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for preview_crypto_order
  # Preview crypto order
  # Previews an order using the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param crypto_order_form 
  # @param [Hash] opts the optional parameters
  # @return [CryptoOrderPreview]
  describe 'preview_crypto_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for replace_order
  # Replace order
  # Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order&#39;s brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 
  # @param account_id The ID of the account to execute the trade on.
  # @param user_id 
  # @param user_secret 
  # @param manual_trade_replace_form 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'replace_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for search_cryptocurrency_pair_instruments
  # Get crypto pairs
  # Searches cryptocurrency pairs instruments accessible to the specified account. Both &#x60;base&#x60; and &#x60;quote&#x60; are optional. Omit both for a full list of cryptocurrency pairs. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :base 
  # @option opts [String] :quote 
  # @return [TradingSearchCryptocurrencyPairInstruments200Response]
  describe 'search_cryptocurrency_pair_instruments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
