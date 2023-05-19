=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::StrategyOrderRecordTimeInForce
describe SnapTrade::StrategyOrderRecordTimeInForce do
  let(:instance) { SnapTrade::StrategyOrderRecordTimeInForce.new }

  describe 'test an instance of StrategyOrderRecordTimeInForce' do
    it 'should create an instance of StrategyOrderRecordTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::StrategyOrderRecordTimeInForce)
    end
  end
end
