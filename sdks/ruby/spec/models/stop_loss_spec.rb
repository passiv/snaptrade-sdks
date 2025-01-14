=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::StopLoss
describe SnapTrade::StopLoss do
  let(:instance) { SnapTrade::StopLoss.new }

  describe 'test an instance of StopLoss' do
    it 'should create an instance of StopLoss' do
      expect(instance).to be_instance_of(SnapTrade::StopLoss)
    end
  end
  describe 'test attribute "stop_price"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "limit_price"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
