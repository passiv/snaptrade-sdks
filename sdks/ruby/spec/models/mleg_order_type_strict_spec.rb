=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegOrderTypeStrict
describe SnapTrade::MlegOrderTypeStrict do
  let(:instance) { SnapTrade::MlegOrderTypeStrict.new }

  describe 'test an instance of MlegOrderTypeStrict' do
    it 'should create an instance of MlegOrderTypeStrict' do
      expect(instance).to be_instance_of(SnapTrade::MlegOrderTypeStrict)
    end
  end
end
