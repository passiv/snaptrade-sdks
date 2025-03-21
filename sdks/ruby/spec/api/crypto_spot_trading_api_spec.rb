=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::CryptoSpotTradingApi
describe 'CryptoSpotTradingApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::CryptoSpotTradingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CryptoSpotTradingApi' do
    it 'should create an instance of CryptoSpotTradingApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::CryptoSpotTradingApi)
    end
  end

  # unit tests for crypto_spot_cancel_order
  # Cancel a crypto spot order.
  # Cancels a cryptocurrency spot order in the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param trading_crypto_spot_cancel_order_request 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'crypto_spot_cancel_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crypto_spot_place_order
  # Place a spot order on a crypto exchange
  # Places a spot cryptocurrency order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param trading_crypto_spot_place_order_request 
  # @param [Hash] opts the optional parameters
  # @return [AccountOrderRecord]
  describe 'crypto_spot_place_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crypto_spot_preview_order
  # Place a spot order on a crypto exchange
  # Previews a cryptocurrency spot order using the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param trading_crypto_spot_place_order_request 
  # @param [Hash] opts the optional parameters
  # @return [CryptoSpotOrderPreview]
  describe 'crypto_spot_preview_order test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crypto_spot_quote
  # Get a quote for a cyrptocurrency market
  # Gets a quote for the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param base 
  # @param quote 
  # @param [Hash] opts the optional parameters
  # @return [CryptoSpotQuote]
  describe 'crypto_spot_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for crypto_spot_symbols
  # Search crypto spot symbols
  # Searches cryptocurrency spot symbols accessible to the specified account. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :base 
  # @option opts [String] :quote 
  # @return [TradingCryptoSpotSymbols200Response]
  describe 'crypto_spot_symbols test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
