=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::DepositAccountNetValue
describe SnapTrade::DepositAccountNetValue do
  let(:instance) { SnapTrade::DepositAccountNetValue.new }

  describe 'test an instance of DepositAccountNetValue' do
    it 'should create an instance of DepositAccountNetValue' do
      expect(instance).to be_instance_of(SnapTrade::DepositAccountNetValue)
    end
  end
  describe 'test attribute "amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
