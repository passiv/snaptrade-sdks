=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for SnapTrade::PaginatedUniversalActivity
describe SnapTrade::PaginatedUniversalActivity do
  let(:instance) { SnapTrade::PaginatedUniversalActivity.new }

  describe 'test an instance of PaginatedUniversalActivity' do
    it 'should create an instance of PaginatedUniversalActivity' do
      expect(instance).to be_instance_of(SnapTrade::PaginatedUniversalActivity)
    end
  end
  describe 'test attribute "data"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "pagination"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
