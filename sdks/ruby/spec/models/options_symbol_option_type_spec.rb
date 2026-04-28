=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::OptionsSymbolOptionType
describe SnapTrade::OptionsSymbolOptionType do
  let(:instance) { SnapTrade::OptionsSymbolOptionType.new }

  describe 'test an instance of OptionsSymbolOptionType' do
    it 'should create an instance of OptionsSymbolOptionType' do
      expect(instance).to be_instance_of(SnapTrade::OptionsSymbolOptionType)
    end
  end
end
