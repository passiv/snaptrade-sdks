=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegInstrumentType
describe SnapTrade::MlegInstrumentType do
  let(:instance) { SnapTrade::MlegInstrumentType.new }

  describe 'test an instance of MlegInstrumentType' do
    it 'should create an instance of MlegInstrumentType' do
      expect(instance).to be_instance_of(SnapTrade::MlegInstrumentType)
    end
  end
end
