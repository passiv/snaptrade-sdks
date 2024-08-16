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

  # unit tests for get_option_strategy
  # Create options strategy
  # Creates an option strategy object that will be used to place an option strategy order. 
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account to create the option strategy object in.
  # @param options_get_option_strategy_request 
  # @param [Hash] opts the optional parameters
  # @return [StrategyQuotes]
  describe 'get_option_strategy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
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

  # unit tests for get_options_strategy_quote
  # Get options strategy quotes
  # Returns a Strategy Quotes object which has latest market data of the specified option strategy. 
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account the strategy will be placed in.
  # @param option_strategy_id Option strategy id obtained from response when creating option strategy object
  # @param [Hash] opts the optional parameters
  # @return [StrategyQuotes]
  describe 'get_options_strategy_quote test' do
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

  # unit tests for place_option_strategy
  # Place an option strategy order
  # Places the option strategy order and returns the order record received from the brokerage.
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account to execute the strategy in.
  # @param option_strategy_id Option strategy id obtained from response when creating option strategy object
  # @param options_place_option_strategy_request 
  # @param [Hash] opts the optional parameters
  # @return [StrategyOrderRecord]
  describe 'place_option_strategy test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
