=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::Snaptrade
describe SnapTrade::Snaptrade do
  let(:instance) { SnapTrade::Snaptrade.new }

  describe 'test an instance of Snaptrade' do
    it 'should create an instance of Snaptrade' do
      expect(instance).to be_instance_of(SnapTrade::Snaptrade)
    end
  end
end
