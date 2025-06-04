=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradingInstrumentType
describe SnapTrade::TradingInstrumentType do
  let(:instance) { SnapTrade::TradingInstrumentType.new }

  describe 'test an instance of TradingInstrumentType' do
    it 'should create an instance of TradingInstrumentType' do
      expect(instance).to be_instance_of(SnapTrade::TradingInstrumentType)
    end
  end
end
