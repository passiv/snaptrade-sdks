=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::RateOfReturnObject
describe SnapTrade::RateOfReturnObject do
  let(:instance) { SnapTrade::RateOfReturnObject.new }

  describe 'test an instance of RateOfReturnObject' do
    it 'should create an instance of RateOfReturnObject' do
      expect(instance).to be_instance_of(SnapTrade::RateOfReturnObject)
    end
  end
  describe 'test attribute "timeframe"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "return_percent"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_date"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
