=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountCategory
describe SnapTrade::AccountCategory do
  let(:instance) { SnapTrade::AccountCategory.new }

  describe 'test an instance of AccountCategory' do
    it 'should create an instance of AccountCategory' do
      expect(instance).to be_instance_of(SnapTrade::AccountCategory)
    end
  end
end
