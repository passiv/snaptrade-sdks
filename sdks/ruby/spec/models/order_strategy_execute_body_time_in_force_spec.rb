=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::OrderStrategyExecuteBodyTimeInForce
describe SnapTrade::OrderStrategyExecuteBodyTimeInForce do
  let(:instance) { SnapTrade::OrderStrategyExecuteBodyTimeInForce.new }

  describe 'test an instance of OrderStrategyExecuteBodyTimeInForce' do
    it 'should create an instance of OrderStrategyExecuteBodyTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::OrderStrategyExecuteBodyTimeInForce)
    end
  end
end
