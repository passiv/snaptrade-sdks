=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::RecentOrdersResponse
describe SnapTrade::RecentOrdersResponse do
  let(:instance) { SnapTrade::RecentOrdersResponse.new }

  describe 'test an instance of RecentOrdersResponse' do
    it 'should create an instance of RecentOrdersResponse' do
      expect(instance).to be_instance_of(SnapTrade::RecentOrdersResponse)
    end
  end
  describe 'test attribute "orders"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
