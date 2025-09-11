=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CryptoOrderFormTimeInForce
describe SnapTrade::CryptoOrderFormTimeInForce do
  let(:instance) { SnapTrade::CryptoOrderFormTimeInForce.new }

  describe 'test an instance of CryptoOrderFormTimeInForce' do
    it 'should create an instance of CryptoOrderFormTimeInForce' do
      expect(instance).to be_instance_of(SnapTrade::CryptoOrderFormTimeInForce)
    end
  end
end
