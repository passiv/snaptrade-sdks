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

  # unit tests for get_options_chain
  # Get the options chain for a symbol
  # Returns the option chain for the specified symbol in the specified account.
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account to get the options chain from.
  # @param symbol Universal symbol ID if symbol
  # @param [Hash] opts the optional parameters
  # @return [Array<OptionChainInner>]
  describe 'get_options_chain test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_option_holdings
  # List account option positions
  # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 
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
