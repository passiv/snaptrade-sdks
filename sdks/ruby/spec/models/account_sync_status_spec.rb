=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountSyncStatus
describe SnapTrade::AccountSyncStatus do
  let(:instance) { SnapTrade::AccountSyncStatus.new }

  describe 'test an instance of AccountSyncStatus' do
    it 'should create an instance of AccountSyncStatus' do
      expect(instance).to be_instance_of(SnapTrade::AccountSyncStatus)
    end
  end
  describe 'test attribute "transactions"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "holdings"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
