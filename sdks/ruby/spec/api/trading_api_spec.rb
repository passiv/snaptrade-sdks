=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

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

  # unit tests for cancel_user_account_order
  # Cancel order
  # Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param trading_cancel_user_account_order_request 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'cancel_user_account_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_order_impact
  # Check order impact
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

  # unit tests for get_user_account_quotes
  # Get symbol quotes
  # Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
  # @param user_id 
  # @param user_secret 
  # @param symbols List of Universal Symbol IDs or tickers to get quotes for.
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :use_ticker Should be set to &#x60;True&#x60; if &#x60;symbols&#x60; are comprised of tickers. Defaults to &#x60;False&#x60; if not provided.
  # @return [Array<SymbolsQuotesInner>]
  describe 'get_user_account_quotes test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_force_order
  # Place order
  # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.   This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
  # @param user_id 
  # @param user_secret 
  # @param manual_trade_form 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'place_force_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for place_order
  # Place checked order
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

end
