=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradeDetectionCancelSubscriptionResponse
describe SnapTrade::TradeDetectionCancelSubscriptionResponse do
  let(:instance) { SnapTrade::TradeDetectionCancelSubscriptionResponse.new }

  describe 'test an instance of TradeDetectionCancelSubscriptionResponse' do
    it 'should create an instance of TradeDetectionCancelSubscriptionResponse' do
      expect(instance).to be_instance_of(SnapTrade::TradeDetectionCancelSubscriptionResponse)
    end
  end
  describe 'test attribute "success"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
