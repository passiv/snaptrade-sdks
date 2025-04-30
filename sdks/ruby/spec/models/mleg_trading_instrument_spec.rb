=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegTradingInstrument
describe SnapTrade::MlegTradingInstrument do
  let(:instance) { SnapTrade::MlegTradingInstrument.new }

  describe 'test an instance of MlegTradingInstrument' do
    it 'should create an instance of MlegTradingInstrument' do
      expect(instance).to be_instance_of(SnapTrade::MlegTradingInstrument)
    end
  end
  describe 'test attribute "symbol"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
