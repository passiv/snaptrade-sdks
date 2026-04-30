=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AdrInstrumentKind
describe SnapTrade::AdrInstrumentKind do
  let(:instance) { SnapTrade::AdrInstrumentKind.new }

  describe 'test an instance of AdrInstrumentKind' do
    it 'should create an instance of AdrInstrumentKind' do
      expect(instance).to be_instance_of(SnapTrade::AdrInstrumentKind)
    end
  end
end
