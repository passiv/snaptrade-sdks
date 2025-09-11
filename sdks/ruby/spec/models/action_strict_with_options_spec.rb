=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::ActionStrictWithOptions
describe SnapTrade::ActionStrictWithOptions do
  let(:instance) { SnapTrade::ActionStrictWithOptions.new }

  describe 'test an instance of ActionStrictWithOptions' do
    it 'should create an instance of ActionStrictWithOptions' do
      expect(instance).to be_instance_of(SnapTrade::ActionStrictWithOptions)
    end
  end
end
