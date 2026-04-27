=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::OrderRole
describe SnapTrade::OrderRole do
  let(:instance) { SnapTrade::OrderRole.new }

  describe 'test an instance of OrderRole' do
    it 'should create an instance of OrderRole' do
      expect(instance).to be_instance_of(SnapTrade::OrderRole)
    end
  end
end
