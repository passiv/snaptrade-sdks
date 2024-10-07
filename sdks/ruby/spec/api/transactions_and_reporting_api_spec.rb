=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'spec_helper'
require 'json'

# Unit tests for SnapTrade::TransactionsAndReportingApi
describe 'TransactionsAndReportingApi' do
  before do
    # run before each test
    @api_instance = SnapTrade::TransactionsAndReportingApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of TransactionsAndReportingApi' do
    it 'should create an instance of TransactionsAndReportingApi' do
      expect(@api_instance).to be_instance_of(SnapTrade::TransactionsAndReportingApi)
    end
  end

  # unit tests for get_activities
  # Get transaction history for a user
  # Returns all historical transactions for the specified user and filtering criteria. It&#39;s recommended to use &#x60;startDate&#x60; and &#x60;endDate&#x60; to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There&#39;s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the &#x60;trade_date&#x60; field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @option opts [Date] :start_date The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on &#x60;trade_date&#x60;.
  # @option opts [Date] :end_date The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on &#x60;trade_date&#x60;.
  # @option opts [String] :accounts Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The &#x60;brokerageAuthorizations&#x60; parameter takes precedence over this parameter.
  # @option opts [String] :brokerage_authorizations Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the &#x60;accounts&#x60; parameter.
  # @option opts [String] :type Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - &#x60;BUY&#x60; - Asset bought.   - &#x60;SELL&#x60; - Asset sold.   - &#x60;DIVIDEND&#x60; - Dividend payout.   - &#x60;CONTRIBUTION&#x60; - Cash contribution.   - &#x60;WITHDRAWAL&#x60; - Cash withdrawal.   - &#x60;REI&#x60; - Dividend reinvestment.   - &#x60;INTEREST&#x60; - Interest deposited into the account.   - &#x60;FEE&#x60; - Fee withdrawn from the account.   - &#x60;OPTIONEXPIRATION&#x60; - Option expiration event.   - &#x60;OPTIONASSIGNMENT&#x60; - Option assignment event.   - &#x60;OPTIONEXERCISE&#x60; - Option exercise event. 
  # @return [Array<UniversalActivity>]
  describe 'get_activities test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_reporting_custom_range
  # Get performance information for a specific timeframe
  # Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
  # @param start_date 
  # @param end_date 
  # @param user_id 
  # @param user_secret 
  # @param [Hash] opts the optional parameters
  # @option opts [String] :accounts Optional comma separated list of account IDs used to filter the request on specific accounts
  # @option opts [Boolean] :detailed Optional, increases frequency of data points for the total value and contribution charts if set to true
  # @option opts [String] :frequency Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
  # @return [PerformanceCustom]
  describe 'get_reporting_custom_range test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
