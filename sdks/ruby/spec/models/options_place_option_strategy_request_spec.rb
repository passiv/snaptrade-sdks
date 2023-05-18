=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::OptionsPlaceOptionStrategyRequest
describe SnapTrade::OptionsPlaceOptionStrategyRequest do
  let(:instance) { SnapTrade::OptionsPlaceOptionStrategyRequest.new }

  describe 'test an instance of OptionsPlaceOptionStrategyRequest' do
    it 'should create an instance of OptionsPlaceOptionStrategyRequest' do
      expect(instance).to be_instance_of(SnapTrade::OptionsPlaceOptionStrategyRequest)
    end
  end
  describe 'test attribute "order_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Limit", "Market", "NetDebit", "NetCredit"])
      # validator.allowable_values.each do |value|
      #   expect { instance.order_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "time_in_force"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["DAY", "GTC"])
      # validator.allowable_values.each do |value|
      #   expect { instance.time_in_force = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "price"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
