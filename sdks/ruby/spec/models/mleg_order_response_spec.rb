=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegOrderResponse
describe SnapTrade::MlegOrderResponse do
  let(:instance) { SnapTrade::MlegOrderResponse.new }

  describe 'test an instance of MlegOrderResponse' do
    it 'should create an instance of MlegOrderResponse' do
      expect(instance).to be_instance_of(SnapTrade::MlegOrderResponse)
    end
  end
  describe 'test attribute "brokerage_order_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "orders"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
