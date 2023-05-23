=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'spec_helper'
require 'json'
require 'securerandom'
require 'debug'

# Unit tests for SnapTrade::APIStatusApi
describe 'GettingStarted' do
  before do
  end

  after do
    # run after each test
  end

  # integration test for getting started flow
  describe 'getting started flow static pattern' do
    it 'should work' do
      # 1) Setup
      SnapTrade.client_id = ENV["SNAPTRADE_CLIENT_ID"]
      SnapTrade.consumer_key = ENV["SNAPTRADE_CONSUMER_KEY"]

      # 2) Check API Status
      response = SnapTrade::APIStatus.check()
      expect(response).not_to be_nil
      puts response

      # 3) Create a new user
      user_id = SecureRandom.uuid
      response = SnapTrade::Authentication.register_snap_trade_user(user_id: user_id)
      puts response

      # 4) Get a redirect URI
      redirect_uri = SnapTrade::Authentication.login_snap_trade_user(user_id: user_id, user_secret: response.user_secret)
      puts redirect_uri

      SnapTrade::PortfolioManagement.create(
        user_id: user_id,
        user_secret: response.user_secret,
        id: SecureRandom.uuid,
        name: "MyPortfolio"
      )
      portfolios = SnapTrade::PortfolioManagement.list(user_id: user_id, user_secret: response.user_secret)
      puts portfolios

      # 5) Obtaining account holdings data
      holdings = SnapTrade::AccountInformation.get_all_user_holdings(user_id: user_id, user_secret: response.user_secret)
      puts holdings

      # 6) Deleting a user
      deleted_response = SnapTrade::Authentication.delete_snap_trade_user(user_id: user_id)
      puts deleted_response
    end
  end

  describe 'getting started flow instance patern' do
    it 'should work' do
      # 1) Setup
      configuration = SnapTrade::Configuration.new
      configuration.client_id = ENV["SNAPTRADE_CLIENT_ID"]
      configuration.consumer_key = ENV["SNAPTRADE_CONSUMER_KEY"]
      snaptrade = SnapTrade::Client.new(configuration)

      # 2) Check that the client is able to make a request to the API server.
      response = snaptrade.api_status.check()
      expect(response).not_to be_nil
      puts response

      # 3) Create a new user
      user_id = SecureRandom.uuid
      response = snaptrade.authentication.register_snap_trade_user(user_id: user_id)
      puts response

      # 4) Get a redirect URI
      redirect_uri = snaptrade.authentication.login_snap_trade_user(user_id: user_id, user_secret: response.user_secret)
      puts redirect_uri

      snaptrade.portfolio_management.create(user_id: user_id, user_secret: response.user_secret, id: SecureRandom.uuid, name: "MyPortfolio")
      portfolios = snaptrade.portfolio_management.list(user_id: user_id, user_secret: response.user_secret)
      puts portfolios

      # 5) Obtaining account holdings data
      holdings = snaptrade.account_information.get_all_user_holdings(user_id: user_id, user_secret: response.user_secret)
      puts holdings

      # 6) Deleting a user
      deleted_response = snaptrade.authentication.delete_snap_trade_user(user_id: user_id)
      puts deleted_response
    end
  end

end
