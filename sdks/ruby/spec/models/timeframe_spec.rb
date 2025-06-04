=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::Timeframe
describe SnapTrade::Timeframe do
  let(:instance) { SnapTrade::Timeframe.new }

  describe 'test an instance of Timeframe' do
    it 'should create an instance of Timeframe' do
      expect(instance).to be_instance_of(SnapTrade::Timeframe)
    end
  end
end
