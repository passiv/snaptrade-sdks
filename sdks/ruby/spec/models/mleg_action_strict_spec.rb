=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::MlegActionStrict
describe SnapTrade::MlegActionStrict do
  let(:instance) { SnapTrade::MlegActionStrict.new }

  describe 'test an instance of MlegActionStrict' do
    it 'should create an instance of MlegActionStrict' do
      expect(instance).to be_instance_of(SnapTrade::MlegActionStrict)
    end
  end
end
