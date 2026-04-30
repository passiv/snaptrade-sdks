=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CefInstrumentKind
describe SnapTrade::CefInstrumentKind do
  let(:instance) { SnapTrade::CefInstrumentKind.new }

  describe 'test an instance of CefInstrumentKind' do
    it 'should create an instance of CefInstrumentKind' do
      expect(instance).to be_instance_of(SnapTrade::CefInstrumentKind)
    end
  end
end
