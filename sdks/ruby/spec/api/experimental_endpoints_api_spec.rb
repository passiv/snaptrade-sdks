=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::ExperimentalEndpointsApi
describe 'ExperimentalEndpointsApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::ExperimentalEndpointsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ExperimentalEndpointsApi' do
    it 'should create an instance of ExperimentalEndpointsApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::ExperimentalEndpointsApi)
    end
  end

  # unit tests for get_user_account_orders_v2
  # List account orders v2
  # Returns a list of recent orders in the specified account.  The V2 order response format will include all legs of each order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state defaults value is set to \&quot;all\&quot;
  # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
  # @return [AccountOrdersV2Response]
  describe 'get_user_account_orders_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_recent_orders_v2
  # List account recent orders (V2, last 24 hours only)
  # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders. Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days. By default only returns executed orders, but that can be changed by setting *only_executed* to false. **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :only_executed Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
  # @return [AccountOrdersV2Response]
  describe 'get_user_account_recent_orders_v2 test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
