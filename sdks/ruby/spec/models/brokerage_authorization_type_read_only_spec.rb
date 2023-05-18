=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::BrokerageAuthorizationTypeReadOnly
describe SnapTrade::BrokerageAuthorizationTypeReadOnly do
  let(:instance) { SnapTrade::BrokerageAuthorizationTypeReadOnly.new }

  describe 'test an instance of BrokerageAuthorizationTypeReadOnly' do
    it 'should create an instance of BrokerageAuthorizationTypeReadOnly' do
      expect(instance).to be_instance_of(SnapTrade::BrokerageAuthorizationTypeReadOnly)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["read", "trade"])
      # validator.allowable_values.each do |value|
      #   expect { instance.type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "auth_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["OAUTH", "SCRAPE", "UNOFFICIAL_API", "TOKEN"])
      # validator.allowable_values.each do |value|
      #   expect { instance.auth_type = value }.not_to raise_error
      # end
    end
  end

  describe 'test attribute "brokerage"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
