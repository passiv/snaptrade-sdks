=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountOrderRecordChildBrokerageOrderIds
describe SnapTrade::AccountOrderRecordChildBrokerageOrderIds do
  let(:instance) { SnapTrade::AccountOrderRecordChildBrokerageOrderIds.new }

  describe 'test an instance of AccountOrderRecordChildBrokerageOrderIds' do
    it 'should create an instance of AccountOrderRecordChildBrokerageOrderIds' do
      expect(instance).to be_instance_of(SnapTrade::AccountOrderRecordChildBrokerageOrderIds)
    end
  end
  describe 'test attribute "take_profit_order_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "stop_loss_order_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
