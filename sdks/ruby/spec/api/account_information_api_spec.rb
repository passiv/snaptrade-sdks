=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::AccountInformationApi
describe 'AccountInformationApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::AccountInformationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AccountInformationApi' do
    it 'should create an instance of AccountInformationApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::AccountInformationApi)
    end
  end

  # unit tests for get_all_user_holdings
  # List all accounts for the user, plus balances and positions for each account.
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :brokerage_authorizations Optional. Comma seperated list of authorization IDs (only use if filtering is needed on one or more authorizations).
  # @return [Array<AccountHoldings>]
  describe 'get_all_user_holdings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_balance
  # Get all cash balances of an investment account
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account get positions.
  # @param [Hash] opts the optional parameters
  # @return [Array<Balance>]
  describe 'get_user_account_balance test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_details
  # Return details of a specific investment account
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account to get detail of.
  # @param [Hash] opts the optional parameters
  # @return [Array<Account>]
  describe 'get_user_account_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_orders
  # Get all history of orders placed in account
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account get positions.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :state defaults value is set to \&quot;all\&quot;
  # @return [Array<AccountOrderRecord>]
  describe 'get_user_account_orders test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_account_positions
  # Get all positions of an investment account
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account get positions.
  # @param [Hash] opts the optional parameters
  # @return [Array<Position>]
  describe 'get_user_account_positions test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_user_holdings
  # List balances, positions and orders for the specified account.
  # @param account_id The ID of the account to fetch holdings for.
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [AccountHoldingsAccount]
  describe 'get_user_holdings test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_user_accounts
  # List all investment accounts for the user
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [Array<Account>]
  describe 'list_user_accounts test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_user_account
  # Update details of an investment account
  # @param user_id 
  # @param user_secret 
  # @param account_id The ID of the account to update.
  # @param [Hash] opts the optional parameters
  # @return [Array<Account>]
  describe 'update_user_account test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end