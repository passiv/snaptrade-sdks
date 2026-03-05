=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountValueHistoryItem
describe SnapTrade::AccountValueHistoryItem do
  let(:instance) { SnapTrade::AccountValueHistoryItem.new }

  describe 'test an instance of AccountValueHistoryItem' do
    it 'should create an instance of AccountValueHistoryItem' do
      expect(instance).to be_instance_of(SnapTrade::AccountValueHistoryItem)
    end
  end
  describe 'test attribute "date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "total_value"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
