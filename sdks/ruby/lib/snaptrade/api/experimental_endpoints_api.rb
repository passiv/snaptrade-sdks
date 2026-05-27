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

    # Add a Trade Detection subscription
    #
    # Adds or restores a Trade Detection subscription for a connected brokerage account.
    # This endpoint requires `userId` and `userSecret` in addition to the partner signature.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param body [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_subscription(account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      trade_detection_add_subscription_request = _body
      data, _status_code, _headers = add_subscription_with_http_info_impl(user_id, user_secret, trade_detection_add_subscription_request, extra)
      data
    end

    # Add a Trade Detection subscription
    #
    # Adds or restores a Trade Detection subscription for a connected brokerage account.
    # This endpoint requires `userId` and `userSecret` in addition to the partner signature.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param body [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_subscription_with_http_info(account_id:, user_id:, user_secret:, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      trade_detection_add_subscription_request = _body
      add_subscription_with_http_info_impl(user_id, user_secret, trade_detection_add_subscription_request, extra)
    end

    # Add a Trade Detection subscription
    # Adds or restores a Trade Detection subscription for a connected brokerage account. This endpoint requires `userId` and `userSecret` in addition to the partner signature. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param trade_detection_add_subscription_request [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [TradeDetectionSubscription]
    private def add_subscription_impl(user_id, user_secret, trade_detection_add_subscription_request, opts = {})
      data, _status_code, _headers = add_subscription_with_http_info(user_id, user_secret, trade_detection_add_subscription_request, opts)
      data
    end

    # Add a Trade Detection subscription
    # Adds or restores a Trade Detection subscription for a connected brokerage account. This endpoint requires &#x60;userId&#x60; and &#x60;userSecret&#x60; in addition to the partner signature. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param trade_detection_add_subscription_request [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TradeDetectionSubscription, Integer, Hash)>] TradeDetectionSubscription data, response status code and response headers
    private def add_subscription_with_http_info_impl(user_id, user_secret, trade_detection_add_subscription_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.add_subscription ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ExperimentalEndpointsApi.add_subscription"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ExperimentalEndpointsApi.add_subscription"
      end
      # verify the required parameter 'trade_detection_add_subscription_request' is set
      if @api_client.config.client_side_validation && trade_detection_add_subscription_request.nil?
        fail ArgumentError, "Missing the required parameter 'trade_detection_add_subscription_request' when calling ExperimentalEndpointsApi.add_subscription"
      end
      # resource path
      local_var_path = '/snapTrade/tradeDetection/subscriptions'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trade_detection_add_subscription_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TradeDetectionSubscription'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.add_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#add_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Cancel a Trade Detection subscription
    #
    # Cancels a Trade Detection subscription for a connected brokerage account.
    # This endpoint requires partner signature authentication only and does not require `userId` or `userSecret`.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param body [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_subscription(account_id:, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      trade_detection_add_subscription_request = _body
      data, _status_code, _headers = cancel_subscription_with_http_info_impl(trade_detection_add_subscription_request, extra)
      data
    end

    # Cancel a Trade Detection subscription
    #
    # Cancels a Trade Detection subscription for a connected brokerage account.
    # This endpoint requires partner signature authentication only and does not require `userId` or `userSecret`.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param body [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_subscription_with_http_info(account_id:, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      trade_detection_add_subscription_request = _body
      cancel_subscription_with_http_info_impl(trade_detection_add_subscription_request, extra)
    end

    # Cancel a Trade Detection subscription
    # Cancels a Trade Detection subscription for a connected brokerage account. This endpoint requires partner signature authentication only and does not require `userId` or `userSecret`. 
    # @param trade_detection_add_subscription_request [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [TradeDetectionCancelSubscriptionResponse]
    private def cancel_subscription_impl(trade_detection_add_subscription_request, opts = {})
      data, _status_code, _headers = cancel_subscription_with_http_info(trade_detection_add_subscription_request, opts)
      data
    end

    # Cancel a Trade Detection subscription
    # Cancels a Trade Detection subscription for a connected brokerage account. This endpoint requires partner signature authentication only and does not require &#x60;userId&#x60; or &#x60;userSecret&#x60;. 
    # @param trade_detection_add_subscription_request [TradeDetectionAddSubscriptionRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TradeDetectionCancelSubscriptionResponse, Integer, Hash)>] TradeDetectionCancelSubscriptionResponse data, response status code and response headers
    private def cancel_subscription_with_http_info_impl(trade_detection_add_subscription_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.cancel_subscription ...'
      end
      # verify the required parameter 'trade_detection_add_subscription_request' is set
      if @api_client.config.client_side_validation && trade_detection_add_subscription_request.nil?
        fail ArgumentError, "Missing the required parameter 'trade_detection_add_subscription_request' when calling ExperimentalEndpointsApi.cancel_subscription"
      end
      # resource path
      local_var_path = '/snapTrade/tradeDetection/subscriptions/cancel'

      # query parameters
      query_params = opts[:query_params] || {}

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trade_detection_add_subscription_request)

      # return_type
      return_type = opts[:debug_return_type] || 'TradeDetectionCancelSubscriptionResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.cancel_subscription",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#cancel_subscription\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get account order detail (V2)
    #
    # Returns the detail of a single order using the brokerage order ID provided as a path parameter.
    # 
    # The V2 order response format includes all legs of the order in the `legs` list field.
    # If the order is single legged, `legs` will be a list of one leg.
    # 
    # This endpoint is always realtime and does not rely on cached data.
    # 
    # This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.
    #
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_order_detail_v2(account_id:, brokerage_order_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = get_user_account_order_detail_v2_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, extra)
      data
    end

    # Get account order detail (V2)
    #
    # Returns the detail of a single order using the brokerage order ID provided as a path parameter.
    # 
    # The V2 order response format includes all legs of the order in the `legs` list field.
    # If the order is single legged, `legs` will be a list of one leg.
    # 
    # This endpoint is always realtime and does not rely on cached data.
    # 
    # This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint.
    #
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_order_detail_v2_with_http_info(account_id:, brokerage_order_id:, user_id:, user_secret:, extra: {})
      get_user_account_order_detail_v2_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, extra)
    end

    # Get account order detail (V2)
    # Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the `legs` list field. If the order is single legged, `legs` will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecordV2]
    private def get_user_account_order_detail_v2_impl(account_id, brokerage_order_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = get_user_account_order_detail_v2_with_http_info(account_id, brokerage_order_id, user_id, user_secret, opts)
      data
    end

    # Get account order detail (V2)
    # Returns the detail of a single order using the brokerage order ID provided as a path parameter.  The V2 order response format includes all legs of the order in the &#x60;legs&#x60; list field. If the order is single legged, &#x60;legs&#x60; will be a list of one leg.  This endpoint is always realtime and does not rely on cached data.  This endpoint only returns orders placed through SnapTrade. In other words, orders placed outside of the SnapTrade network are not returned by this endpoint. 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecordV2, Integer, Hash)>] AccountOrderRecordV2 data, response status code and response headers
    private def get_user_account_order_detail_v2_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.get_user_account_order_detail_v2 ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'brokerage_order_id' is set
      if @api_client.config.client_side_validation && brokerage_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'brokerage_order_id' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ExperimentalEndpointsApi.get_user_account_order_detail_v2"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/orders/details/v2/{brokerageOrderId}'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'brokerageOrderId' + '}', CGI.escape(brokerage_order_id.to_s))

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

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
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
    # @param state [String] defaults to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.
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
    # @param state [String] defaults to \"all\"
    # @param days [Integer] Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.
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
    # @option opts [String] :state defaults to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.
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
    # @option opts [String] :state defaults to \"all\"
    # @option opts [Integer] :days Number of days in the past to fetch the most recent orders. Defaults to the last 30 days if no value is passed in. Values greater than 90 will be capped at 90.
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
      if @api_client.config.client_side_validation && !opts[:'days'].nil? && opts[:'days'] > 90
        fail ArgumentError, 'invalid value for "opts[:"days"]" when calling ExperimentalEndpointsApi.get_user_account_orders_v2, must be smaller than or equal to 90.'
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


    # List active Trade Detection subscriptions
    #
    # Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_subscriptions(extra: {})
      data, _status_code, _headers = list_subscriptions_with_http_info_impl(extra)
      data
    end

    # List active Trade Detection subscriptions
    #
    # Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_subscriptions_with_http_info(extra: {})
      list_subscriptions_with_http_info_impl(extra)
    end

    # List active Trade Detection subscriptions
    # Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<TradeDetectionSubscription>]
    private def list_subscriptions_impl(opts = {})
      data, _status_code, _headers = list_subscriptions_with_http_info(opts)
      data
    end

    # List active Trade Detection subscriptions
    # Returns active Trade Detection subscriptions for your Client ID. Cancelled subscriptions are not returned.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TradeDetectionSubscription>, Integer, Hash)>] Array<TradeDetectionSubscription> data, response status code and response headers
    private def list_subscriptions_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentalEndpointsApi.list_subscriptions ...'
      end
      # resource path
      local_var_path = '/snapTrade/tradeDetection/subscriptions'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TradeDetectionSubscription>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ExperimentalEndpointsApi.list_subscriptions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentalEndpointsApi#list_subscriptions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  ExperimentalEndpoints = ExperimentalEndpointsApi::new
end
