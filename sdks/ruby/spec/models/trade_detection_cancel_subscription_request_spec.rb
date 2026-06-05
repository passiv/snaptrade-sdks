=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradeDetectionCancelSubscriptionRequest
describe SnapTrade::TradeDetectionCancelSubscriptionRequest do
  let(:instance) { SnapTrade::TradeDetectionCancelSubscriptionRequest.new }

  describe 'test an instance of TradeDetectionCancelSubscriptionRequest' do
    it 'should create an instance of TradeDetectionCancelSubscriptionRequest' do
      expect(instance).to be_instance_of(SnapTrade::TradeDetectionCancelSubscriptionRequest)
    end
  end
  describe 'test attribute "account_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
