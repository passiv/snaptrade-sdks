=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CryptoTradingInstrumentType
describe SnapTrade::CryptoTradingInstrumentType do
  let(:instance) { SnapTrade::CryptoTradingInstrumentType.new }

  describe 'test an instance of CryptoTradingInstrumentType' do
    it 'should create an instance of CryptoTradingInstrumentType' do
      expect(instance).to be_instance_of(SnapTrade::CryptoTradingInstrumentType)
    end
  end
end
