=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::Bucket
describe SnapTrade::Bucket do
  let(:instance) { SnapTrade::Bucket.new }

  describe 'test an instance of Bucket' do
    it 'should create an instance of Bucket' do
      expect(instance).to be_instance_of(SnapTrade::Bucket)
    end
  end
end
