=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::OrderStrategyExecuteBodyOrderType
describe SnapTrade::OrderStrategyExecuteBodyOrderType do
  let(:instance) { SnapTrade::OrderStrategyExecuteBodyOrderType.new }

  describe 'test an instance of OrderStrategyExecuteBodyOrderType' do
    it 'should create an instance of OrderStrategyExecuteBodyOrderType' do
      expect(instance).to be_instance_of(SnapTrade::OrderStrategyExecuteBodyOrderType)
    end
  end
end
