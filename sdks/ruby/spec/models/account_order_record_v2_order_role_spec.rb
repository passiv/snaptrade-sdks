=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountOrderRecordV2OrderRole
describe SnapTrade::AccountOrderRecordV2OrderRole do
  let(:instance) { SnapTrade::AccountOrderRecordV2OrderRole.new }

  describe 'test an instance of AccountOrderRecordV2OrderRole' do
    it 'should create an instance of AccountOrderRecordV2OrderRole' do
      expect(instance).to be_instance_of(SnapTrade::AccountOrderRecordV2OrderRole)
    end
  end
end
