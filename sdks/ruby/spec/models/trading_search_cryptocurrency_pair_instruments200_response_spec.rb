=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradingSearchCryptocurrencyPairInstruments200Response
describe SnapTrade::TradingSearchCryptocurrencyPairInstruments200Response do
  let(:instance) { SnapTrade::TradingSearchCryptocurrencyPairInstruments200Response.new }

  describe 'test an instance of TradingSearchCryptocurrencyPairInstruments200Response' do
    it 'should create an instance of TradingSearchCryptocurrencyPairInstruments200Response' do
      expect(instance).to be_instance_of(SnapTrade::TradingSearchCryptocurrencyPairInstruments200Response)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
