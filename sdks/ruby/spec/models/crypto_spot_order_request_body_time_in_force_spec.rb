=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CryptoSpotOrderRequestBodyTimeInForce
describe SnapTrade::CryptoSpotOrderRequestBodyTimeInForce do
  let(:instance) { SnapTrade::CryptoSpotOrderRequestBodyTimeInForce.new }

  describe 'test an instance of CryptoSpotOrderRequestBodyTimeInForce' do
    it 'should create an instance of CryptoSpotOrderRequestBodyTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::CryptoSpotOrderRequestBodyTimeInForce)
    end
  end
end
