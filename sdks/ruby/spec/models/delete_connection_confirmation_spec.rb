=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::DeleteConnectionConfirmation
describe SnapTrade::DeleteConnectionConfirmation do
  let(:instance) { SnapTrade::DeleteConnectionConfirmation.new }

  describe 'test an instance of DeleteConnectionConfirmation' do
    it 'should create an instance of DeleteConnectionConfirmation' do
      expect(instance).to be_instance_of(SnapTrade::DeleteConnectionConfirmation)
    end
  end
  describe 'test attribute "detail"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "connection_id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
