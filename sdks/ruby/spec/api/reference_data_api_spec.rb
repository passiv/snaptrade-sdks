=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::ReferenceDataApi
describe 'ReferenceDataApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::ReferenceDataApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReferenceDataApi' do
    it 'should create an instance of ReferenceDataApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::ReferenceDataApi)
    end
  end

  # unit tests for get_partner_info
  # Get Client Info
  # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
  # @param [Hash] opts the optional parameters
  # @return [PartnerData]
  describe 'get_partner_info test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_stock_exchanges
  # Get exchanges
  # Returns a list of all supported Exchanges.
  # @param [Hash] opts the optional parameters
  # @return [Array<Exchange>]
  describe 'get_stock_exchanges test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols
  # Search symbols
  # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned. 
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'get_symbols test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_symbols_by_ticker
  # Get symbol detail
  # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results. 
  # @param query The ticker or Universal Symbol ID to look up the symbol with.
  # @param [Hash] opts the optional parameters
  # @return [UniversalSymbol]
  describe 'get_symbols_by_ticker test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerage_authorization_type
  # Get all brokerage authorization types
  # Returns a list of all defined Brokerage authorization Type objects.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :brokerage Comma separated value of brokerage slugs
  # @return [Array<BrokerageAuthorizationTypeReadOnly>]
  describe 'list_all_brokerage_authorization_type test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerage_instruments
  # Get brokerage instruments
  # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don&#39;t will return an empty list.
  # @param slug A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
  # @param [Hash] opts the optional parameters
  # @return [BrokerageInstrumentsResponse]
  describe 'list_all_brokerage_instruments test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_all_brokerages
  # Get brokerages
  # Returns a list of all defined Brokerage objects.
  # @param [Hash] opts the optional parameters
  # @return [Array<Brokerage>]
  describe 'list_all_brokerages test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for symbol_search_user_account
  # Search account symbols
  # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.  The search results are further limited to the symbols supported by the brokerage for which the account is under. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [SymbolQuery] :symbol_query 
  # @return [Array<UniversalSymbol>]
  describe 'symbol_search_user_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
