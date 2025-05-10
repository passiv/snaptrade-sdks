=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::SimpleOrderFormType
describe SnapTrade::SimpleOrderFormType do
  let(:instance) { SnapTrade::SimpleOrderFormType.new }

  describe 'test an instance of SimpleOrderFormType' do
    it 'should create an instance of SimpleOrderFormType' do
      expect(instance).to be_instance_of(SnapTrade::SimpleOrderFormType)
    end
  end
end
