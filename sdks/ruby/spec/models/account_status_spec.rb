=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountStatus
describe SnapTrade::AccountStatus do
  let(:instance) { SnapTrade::AccountStatus.new }

  describe 'test an instance of AccountStatus' do
    it 'should create an instance of AccountStatus' do
      expect(instance).to be_instance_of(SnapTrade::AccountStatus)
    end
  end
end
