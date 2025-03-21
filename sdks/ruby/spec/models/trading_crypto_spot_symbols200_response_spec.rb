=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradingCryptoSpotSymbols200Response
describe SnapTrade::TradingCryptoSpotSymbols200Response do
  let(:instance) { SnapTrade::TradingCryptoSpotSymbols200Response.new }

  describe 'test an instance of TradingCryptoSpotSymbols200Response' do
    it 'should create an instance of TradingCryptoSpotSymbols200Response' do
      expect(instance).to be_instance_of(SnapTrade::TradingCryptoSpotSymbols200Response)
    end
  end
  describe 'test attribute "items"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
