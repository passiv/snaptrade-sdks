=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::CryptoOrderFormType
describe SnapTrade::CryptoOrderFormType do
  let(:instance) { SnapTrade::CryptoOrderFormType.new }

  describe 'test an instance of CryptoOrderFormType' do
    it 'should create an instance of CryptoOrderFormType' do
      expect(instance).to be_instance_of(SnapTrade::CryptoOrderFormType)
    end
  end
end
