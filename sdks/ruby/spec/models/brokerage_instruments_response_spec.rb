=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::BrokerageInstrumentsResponse
describe SnapTrade::BrokerageInstrumentsResponse do
  let(:instance) { SnapTrade::BrokerageInstrumentsResponse.new }

  describe 'test an instance of BrokerageInstrumentsResponse' do
    it 'should create an instance of BrokerageInstrumentsResponse' do
      expect(instance).to be_instance_of(SnapTrade::BrokerageInstrumentsResponse)
    end
  end
  describe 'test attribute "instruments"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
