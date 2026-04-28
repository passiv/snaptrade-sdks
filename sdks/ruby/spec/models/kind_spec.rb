=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::Kind
describe SnapTrade::Kind do
  let(:instance) { SnapTrade::Kind.new }

  describe 'test an instance of Kind' do
    it 'should create an instance of Kind' do
      expect(instance).to be_instance_of(SnapTrade::Kind)
    end
  end
end
