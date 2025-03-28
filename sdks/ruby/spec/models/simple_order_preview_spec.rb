=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::SimpleOrderPreview
describe SnapTrade::SimpleOrderPreview do
  let(:instance) { SnapTrade::SimpleOrderPreview.new }

  describe 'test an instance of SimpleOrderPreview' do
    it 'should create an instance of SimpleOrderPreview' do
      expect(instance).to be_instance_of(SnapTrade::SimpleOrderPreview)
    end
  end
  describe 'test attribute "estimated_fee"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
