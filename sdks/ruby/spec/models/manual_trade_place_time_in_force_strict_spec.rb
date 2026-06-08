=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::ManualTradePlaceTimeInForceStrict
describe SnapTrade::ManualTradePlaceTimeInForceStrict do
  let(:instance) { SnapTrade::ManualTradePlaceTimeInForceStrict.new }

  describe 'test an instance of ManualTradePlaceTimeInForceStrict' do
    it 'should create an instance of ManualTradePlaceTimeInForceStrict' do
      expect(instance).to be_instance_of(SnapTrade::ManualTradePlaceTimeInForceStrict)
    end
  end
end
