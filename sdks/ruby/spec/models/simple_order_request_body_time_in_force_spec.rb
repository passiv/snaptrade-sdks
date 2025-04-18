=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::SimpleOrderRequestBodyTimeInForce
describe SnapTrade::SimpleOrderRequestBodyTimeInForce do
  let(:instance) { SnapTrade::SimpleOrderRequestBodyTimeInForce.new }

  describe 'test an instance of SimpleOrderRequestBodyTimeInForce' do
    it 'should create an instance of SimpleOrderRequestBodyTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::SimpleOrderRequestBodyTimeInForce)
    end
  end
end
