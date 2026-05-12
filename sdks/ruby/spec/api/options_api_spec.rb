=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::OptionsApi
describe 'OptionsApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::OptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of OptionsApi' do
    it 'should create an instance of OptionsApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::OptionsApi)
    end
  end

  # unit tests for list_option_holdings
  # List account option positions
  # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  Consider using the newer [unified positions endpoint](/reference/Account%20Information/AccountInformation_getAllAccountPositions). This will allow you to get both equity and option positions in a single call, as well as additional asset classes such as futures.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param [Hash] opts the optional parameters
  # @return [Array<OptionsPosition>]
  describe 'list_option_holdings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
