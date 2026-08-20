=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::PriceEffect
describe SnapTrade::PriceEffect do
  let(:instance) { SnapTrade::PriceEffect.new }

  describe 'test an instance of PriceEffect' do
    it 'should create an instance of PriceEffect' do
      expect(instance).to be_instance_of(SnapTrade::PriceEffect)
    end
  end
end
