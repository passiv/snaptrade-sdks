=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::LineOfCreditAccountCreditDetails
describe SnapTrade::LineOfCreditAccountCreditDetails do
  let(:instance) { SnapTrade::LineOfCreditAccountCreditDetails.new }

  describe 'test an instance of LineOfCreditAccountCreditDetails' do
    it 'should create an instance of LineOfCreditAccountCreditDetails' do
      expect(instance).to be_instance_of(SnapTrade::LineOfCreditAccountCreditDetails)
    end
  end
  describe 'test attribute "minimum_payment_amount"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
