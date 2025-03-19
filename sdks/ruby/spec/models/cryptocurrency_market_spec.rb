=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CryptocurrencyMarket
describe SnapTrade::CryptocurrencyMarket do
  let(:instance) { SnapTrade::CryptocurrencyMarket.new }

  describe 'test an instance of CryptocurrencyMarket' do
    it 'should create an instance of CryptocurrencyMarket' do
      expect(instance).to be_instance_of(SnapTrade::CryptocurrencyMarket)
    end
  end
  describe 'test attribute "symbol"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "trading_allowed"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
