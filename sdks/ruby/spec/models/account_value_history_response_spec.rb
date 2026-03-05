=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountValueHistoryResponse
describe SnapTrade::AccountValueHistoryResponse do
  let(:instance) { SnapTrade::AccountValueHistoryResponse.new }

  describe 'test an instance of AccountValueHistoryResponse' do
    it 'should create an instance of AccountValueHistoryResponse' do
      expect(instance).to be_instance_of(SnapTrade::AccountValueHistoryResponse)
    end
  end
  describe 'test attribute "history"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "currency"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
