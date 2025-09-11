=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegPriceEffectStrict
describe SnapTrade::MlegPriceEffectStrict do
  let(:instance) { SnapTrade::MlegPriceEffectStrict.new }

  describe 'test an instance of MlegPriceEffectStrict' do
    it 'should create an instance of MlegPriceEffectStrict' do
      expect(instance).to be_instance_of(SnapTrade::MlegPriceEffectStrict)
    end
  end
end
