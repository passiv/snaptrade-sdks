=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::DepositAccountSyncStatus
describe SnapTrade::DepositAccountSyncStatus do
  let(:instance) { SnapTrade::DepositAccountSyncStatus.new }

  describe 'test an instance of DepositAccountSyncStatus' do
    it 'should create an instance of DepositAccountSyncStatus' do
      expect(instance).to be_instance_of(SnapTrade::DepositAccountSyncStatus)
    end
  end
  describe 'test attribute "transactions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "balances"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
