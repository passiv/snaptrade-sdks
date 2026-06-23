=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CfdInstrumentUnderlyingInstrument
describe SnapTrade::CfdInstrumentUnderlyingInstrument do
  let(:instance) { SnapTrade::CfdInstrumentUnderlyingInstrument.new }

  describe 'test an instance of CfdInstrumentUnderlyingInstrument' do
    it 'should create an instance of CfdInstrumentUnderlyingInstrument' do
      expect(instance).to be_instance_of(SnapTrade::CfdInstrumentUnderlyingInstrument)
    end
  end
end
