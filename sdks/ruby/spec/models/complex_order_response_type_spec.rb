=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::ComplexOrderResponseType
describe SnapTrade::ComplexOrderResponseType do
  let(:instance) { SnapTrade::ComplexOrderResponseType.new }

  describe 'test an instance of ComplexOrderResponseType' do
    it 'should create an instance of ComplexOrderResponseType' do
      expect(instance).to be_instance_of(SnapTrade::ComplexOrderResponseType)
    end
  end
end
