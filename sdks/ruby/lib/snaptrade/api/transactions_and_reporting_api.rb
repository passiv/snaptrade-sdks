=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class TransactionsAndReportingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get transaction history for a user
    #
    # This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible
    # 
    # Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.
    # 
    # There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.
    # 
    # The data returned here is always cached and refreshed once a day.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param start_date [Date] The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @param end_date [Date] The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @param accounts [String] Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    # @param brokerage_authorizations [String] Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    # @param type [String] Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values: - `BUY` - Asset bought. - `SELL` - Asset sold. - `DIVIDEND` - Dividend payout. - `CONTRIBUTION` - Cash contribution. - `WITHDRAWAL` - Cash withdrawal. - `REI` - Dividend reinvestment. - `INTEREST` - Interest deposited into the account. - `FEE` - Fee withdrawn from the account. - `OPTIONEXPIRATION` - Option expiration event. - `OPTIONASSIGNMENT` - Option assignment event. - `OPTIONEXERCISE` - Option exercise event. - `TRANSFER` - Transfer of assets from one account to another 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_activities(user_id:, user_secret:, start_date: SENTINEL, end_date: SENTINEL, accounts: SENTINEL, brokerage_authorizations: SENTINEL, type: SENTINEL, extra: {})
      extra[:start_date] = start_date if start_date != SENTINEL
      extra[:end_date] = end_date if end_date != SENTINEL
      extra[:accounts] = accounts if accounts != SENTINEL
      extra[:brokerage_authorizations] = brokerage_authorizations if brokerage_authorizations != SENTINEL
      extra[:type] = type if type != SENTINEL
      data, _status_code, _headers = get_activities_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # Get transaction history for a user
    #
    # This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible
    # 
    # Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.
    # 
    # There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.
    # 
    # The data returned here is always cached and refreshed once a day.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param start_date [Date] The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @param end_date [Date] The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @param accounts [String] Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    # @param brokerage_authorizations [String] Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    # @param type [String] Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values: - `BUY` - Asset bought. - `SELL` - Asset sold. - `DIVIDEND` - Dividend payout. - `CONTRIBUTION` - Cash contribution. - `WITHDRAWAL` - Cash withdrawal. - `REI` - Dividend reinvestment. - `INTEREST` - Interest deposited into the account. - `FEE` - Fee withdrawn from the account. - `OPTIONEXPIRATION` - Option expiration event. - `OPTIONASSIGNMENT` - Option assignment event. - `OPTIONEXERCISE` - Option exercise event. - `TRANSFER` - Transfer of assets from one account to another 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_activities_with_http_info(user_id:, user_secret:, start_date: SENTINEL, end_date: SENTINEL, accounts: SENTINEL, brokerage_authorizations: SENTINEL, type: SENTINEL, extra: {})
      extra[:start_date] = start_date if start_date != SENTINEL
      extra[:end_date] = end_date if end_date != SENTINEL
      extra[:accounts] = accounts if accounts != SENTINEL
      extra[:brokerage_authorizations] = brokerage_authorizations if brokerage_authorizations != SENTINEL
      extra[:type] = type if type != SENTINEL
      get_activities_with_http_info_impl(user_id, user_secret, extra)
    end

    # Get transaction history for a user
    # This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible  Returns all historical transactions for the specified user and filtering criteria. It's recommended to use `startDate` and `endDate` to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There's a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the `trade_date` field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @option opts [Date] :end_date The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @option opts [String] :accounts Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    # @option opts [String] :brokerage_authorizations Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    # @option opts [String] :type Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 
    # @return [Array<UniversalActivity>]
    private def get_activities_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = get_activities_with_http_info(user_id, user_secret, opts)
      data
    end

    # Get transaction history for a user
    # This endpoint is being deprecated but will continue to be available for use via SDKs, please use [the account level endpoint](/reference/Account%20Information/AccountInformation_getAccountActivities) if possible  Returns all historical transactions for the specified user and filtering criteria. It&#39;s recommended to use &#x60;startDate&#x60; and &#x60;endDate&#x60; to paginate through the data, as the response may be very large for accounts with a long history and/or a lot of activity. There&#39;s a max number of 10000 transactions returned per request.  There is no guarantee to the ordering of the transactions returned. Please sort the transactions based on the &#x60;trade_date&#x60; field if you need them in a specific order.  The data returned here is always cached and refreshed once a day. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @option opts [Date] :end_date The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @option opts [String] :accounts Optional comma separated list of SnapTrade Account IDs used to filter the request to specific accounts. If not provided, the default is all known brokerage accounts for the user. The `brokerageAuthorizations` parameter takes precedence over this parameter.
    # @option opts [String] :brokerage_authorizations Optional comma separated list of SnapTrade Connection (Brokerage Authorization) IDs used to filter the request to only accounts that belong to those connections. If not provided, the default is all connections for the user. This parameter takes precedence over the `accounts` parameter.
    # @option opts [String] :type Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another 
    # @return [Array<(Array<UniversalActivity>, Integer, Hash)>] Array<UniversalActivity> data, response status code and response headers
    private def get_activities_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsAndReportingApi.get_activities ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TransactionsAndReportingApi.get_activities"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TransactionsAndReportingApi.get_activities"
      end
      # resource path
      local_var_path = '/activities'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'accounts'] = opts[:'accounts'] if !opts[:'accounts'].nil?
      query_params[:'brokerageAuthorizations'] = opts[:'brokerage_authorizations'] if !opts[:'brokerage_authorizations'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<UniversalActivity>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TransactionsAndReportingApi.get_activities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsAndReportingApi#get_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get performance information for a specific timeframe
    #
    # Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
    #
    # @param start_date [Date] 
    # @param end_date [Date] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param accounts [String] Optional comma separated list of account IDs used to filter the request on specific accounts
    # @param detailed [Boolean] Optional, increases frequency of data points for the total value and contribution charts if set to true
    # @param frequency [String] Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_reporting_custom_range(start_date:, end_date:, user_id:, user_secret:, accounts: SENTINEL, detailed: SENTINEL, frequency: SENTINEL, extra: {})
      extra[:accounts] = accounts if accounts != SENTINEL
      extra[:detailed] = detailed if detailed != SENTINEL
      extra[:frequency] = frequency if frequency != SENTINEL
      data, _status_code, _headers = get_reporting_custom_range_with_http_info_impl(start_date, end_date, user_id, user_secret, extra)
      data
    end

    # Get performance information for a specific timeframe
    #
    # Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
    #
    # @param start_date [Date] 
    # @param end_date [Date] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param accounts [String] Optional comma separated list of account IDs used to filter the request on specific accounts
    # @param detailed [Boolean] Optional, increases frequency of data points for the total value and contribution charts if set to true
    # @param frequency [String] Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_reporting_custom_range_with_http_info(start_date:, end_date:, user_id:, user_secret:, accounts: SENTINEL, detailed: SENTINEL, frequency: SENTINEL, extra: {})
      extra[:accounts] = accounts if accounts != SENTINEL
      extra[:detailed] = detailed if detailed != SENTINEL
      extra[:frequency] = frequency if frequency != SENTINEL
      get_reporting_custom_range_with_http_info_impl(start_date, end_date, user_id, user_secret, extra)
    end

    # Get performance information for a specific timeframe
    # Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
    # @param start_date [Date] 
    # @param end_date [Date] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accounts Optional comma separated list of account IDs used to filter the request on specific accounts
    # @option opts [Boolean] :detailed Optional, increases frequency of data points for the total value and contribution charts if set to true
    # @option opts [String] :frequency Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    # @return [PerformanceCustom]
    private def get_reporting_custom_range_impl(start_date, end_date, user_id, user_secret, opts = {})
      data, _status_code, _headers = get_reporting_custom_range_with_http_info(start_date, end_date, user_id, user_secret, opts)
      data
    end

    # Get performance information for a specific timeframe
    # Returns performance information (contributions, dividends, rate of return, etc) for a specific timeframe. Please note that Total Equity Timeframe and Rate of Returns are experimental features. Please contact support@snaptrade.com if you notice any inconsistencies.
    # @param start_date [Date] 
    # @param end_date [Date] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :accounts Optional comma separated list of account IDs used to filter the request on specific accounts
    # @option opts [Boolean] :detailed Optional, increases frequency of data points for the total value and contribution charts if set to true
    # @option opts [String] :frequency Optional frequency for the rate of return chart (defaults to monthly). Possible values are daily, weekly, monthly, quarterly, yearly.
    # @return [Array<(PerformanceCustom, Integer, Hash)>] PerformanceCustom data, response status code and response headers
    private def get_reporting_custom_range_with_http_info_impl(start_date, end_date, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TransactionsAndReportingApi.get_reporting_custom_range ...'
      end
      # verify the required parameter 'start_date' is set
      if @api_client.config.client_side_validation && start_date.nil?
        fail ArgumentError, "Missing the required parameter 'start_date' when calling TransactionsAndReportingApi.get_reporting_custom_range"
      end
      # verify the required parameter 'end_date' is set
      if @api_client.config.client_side_validation && end_date.nil?
        fail ArgumentError, "Missing the required parameter 'end_date' when calling TransactionsAndReportingApi.get_reporting_custom_range"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TransactionsAndReportingApi.get_reporting_custom_range"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TransactionsAndReportingApi.get_reporting_custom_range"
      end
      # resource path
      local_var_path = '/performance/custom'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'startDate'] = start_date
      query_params[:'endDate'] = end_date
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'accounts'] = opts[:'accounts'] if !opts[:'accounts'].nil?
      query_params[:'detailed'] = opts[:'detailed'] if !opts[:'detailed'].nil?
      query_params[:'frequency'] = opts[:'frequency'] if !opts[:'frequency'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PerformanceCustom'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TransactionsAndReportingApi.get_reporting_custom_range",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TransactionsAndReportingApi#get_reporting_custom_range\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  TransactionsAndReporting = TransactionsAndReportingApi::new
end
