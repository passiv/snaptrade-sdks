=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::AuthenticationApi
describe 'AuthenticationApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::AuthenticationApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of AuthenticationApi' do
    it 'should create an instance of AuthenticationApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::AuthenticationApi)
    end
  end

  # unit tests for delete_snap_trade_user
  # Delete user
  # Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a &#x60;USER_DELETED&#x60; webhook will be sent.
  # @param user_id 
  # @param [Hash] opts the optional parameters
  # @return [DeleteUserResponse]
  describe 'delete_snap_trade_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_snap_trade_users
  # List all users
  # Returns a list of all registered user IDs. Please note that the response is not currently paginated.
  # @param [Hash] opts the optional parameters
  # @return [Array<String>]
  describe 'list_snap_trade_users test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for login_snap_trade_user
  # Generate Connection Portal URL
  # Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.  Please note that the returned URL expires in 5 minutes. 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @option opts [SnapTradeLoginUserRequestBody] :snap_trade_login_user_request_body 
  # @return [AuthenticationLoginSnapTradeUser200Response]
  describe 'login_snap_trade_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for register_snap_trade_user
  # Register user
  # Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system. Most SnapTrade operations require a user ID and user secret to be passed in as parameters. 
  # @param snap_trade_register_user_request_body 
  # @param [Hash] opts the optional parameters
  # @return [UserIDandSecret]
  describe 'register_snap_trade_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for reset_snap_trade_user_secret
  # Rotate user secret
  # Rotates the secret for a SnapTrade user. You might use this if &#x60;userSecret&#x60; is compromised. Please note that if you call this endpoint and fail to save the new secret, you&#39;ll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 
  # @param user_i_dand_secret 
  # @param [Hash] opts the optional parameters
  # @return [UserIDandSecret]
  describe 'reset_snap_trade_user_secret test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
