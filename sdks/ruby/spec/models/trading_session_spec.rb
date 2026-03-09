=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::TradingSession
describe SnapTrade::TradingSession do
  let(:instance) { SnapTrade::TradingSession.new }

  describe 'test an instance of TradingSession' do
    it 'should create an instance of TradingSession' do
      expect(instance).to be_instance_of(SnapTrade::TradingSession)
    end
  end
end
