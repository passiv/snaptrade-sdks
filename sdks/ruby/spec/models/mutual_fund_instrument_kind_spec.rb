=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MutualFundInstrumentKind
describe SnapTrade::MutualFundInstrumentKind do
  let(:instance) { SnapTrade::MutualFundInstrumentKind.new }

  describe 'test an instance of MutualFundInstrumentKind' do
    it 'should create an instance of MutualFundInstrumentKind' do
      expect(instance).to be_instance_of(SnapTrade::MutualFundInstrumentKind)
    end
  end
end
