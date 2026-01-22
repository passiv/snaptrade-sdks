=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class AccountInformationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # List account activities
    #
    # Returns all historical transactions for the specified account.
    # 
    # This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.
    # 
    # Transaction are returned in reverse chronological order, using the `trade_date` field.
    # 
    # The data returned here is always cached and refreshed once a day.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param start_date [Date] The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @param end_date [Date] The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @param offset [Integer] An integer that specifies the starting point of the paginated results. Default is 0.
    # @param limit [Integer] An integer that specifies the maximum number of transactions to return. Default of 1000.
    # @param type [String] Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values: - `BUY` - Asset bought. - `SELL` - Asset sold. - `DIVIDEND` - Dividend payout. - `CONTRIBUTION` - Cash contribution. - `WITHDRAWAL` - Cash withdrawal. - `REI` - Dividend reinvestment. - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash - `INTEREST` - Interest deposited into the account. - `FEE` - Fee withdrawn from the account. - `TAX` - A tax related fee. - `OPTIONEXPIRATION` - Option expiration event. - `OPTIONASSIGNMENT` - Option assignment event. - `OPTIONEXERCISE` - Option exercise event. - `TRANSFER` - Transfer of assets from one account to another. - `SPLIT` - A stock share split. 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_account_activities(account_id:, user_id:, user_secret:, start_date: SENTINEL, end_date: SENTINEL, offset: SENTINEL, limit: SENTINEL, type: SENTINEL, extra: {})
      extra[:start_date] = start_date if start_date != SENTINEL
      extra[:end_date] = end_date if end_date != SENTINEL
      extra[:offset] = offset if offset != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:type] = type if type != SENTINEL
      data, _status_code, _headers = get_account_activities_with_http_info_impl(account_id, user_id, user_secret, extra)
      data
    end

    # List account activities
    #
    # Returns all historical transactions for the specified account.
    # 
    # This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.
    # 
    # Transaction are returned in reverse chronological order, using the `trade_date` field.
    # 
    # The data returned here is always cached and refreshed once a day.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param start_date [Date] The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @param end_date [Date] The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @param offset [Integer] An integer that specifies the starting point of the paginated results. Default is 0.
    # @param limit [Integer] An integer that specifies the maximum number of transactions to return. Default of 1000.
    # @param type [String] Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values: - `BUY` - Asset bought. - `SELL` - Asset sold. - `DIVIDEND` - Dividend payout. - `CONTRIBUTION` - Cash contribution. - `WITHDRAWAL` - Cash withdrawal. - `REI` - Dividend reinvestment. - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash - `INTEREST` - Interest deposited into the account. - `FEE` - Fee withdrawn from the account. - `TAX` - A tax related fee. - `OPTIONEXPIRATION` - Option expiration event. - `OPTIONASSIGNMENT` - Option assignment event. - `OPTIONEXERCISE` - Option exercise event. - `TRANSFER` - Transfer of assets from one account to another. - `SPLIT` - A stock share split. 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_account_activities_with_http_info(account_id:, user_id:, user_secret:, start_date: SENTINEL, end_date: SENTINEL, offset: SENTINEL, limit: SENTINEL, type: SENTINEL, extra: {})
      extra[:start_date] = start_date if start_date != SENTINEL
      extra[:end_date] = end_date if end_date != SENTINEL
      extra[:offset] = offset if offset != SENTINEL
      extra[:limit] = limit if limit != SENTINEL
      extra[:type] = type if type != SENTINEL
      get_account_activities_with_http_info_impl(account_id, user_id, user_secret, extra)
    end

    # List account activities
    # Returns all historical transactions for the specified account.  This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.  Transaction are returned in reverse chronological order, using the `trade_date` field.  The data returned here is always cached and refreshed once a day.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @option opts [Date] :end_date The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @option opts [Integer] :offset An integer that specifies the starting point of the paginated results. Default is 0.
    # @option opts [Integer] :limit An integer that specifies the maximum number of transactions to return. Default of 1000.
    # @option opts [String] :type Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `TAX` - A tax related fee.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another.   - `SPLIT` - A stock share split. 
    # @return [PaginatedUniversalActivity]
    private def get_account_activities_impl(account_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = get_account_activities_with_http_info(account_id, user_id, user_secret, opts)
      data
    end

    # List account activities
    # Returns all historical transactions for the specified account.  This endpoint is paginated with a default page size of 1000. The endpoint will return a maximum of 1000 transactions per request. See the query parameters for pagination options.  Transaction are returned in reverse chronological order, using the &#x60;trade_date&#x60; field.  The data returned here is always cached and refreshed once a day.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Date] :start_date The start date (inclusive) of the transaction history to retrieve. If not provided, the default is the first transaction known to SnapTrade based on `trade_date`.
    # @option opts [Date] :end_date The end date (inclusive) of the transaction history to retrieve. If not provided, the default is the last transaction known to SnapTrade based on `trade_date`.
    # @option opts [Integer] :offset An integer that specifies the starting point of the paginated results. Default is 0.
    # @option opts [Integer] :limit An integer that specifies the maximum number of transactions to return. Default of 1000.
    # @option opts [String] :type Optional comma separated list of transaction types to filter by. SnapTrade does a best effort to categorize brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `STOCK_DIVIDEND` - A type of dividend where a company distributes shares instead of cash   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `TAX` - A tax related fee.   - `OPTIONEXPIRATION` - Option expiration event.   - `OPTIONASSIGNMENT` - Option assignment event.   - `OPTIONEXERCISE` - Option exercise event.   - `TRANSFER` - Transfer of assets from one account to another.   - `SPLIT` - A stock share split. 
    # @return [Array<(PaginatedUniversalActivity, Integer, Hash)>] PaginatedUniversalActivity data, response status code and response headers
    private def get_account_activities_with_http_info_impl(account_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_account_activities ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_account_activities"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_account_activities"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_account_activities"
      end
      if @api_client.config.client_side_validation && !opts[:'offset'].nil? && opts[:'offset'] < 0
        fail ArgumentError, 'invalid value for "opts[:"offset"]" when calling AccountInformationApi.get_account_activities, must be greater than or equal to 0.'
      end

      if @api_client.config.client_side_validation && !opts[:'limit'].nil? && opts[:'limit'] < 1
        fail ArgumentError, 'invalid value for "opts[:"limit"]" when calling AccountInformationApi.get_account_activities, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/accounts/{accountId}/activities'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'startDate'] = opts[:'start_date'] if !opts[:'start_date'].nil?
      query_params[:'endDate'] = opts[:'end_date'] if !opts[:'end_date'].nil?
      query_params[:'offset'] = opts[:'offset'] if !opts[:'offset'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
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
      return_type = opts[:debug_return_type] || 'PaginatedUniversalActivity'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_account_activities",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_account_activities\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List all accounts for the user, plus balances, positions, and orders for each account.
    #
    # **Deprecated, please use the account-specific holdings endpoint instead.**
    # 
    # List all accounts for the user, plus balances, positions, and orders for each
    # account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param brokerage_authorizations [String] Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_user_holdings(user_id:, user_secret:, brokerage_authorizations: SENTINEL, extra: {})
      extra[:brokerage_authorizations] = brokerage_authorizations if brokerage_authorizations != SENTINEL
      data, _status_code, _headers = get_all_user_holdings_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # List all accounts for the user, plus balances, positions, and orders for each account.
    #
    # **Deprecated, please use the account-specific holdings endpoint instead.**
    # 
    # List all accounts for the user, plus balances, positions, and orders for each
    # account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param brokerage_authorizations [String] Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_all_user_holdings_with_http_info(user_id:, user_secret:, brokerage_authorizations: SENTINEL, extra: {})
      extra[:brokerage_authorizations] = brokerage_authorizations if brokerage_authorizations != SENTINEL
      get_all_user_holdings_with_http_info_impl(user_id, user_secret, extra)
    end

    # List all accounts for the user, plus balances, positions, and orders for each account.
    # **Deprecated, please use the account-specific holdings endpoint instead.**  List all accounts for the user, plus balances, positions, and orders for each account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage_authorizations Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).
    # @return [Array<AccountHoldings>]
    private def get_all_user_holdings_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = get_all_user_holdings_with_http_info(user_id, user_secret, opts)
      data
    end

    # List all accounts for the user, plus balances, positions, and orders for each account.
    # **Deprecated, please use the account-specific holdings endpoint instead.**  List all accounts for the user, plus balances, positions, and orders for each account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage_authorizations Optional. Comma separated list of authorization IDs (only use if filtering is needed on one or more authorizations).
    # @return [Array<(Array<AccountHoldings>, Integer, Hash)>] Array<AccountHoldings> data, response status code and response headers
    private def get_all_user_holdings_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_all_user_holdings ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_all_user_holdings"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_all_user_holdings"
      end
      # resource path
      local_var_path = '/holdings'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'brokerage_authorizations'] = opts[:'brokerage_authorizations'] if !opts[:'brokerage_authorizations'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AccountHoldings>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_all_user_holdings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_all_user_holdings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account balances
    #
    # Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_balance(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = get_user_account_balance_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account balances
    #
    # Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_balance_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      get_user_account_balance_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account balances
    # Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<Balance>]
    private def get_user_account_balance_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_balance_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account balances
    # Returns a list of balances for the account. Each element of the list has a distinct currency. Some brokerages like Questrade [allows holding multiple currencies in the same account](https://www.questrade.com/learning/questrade-basics/balances-and-reports/understanding-your-account-balances).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Balance>, Integer, Hash)>] Array<Balance> data, response status code and response headers
    private def get_user_account_balance_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_balance ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_balance"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_balance"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_balance"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/balances'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Balance>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_balance",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_balance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get account detail
    #
    # Returns account detail known to SnapTrade for the specified account.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_details(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = get_user_account_details_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # Get account detail
    #
    # Returns account detail known to SnapTrade for the specified account.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_details_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      get_user_account_details_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # Get account detail
    # Returns account detail known to SnapTrade for the specified account.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Account]
    private def get_user_account_details_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_details_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # Get account detail
    # Returns account detail known to SnapTrade for the specified account.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Account, Integer, Hash)>] Account data, response status code and response headers
    private def get_user_account_details_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_details ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_details"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_details"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_details"
      end
      # resource path
      local_var_path = '/accounts/{accountId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Account'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_details",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_details\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get account order detail
    #
    # Returns the detail of a single order using the external order ID provided in the request body.
    # 
    # This endpoint only works for single-leg orders at this time. Support for multi-leg orders will be added in the future.
    # 
    # This endpoint is always realtime and does not rely on cached data.
    # 
    # This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.
    #
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param body [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_order_detail(brokerage_order_id:, account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      account_information_get_user_account_order_detail_request = _body
      data, _status_code, _headers = get_user_account_order_detail_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, extra)
      data
    end

    # Get account order detail
    #
    # Returns the detail of a single order using the external order ID provided in the request body.
    # 
    # This endpoint only works for single-leg orders at this time. Support for multi-leg orders will be added in the future.
    # 
    # This endpoint is always realtime and does not rely on cached data.
    # 
    # This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.
    #
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param body [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_order_detail_with_http_info(brokerage_order_id:, account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      account_information_get_user_account_order_detail_request = _body
      get_user_account_order_detail_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, extra)
    end

    # Get account order detail
    # Returns the detail of a single order using the external order ID provided in the request body.  This endpoint only works for single-leg orders at this time. Support for multi-leg orders will be added in the future.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_information_get_user_account_order_detail_request [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def get_user_account_order_detail_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts = {})
      data, _status_code, _headers = get_user_account_order_detail_with_http_info(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts)
      data
    end

    # Get account order detail
    # Returns the detail of a single order using the external order ID provided in the request body.  This endpoint only works for single-leg orders at this time. Support for multi-leg orders will be added in the future.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_information_get_user_account_order_detail_request [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def get_user_account_order_detail_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_order_detail ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_order_detail"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_order_detail"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_order_detail"
      end
      # verify the required parameter 'account_information_get_user_account_order_detail_request' is set
      if @api_client.config.client_side_validation && account_information_get_user_account_order_detail_request.nil?
        fail ArgumentError, "Missing the required parameter 'account_information_get_user_account_order_detail_request' when calling AccountInformationApi.get_user_account_order_detail"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/orders/details'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(account_information_get_user_account_order_detail_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_order_detail",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_order_detail\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account orders
    #
    # Returns a list of recent orders in the specified account.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param state [String] defaults value is set to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_orders(user_id:, user_secret:, account_id:, state: SENTINEL, days: SENTINEL, extra: {})
      extra[:state] = state if state != SENTINEL
      extra[:days] = days if days != SENTINEL
      data, _status_code, _headers = get_user_account_orders_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account orders
    #
    # Returns a list of recent orders in the specified account.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param state [String] defaults value is set to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_orders_with_http_info(user_id:, user_secret:, account_id:, state: SENTINEL, days: SENTINEL, extra: {})
      extra[:state] = state if state != SENTINEL
      extra[:days] = days if days != SENTINEL
      get_user_account_orders_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account orders
    # Returns a list of recent orders in the specified account.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state defaults value is set to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @return [Array<AccountOrderRecord>]
    private def get_user_account_orders_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_orders_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account orders
    # Returns a list of recent orders in the specified account.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state defaults value is set to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @return [Array<(Array<AccountOrderRecord>, Integer, Hash)>] Array<AccountOrderRecord> data, response status code and response headers
    private def get_user_account_orders_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_orders ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_orders"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_orders"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_orders"
      end
      allowable_values = ["all", "open", "executed"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'days'].nil? && opts[:'days'] < 1
        fail ArgumentError, 'invalid value for "opts[:"days"]" when calling AccountInformationApi.get_user_account_orders, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/accounts/{accountId}/orders'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'state'] = opts[:'state'] if !opts[:'state'].nil?
      query_params[:'days'] = opts[:'days'] if !opts[:'days'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<AccountOrderRecord>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account positions
    #
    # Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_positions(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = get_user_account_positions_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account positions
    #
    # Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_positions_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      get_user_account_positions_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account positions
    # Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<Position>]
    private def get_user_account_positions_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_positions_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account positions
    # Returns a list of stock/ETF/crypto/mutual fund positions in the specified account. For option positions, please use the [options endpoint](/reference/Options/Options_listOptionHoldings).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Position>, Integer, Hash)>] Array<Position> data, response status code and response headers
    private def get_user_account_positions_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_positions ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_positions"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_positions"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_positions"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/positions'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Position>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_positions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_positions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account recent orders (last 24 hours only)
    #
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account.
    # This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
    # Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days
    # By default only returns executed orders, but that can be changed by setting *only_executed* to false
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param only_executed [Boolean] Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_recent_orders(user_id:, user_secret:, account_id:, only_executed: SENTINEL, extra: {})
      extra[:only_executed] = only_executed if only_executed != SENTINEL
      data, _status_code, _headers = get_user_account_recent_orders_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account recent orders (last 24 hours only)
    #
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account.
    # This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders
    # Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days
    # By default only returns executed orders, but that can be changed by setting *only_executed* to false
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param only_executed [Boolean] Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_recent_orders_with_http_info(user_id:, user_secret:, account_id:, only_executed: SENTINEL, extra: {})
      extra[:only_executed] = only_executed if only_executed != SENTINEL
      get_user_account_recent_orders_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account recent orders (last 24 hours only)
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days By default only returns executed orders, but that can be changed by setting *only_executed* to false 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :only_executed Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @return [RecentOrdersResponse]
    private def get_user_account_recent_orders_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_recent_orders_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account recent orders (last 24 hours only)
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days By default only returns executed orders, but that can be changed by setting *only_executed* to false 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :only_executed Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @return [Array<(RecentOrdersResponse, Integer, Hash)>] RecentOrdersResponse data, response status code and response headers
    private def get_user_account_recent_orders_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_recent_orders ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_recent_orders"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_recent_orders"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_recent_orders"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/recentOrders'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'only_executed'] = opts[:'only_executed'] if !opts[:'only_executed'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RecentOrdersResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_recent_orders",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_recent_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account rate of returns
    #
    # Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_return_rates(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = get_user_account_return_rates_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account rate of returns
    #
    # Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_return_rates_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      get_user_account_return_rates_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account rate of returns
    # Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example \"ALL\", \"1Y\", \"6M\", \"3M\", \"1M\" 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [RateOfReturnResponse]
    private def get_user_account_return_rates_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_return_rates_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account rate of returns
    # Returns a list of rate of return percents for a given account. Will include timeframes available from the brokerage, for example \&quot;ALL\&quot;, \&quot;1Y\&quot;, \&quot;6M\&quot;, \&quot;3M\&quot;, \&quot;1M\&quot; 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RateOfReturnResponse, Integer, Hash)>] RateOfReturnResponse data, response status code and response headers
    private def get_user_account_return_rates_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_account_return_rates ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_account_return_rates"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_account_return_rates"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_account_return_rates"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/returnRates'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'RateOfReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_account_return_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_account_return_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account holdings
    #
    # Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_holdings(account_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = get_user_holdings_with_http_info_impl(account_id, user_id, user_secret, extra)
      data
    end

    # List account holdings
    #
    # Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_holdings_with_http_info(account_id:, user_id:, user_secret:, extra: {})
      get_user_holdings_with_http_info_impl(account_id, user_id, user_secret, extra)
    end

    # List account holdings
    # Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [AccountHoldingsAccount]
    private def get_user_holdings_impl(account_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = get_user_holdings_with_http_info(account_id, user_id, user_secret, opts)
      data
    end

    # List account holdings
    # Returns a list of balances, positions, and recent orders for the specified account. The data returned is similar to the data returned over the more fine-grained [balances](/reference/Account%20Information/AccountInformation_getUserAccountBalance), [positions](/reference/Account%20Information/AccountInformation_getUserAccountPositions) and [orders](/reference/Account%20Information/AccountInformation_getUserAccountOrders) endpoints. __The finer-grained APIs are preferred. They are easier to work with, faster, and have better error handling than this coarse-grained API.__  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountHoldingsAccount, Integer, Hash)>] AccountHoldingsAccount data, response status code and response headers
    private def get_user_holdings_with_http_info_impl(account_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.get_user_holdings ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.get_user_holdings"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.get_user_holdings"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.get_user_holdings"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/holdings'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'AccountHoldingsAccount'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.get_user_holdings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#get_user_holdings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List accounts
    #
    # Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_user_accounts(user_id:, user_secret:, extra: {})
      data, _status_code, _headers = list_user_accounts_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # List accounts
    #
    # Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:
    #   - If you do, this endpoint returns real-time data.
    #   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_user_accounts_with_http_info(user_id:, user_secret:, extra: {})
      list_user_accounts_with_http_info_impl(user_id, user_secret, extra)
    end

    # List accounts
    # Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don't, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<Account>]
    private def list_user_accounts_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = list_user_accounts_with_http_info(user_id, user_secret, opts)
      data
    end

    # List accounts
    # Returns all brokerage accounts across all connections known to SnapTrade for the authenticated user.  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see if you have real-time data access:   - If you do, this endpoint returns real-time data.   - If you don&#39;t, the data is cached and refreshed once a day. If you need real-time, use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Account>, Integer, Hash)>] Array<Account> data, response status code and response headers
    private def list_user_accounts_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.list_user_accounts ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.list_user_accounts"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.list_user_accounts"
      end
      # resource path
      local_var_path = '/accounts'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Account>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.list_user_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#list_user_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Update details of an investment account
    #
    # Updates various properties of a specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to update.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_user_account(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = update_user_account_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # Update details of an investment account
    #
    # Updates various properties of a specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to update.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_user_account_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      update_user_account_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # Update details of an investment account
    # Updates various properties of a specified account.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<Account>]
    private def update_user_account_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = update_user_account_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # Update details of an investment account
    # Updates various properties of a specified account.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to update.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Account>, Integer, Hash)>] Array<Account> data, response status code and response headers
    private def update_user_account_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AccountInformationApi.update_user_account ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AccountInformationApi.update_user_account"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AccountInformationApi.update_user_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling AccountInformationApi.update_user_account"
      end
      # resource path
      local_var_path = '/accounts/{accountId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<Account>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AccountInformationApi.update_user_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AccountInformationApi#update_user_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  AccountInformation = AccountInformationApi::new
end
