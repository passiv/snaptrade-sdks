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
  describe 'getting started flow static patern' do
    it 'should work' do
      # 1) Setup
      SnapTrade.client_id = ENV["SNAPTRADE_CLIENT_ID"]
      SnapTrade.consumer_key = ENV["SNAPTRADE_CONSUMER_KEY"]

      # 2)
      response = SnapTrade::APIStatus.check()
      expect(response).not_to be_nil
      puts response

      # 3) Create a new user
      uuid = SecureRandom.uuid
      body = SnapTrade::SnapTradeRegisterUserRequestBody.new
      body.user_id = uuid
      response = SnapTrade::Authentication.register_snap_trade_user(body)
      puts response
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

      # 3) Create a new user on SnapTrade
      # 4) Get a redirect URI. Users will need this to connect their brokerage to the SnapTrade server.
      # 5) Obtaining account holdings data
      # 6) Deleting a user
    end
  end

end
