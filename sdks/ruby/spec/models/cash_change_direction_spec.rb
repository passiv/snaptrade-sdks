=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CashChangeDirection
describe SnapTrade::CashChangeDirection do
  let(:instance) { SnapTrade::CashChangeDirection.new }

  describe 'test an instance of CashChangeDirection' do
    it 'should create an instance of CashChangeDirection' do
      expect(instance).to be_instance_of(SnapTrade::CashChangeDirection)
    end
  end
end
