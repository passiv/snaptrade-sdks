=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::Institution
describe SnapTrade::Institution do
  let(:instance) { SnapTrade::Institution.new }

  describe 'test an instance of Institution' do
    it 'should create an instance of Institution' do
      expect(instance).to be_instance_of(SnapTrade::Institution)
    end
  end
end
