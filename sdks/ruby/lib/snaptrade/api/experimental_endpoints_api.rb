=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class ExperimentalEndpointsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get account order detail (V2)
    #
    # Returns the detail of a single order using the external order ID provided in the request body.
    # 
    # The V2 order response format includes all legs of the order in the `legs` list field.
    # If the order is single legged, `legs` will be a list of one leg.
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
    def get_user_account_order_detail_v2(brokerage_order_id:, account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      account_information_get_user_account_order_detail_request = _body
      data, _status_code, _headers = get_user_account_order_detail_v2_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, extra)
      data
    end

    # Get account order detail (V2)
    #
    # Returns the detail of a single order using the external order ID provided in the request body.
    # 
    # The V2 order response format includes all legs of the order in the `legs` list field.
    # If the order is single legged, `legs` will be a list of one leg.
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
    def get_user_account_order_detail_v2_with_http_info(brokerage_order_id:, account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      account_information_get_user_account_order_detail_request = _body
      get_user_account_order_detail_v2_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, extra)
    end

    # Get account order detail (V2)
    # Returns the detail of a single order using the external order ID provided in the request body.  The V2 order response format includes all legs of the order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_information_get_user_account_order_detail_request [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecordV2]
    private def get_user_account_order_detail_v2_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts = {})
      data, _status_code, _headers = get_user_account_order_detail_v2_with_http_info(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts)
      data
    end

    # Get account order detail (V2)
    # Returns the detail of a single order using the external order ID provided in the request body.  The V2 order response format includes all legs of the order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_information_get_user_account_order_detail_request [AccountInformationGetUserAccountOrderDetailRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecordV2, Integer, Hash)>] AccountOrderRecordV2 data, response status code and response headers
    private def get_user_account_order_detail_v2_with_http_info_impl(account_id, user_id, user_secret, account_information_get_user_account_order_detail_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.get_user_account_order_detail_v2 ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'account_information_get_user_account_order_detail_request' is set
      if @api_client.config.client_side_validation && account_information_get_user_account_order_detail_request.nil?
        fail ArgumentError, "Missing the required parameter 'account_information_get_user_account_order_detail_request' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/orders/details/v2'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AccountOrderRecordV2'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.get_user_account_order_detail_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#get_user_account_order_detail_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account orders v2
    #
    # Returns a list of recent orders in the specified account.
    # 
    # The V2 order response format will include all legs of each order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param state [String] defaults value is set to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_orders_v2(user_id:, user_secret:, account_id:, state: SENTINEL, days: SENTINEL, extra: {})
      extra[:state] = state if state != SENTINEL
      extra[:days] = days if days != SENTINEL
      data, _status_code, _headers = get_user_account_orders_v2_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account orders v2
    #
    # Returns a list of recent orders in the specified account.
    # 
    # The V2 order response format will include all legs of each order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.
    # 
    # If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param state [String] defaults value is set to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_orders_v2_with_http_info(user_id:, user_secret:, account_id:, state: SENTINEL, days: SENTINEL, extra: {})
      extra[:state] = state if state != SENTINEL
      extra[:days] = days if days != SENTINEL
      get_user_account_orders_v2_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account orders v2
    # Returns a list of recent orders in the specified account.  The V2 order response format will include all legs of each order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state defaults value is set to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @return [AccountOrdersV2Response]
    private def get_user_account_orders_v2_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_orders_v2_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account orders v2
    # Returns a list of recent orders in the specified account.  The V2 order response format will include all legs of each order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  If the connection has become disabled, it can no longer access the latest data from the brokerage, but will continue to return the last available cached state. Please see [this guide](/docs/fix-broken-connections) on how to fix a disabled connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :state defaults value is set to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in.
    # @return [Array<(AccountOrdersV2Response, Integer, Hash)>] AccountOrdersV2Response data, response status code and response headers
    private def get_user_account_orders_v2_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.get_user_account_orders_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ExperimentalEndpointsApi.get_user_account_orders_v2"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ExperimentalEndpointsApi.get_user_account_orders_v2"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExperimentalEndpointsApi.get_user_account_orders_v2"
      end
      allowable_values = ["all", "open", "executed"]
      if @api_client.config.client_side_validation && opts[:'state'] && !allowable_values.include?(opts[:'state'])
        fail ArgumentError, "invalid value for \"state\", must be one of #{allowable_values}"
      end
      if @api_client.config.client_side_validation && !opts[:'days'].nil? && opts[:'days'] < 1
        fail ArgumentError, 'invalid value for "opts[:"days"]" when calling ExperimentalEndpointsApi.get_user_account_orders_v2, must be greater than or equal to 1.'
      end

      # resource path
      local_var_path = '/accounts/{accountId}/orders/v2'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AccountOrdersV2Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.get_user_account_orders_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#get_user_account_orders_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account recent orders (V2, last 24 hours only)
    #
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format.
    # This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders.
    # Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days.
    # By default only returns executed orders, but that can be changed by setting *only_executed* to false.
    # **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param only_executed [Boolean] Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_recent_orders_v2(user_id:, user_secret:, account_id:, only_executed: SENTINEL, extra: {})
      extra[:only_executed] = only_executed if only_executed != SENTINEL
      data, _status_code, _headers = get_user_account_recent_orders_v2_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account recent orders (V2, last 24 hours only)
    #
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format.
    # This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders.
    # Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days.
    # By default only returns executed orders, but that can be changed by setting *only_executed* to false.
    # **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param only_executed [Boolean] Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_recent_orders_v2_with_http_info(user_id:, user_secret:, account_id:, only_executed: SENTINEL, extra: {})
      extra[:only_executed] = only_executed if only_executed != SENTINEL
      get_user_account_recent_orders_v2_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account recent orders (V2, last 24 hours only)
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders. Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days. By default only returns executed orders, but that can be changed by setting *only_executed* to false. **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :only_executed Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @return [AccountOrdersV2Response]
    private def get_user_account_recent_orders_v2_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = get_user_account_recent_orders_v2_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account recent orders (V2, last 24 hours only)
    # A lightweight endpoint that returns a list of orders executed in the last 24 hours in the specified account using the V2 order format. This endpoint is realtime and can be used to quickly check if account state has recently changed due to an execution, or check status of recently placed orders. Differs from /orders in that it is realtime, and only checks the last 24 hours as opposed to the last 30 days. By default only returns executed orders, but that can be changed by setting *only_executed* to false. **Because of the cost of realtime requests, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :only_executed Defaults to true. Indicates if request should fetch only executed orders. Set to false to retrieve non executed orders as well
    # @return [Array<(AccountOrdersV2Response, Integer, Hash)>] AccountOrdersV2Response data, response status code and response headers
    private def get_user_account_recent_orders_v2_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.get_user_account_recent_orders_v2 ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ExperimentalEndpointsApi.get_user_account_recent_orders_v2"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ExperimentalEndpointsApi.get_user_account_recent_orders_v2"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExperimentalEndpointsApi.get_user_account_recent_orders_v2"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/recentOrders/v2'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'AccountOrdersV2Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.get_user_account_recent_orders_v2",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#get_user_account_recent_orders_v2\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  ExperimentalEndpoints = ExperimentalEndpointsApi::new
end
