=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountOrdersV2Response
describe SnapTrade::AccountOrdersV2Response do
  let(:instance) { SnapTrade::AccountOrdersV2Response.new }

  describe 'test an instance of AccountOrdersV2Response' do
    it 'should create an instance of AccountOrdersV2Response' do
      expect(instance).to be_instance_of(SnapTrade::AccountOrdersV2Response)
    end
  end
  describe 'test attribute "orders"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
