=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::LineOfCreditAccountKind
describe SnapTrade::LineOfCreditAccountKind do
  let(:instance) { SnapTrade::LineOfCreditAccountKind.new }

  describe 'test an instance of LineOfCreditAccountKind' do
    it 'should create an instance of LineOfCreditAccountKind' do
      expect(instance).to be_instance_of(SnapTrade::LineOfCreditAccountKind)
    end
  end
end
