=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::CryptoTradingApi
describe 'CryptoTradingApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::CryptoTradingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of CryptoTradingApi' do
    it 'should create an instance of CryptoTradingApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::CryptoTradingApi)
    end
  end

  # unit tests for search_cryptocurrency_pair_instruments
  # Search cryptocurrency pairs instruments
  # Searches cryptocurrency pairs instruments accessible to the specified account. 
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
