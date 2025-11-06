=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::AccountOrderRecordStatusV2
describe SnapTrade::AccountOrderRecordStatusV2 do
  let(:instance) { SnapTrade::AccountOrderRecordStatusV2.new }

  describe 'test an instance of AccountOrderRecordStatusV2' do
    it 'should create an instance of AccountOrderRecordStatusV2' do
      expect(instance).to be_instance_of(SnapTrade::AccountOrderRecordStatusV2)
    end
  end
end
