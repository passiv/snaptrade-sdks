=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegTradingInstrumentType
describe SnapTrade::MlegTradingInstrumentType do
  let(:instance) { SnapTrade::MlegTradingInstrumentType.new }

  describe 'test an instance of MlegTradingInstrumentType' do
    it 'should create an instance of MlegTradingInstrumentType' do
      expect(instance).to be_instance_of(SnapTrade::MlegTradingInstrumentType)
    end
  end
end
