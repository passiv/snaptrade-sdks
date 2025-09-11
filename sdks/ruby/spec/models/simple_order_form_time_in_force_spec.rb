=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::SimpleOrderFormTimeInForce
describe SnapTrade::SimpleOrderFormTimeInForce do
  let(:instance) { SnapTrade::SimpleOrderFormTimeInForce.new }

  describe 'test an instance of SimpleOrderFormTimeInForce' do
    it 'should create an instance of SimpleOrderFormTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::SimpleOrderFormTimeInForce)
    end
  end
end
