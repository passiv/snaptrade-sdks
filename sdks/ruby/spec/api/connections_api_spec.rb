=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::ConnectionsApi
describe 'ConnectionsApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::ConnectionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ConnectionsApi' do
    it 'should create an instance of ConnectionsApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::ConnectionsApi)
    end
  end

  # unit tests for detail_brokerage_authorization
  # Get connection detail
  # Returns a single connection for the specified ID.
  # @param authorization_id 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [BrokerageAuthorization]
  describe 'detail_brokerage_authorization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for disable_brokerage_authorization
  # Force disable connection
  # Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a [&#x60;CONNECTION_BROKEN&#x60; webhook](/docs/webhooks#webhooks-connection_broken) for the connection.  This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default. 
  # @param authorization_id 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [BrokerageAuthorizationDisabledConfirmation]
  describe 'disable_brokerage_authorization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_brokerage_authorizations
  # List all connections
  # Returns a list of all connections for the specified user. Note that &#x60;Connection&#x60; and &#x60;Brokerage Authorization&#x60; are interchangeable, but the term &#x60;Connection&#x60; is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [Array<BrokerageAuthorization>]
  describe 'list_brokerage_authorizations test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for refresh_brokerage_authorization
  # Refresh holdings for a connection
  # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [&#x60;ACCOUNT_HOLDINGS_UPDATED&#x60; webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Because of the cost of refreshing a connection, each call to this endpoint incurs a additional charge based on your [Pricing Plan](https://snaptrade.com/pricing)** 
  # @param authorization_id 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [BrokerageAuthorizationRefreshConfirmation]
  describe 'refresh_brokerage_authorization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for remove_brokerage_authorization
  # Delete connection
  # Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
  # @param authorization_id 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'remove_brokerage_authorization test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for return_rates
  # List connection rate of returns
  # Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example \&quot;ALL\&quot;, \&quot;1Y\&quot;, \&quot;6M\&quot;, \&quot;3M\&quot;, \&quot;1M\&quot; 
  # @param user_id 
  # @param user_secret 
  # @param authorization_id 
  # @param [Hash] opts the optional parameters
  # @return [RateOfReturnResponse]
  describe 'return_rates test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for session_events
  # Get all session events for a user
  # Returns a list of session events associated with a user.
  # @param partner_client_id 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :user_id Optional comma separated list of user IDs used to filter the request on specific users
  # @option opts [String] :session_id Optional comma separated list of session IDs used to filter the request on specific users
  # @return [Array<ConnectionsSessionEvents200ResponseInner>]
  describe 'session_events test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
