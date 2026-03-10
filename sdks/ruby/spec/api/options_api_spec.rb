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

  # unit tests for get_option_quote
  # Get option quote
  # Returns a real-time quote for a single option contract. The option contract is specified using in the 21 character OCC format. For example &#x60;AAPL  251114C00240000&#x60; represents a call option on AAPL expiring on 2025-11-14 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format) 
  # @param user_id 
  # @param user_secret 
  # @param account_id 
  # @param symbol The OCC-formatted option symbol.
  # @param [Hash] opts the optional parameters
  # @return [OptionQuote]
  describe 'get_option_quote test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_option_holdings
  # List account option positions
  # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://support.snaptrade.com/brokerages-table?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 
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
