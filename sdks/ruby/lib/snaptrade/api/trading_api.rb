=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class TradingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel crypto order
    #
    # Cancels an order in the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_order(user_id:, user_secret:, account_id:, brokerage_order_id:, extra: {})
      data, _status_code, _headers = cancel_order_with_http_info_impl(user_id, user_secret, account_id, brokerage_order_id, extra)
      data
    end

    # Cancel crypto order
    #
    # Cancels an order in the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_order_with_http_info(user_id:, user_secret:, account_id:, brokerage_order_id:, extra: {})
      cancel_order_with_http_info_impl(user_id, user_secret, account_id, brokerage_order_id, extra)
    end

    # Cancel crypto order
    # Cancels an order in the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [OrderUpdatedResponse]
    private def cancel_order_impl(user_id, user_secret, account_id, brokerage_order_id, opts = {})
      data, _status_code, _headers = cancel_order_with_http_info(user_id, user_secret, account_id, brokerage_order_id, opts)
      data
    end

    # Cancel crypto order
    # Cancels an order in the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderUpdatedResponse, Integer, Hash)>] OrderUpdatedResponse data, response status code and response headers
    private def cancel_order_with_http_info_impl(user_id, user_secret, account_id, brokerage_order_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.cancel_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.cancel_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.cancel_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.cancel_order"
      end
      # verify the required parameter 'brokerage_order_id' is set
      if @api_client.config.client_side_validation && brokerage_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'brokerage_order_id' when calling TradingApi.cancel_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/simple/{brokerageOrderId}/cancel'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'brokerageOrderId' + '}', CGI.escape(brokerage_order_id.to_s))

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
      return_type = opts[:debug_return_type] || 'OrderUpdatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.cancel_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Cancel equity order
    #
    # Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param body [TradingCancelUserAccountOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_user_account_order(user_id:, user_secret:, account_id:, brokerage_order_id: SENTINEL, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      trading_cancel_user_account_order_request = _body
      data, _status_code, _headers = cancel_user_account_order_with_http_info_impl(user_id, user_secret, account_id, trading_cancel_user_account_order_request, extra)
      data
    end

    # Cancel equity order
    #
    # Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param body [TradingCancelUserAccountOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def cancel_user_account_order_with_http_info(user_id:, user_secret:, account_id:, brokerage_order_id: SENTINEL, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      trading_cancel_user_account_order_request = _body
      cancel_user_account_order_with_http_info_impl(user_id, user_secret, account_id, trading_cancel_user_account_order_request, extra)
    end

    # Cancel equity order
    # Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_cancel_user_account_order_request [TradingCancelUserAccountOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def cancel_user_account_order_impl(user_id, user_secret, account_id, trading_cancel_user_account_order_request, opts = {})
      data, _status_code, _headers = cancel_user_account_order_with_http_info(user_id, user_secret, account_id, trading_cancel_user_account_order_request, opts)
      data
    end

    # Cancel equity order
    # Attempts to cancel an open order with the brokerage. If the order is no longer cancellable, the request will be rejected. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_cancel_user_account_order_request [TradingCancelUserAccountOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def cancel_user_account_order_with_http_info_impl(user_id, user_secret, account_id, trading_cancel_user_account_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.cancel_user_account_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.cancel_user_account_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.cancel_user_account_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.cancel_user_account_order"
      end
      # verify the required parameter 'trading_cancel_user_account_order_request' is set
      if @api_client.config.client_side_validation && trading_cancel_user_account_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'trading_cancel_user_account_order_request' when calling TradingApi.cancel_user_account_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/orders/cancel'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trading_cancel_user_account_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.cancel_user_account_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#cancel_user_account_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get crypto pair quote
    #
    # Gets a quote for the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param instrument_symbol [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_cryptocurrency_pair_quote(user_id:, user_secret:, account_id:, instrument_symbol:, extra: {})
      data, _status_code, _headers = get_cryptocurrency_pair_quote_with_http_info_impl(user_id, user_secret, account_id, instrument_symbol, extra)
      data
    end

    # Get crypto pair quote
    #
    # Gets a quote for the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param instrument_symbol [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_cryptocurrency_pair_quote_with_http_info(user_id:, user_secret:, account_id:, instrument_symbol:, extra: {})
      get_cryptocurrency_pair_quote_with_http_info_impl(user_id, user_secret, account_id, instrument_symbol, extra)
    end

    # Get crypto pair quote
    # Gets a quote for the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param instrument_symbol [String] 
    # @param [Hash] opts the optional parameters
    # @return [CryptocurrencyPairQuote]
    private def get_cryptocurrency_pair_quote_impl(user_id, user_secret, account_id, instrument_symbol, opts = {})
      data, _status_code, _headers = get_cryptocurrency_pair_quote_with_http_info(user_id, user_secret, account_id, instrument_symbol, opts)
      data
    end

    # Get crypto pair quote
    # Gets a quote for the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param instrument_symbol [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CryptocurrencyPairQuote, Integer, Hash)>] CryptocurrencyPairQuote data, response status code and response headers
    private def get_cryptocurrency_pair_quote_with_http_info_impl(user_id, user_secret, account_id, instrument_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.get_cryptocurrency_pair_quote ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'instrument_symbol' is set
      if @api_client.config.client_side_validation && instrument_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'instrument_symbol' when calling TradingApi.get_cryptocurrency_pair_quote"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/instruments/cryptocurrencyPairs/{instrumentSymbol}/quote'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'instrumentSymbol' + '}', CGI.escape(instrument_symbol.to_s))

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
      return_type = opts[:debug_return_type] || 'CryptocurrencyPairQuote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.get_cryptocurrency_pair_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#get_cryptocurrency_pair_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Check equity order impact
    #
    # Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param action [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param universal_symbol_id [String] Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] 
    # @param notional_value [ManualTradeFormNotionalValue] 
    # @param body [ManualTradeForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_order_impact(account_id:, action:, universal_symbol_id:, order_type:, time_in_force:, user_id:, user_secret:, price: SENTINEL, stop: SENTINEL, units: SENTINEL, notional_value: SENTINEL, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      _body[:action] = action if action != SENTINEL
      _body[:universal_symbol_id] = universal_symbol_id if universal_symbol_id != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:notional_value] = notional_value if notional_value != SENTINEL
      manual_trade_form = _body
      data, _status_code, _headers = get_order_impact_with_http_info_impl(user_id, user_secret, manual_trade_form, extra)
      data
    end

    # Check equity order impact
    #
    # Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param action [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param universal_symbol_id [String] Unique identifier for the symbol within SnapTrade. This is the ID used to reference the symbol in SnapTrade API calls.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] 
    # @param notional_value [ManualTradeFormNotionalValue] 
    # @param body [ManualTradeForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_order_impact_with_http_info(account_id:, action:, universal_symbol_id:, order_type:, time_in_force:, user_id:, user_secret:, price: SENTINEL, stop: SENTINEL, units: SENTINEL, notional_value: SENTINEL, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      _body[:action] = action if action != SENTINEL
      _body[:universal_symbol_id] = universal_symbol_id if universal_symbol_id != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:notional_value] = notional_value if notional_value != SENTINEL
      manual_trade_form = _body
      get_order_impact_with_http_info_impl(user_id, user_secret, manual_trade_form, extra)
    end

    # Check equity order impact
    # Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a `Trade` object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the `Trade` object returned expires after 5 minutes. Any order placed using an expired `Trade` will be rejected.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form [ManualTradeForm] 
    # @param [Hash] opts the optional parameters
    # @return [ManualTradeAndImpact]
    private def get_order_impact_impl(user_id, user_secret, manual_trade_form, opts = {})
      data, _status_code, _headers = get_order_impact_with_http_info(user_id, user_secret, manual_trade_form, opts)
      data
    end

    # Check equity order impact
    # Simulates an order and its impact on the account. This endpoint does not place the order with the brokerage. If successful, it returns a &#x60;Trade&#x60; object and the ID of the object can be used to place the order with the brokerage using the [place checked order endpoint](/reference/Trading/Trading_placeOrder). Please note that the &#x60;Trade&#x60; object returned expires after 5 minutes. Any order placed using an expired &#x60;Trade&#x60; will be rejected.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form [ManualTradeForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ManualTradeAndImpact, Integer, Hash)>] ManualTradeAndImpact data, response status code and response headers
    private def get_order_impact_with_http_info_impl(user_id, user_secret, manual_trade_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.get_order_impact ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.get_order_impact"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.get_order_impact"
      end
      # verify the required parameter 'manual_trade_form' is set
      if @api_client.config.client_side_validation && manual_trade_form.nil?
        fail ArgumentError, "Missing the required parameter 'manual_trade_form' when calling TradingApi.get_order_impact"
      end
      # resource path
      local_var_path = '/trade/impact'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(manual_trade_form)

      # return_type
      return_type = opts[:debug_return_type] || 'ManualTradeAndImpact'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.get_order_impact",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#get_order_impact\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get equity symbol quotes
    #
    # Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbols [String] List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
    # @param account_id [String] 
    # @param use_ticker [Boolean] Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_quotes(user_id:, user_secret:, symbols:, account_id:, use_ticker: SENTINEL, extra: {})
      extra[:use_ticker] = use_ticker if use_ticker != SENTINEL
      data, _status_code, _headers = get_user_account_quotes_with_http_info_impl(user_id, user_secret, symbols, account_id, extra)
      data
    end

    # Get equity symbol quotes
    #
    # Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbols [String] List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
    # @param account_id [String] 
    # @param use_ticker [Boolean] Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_account_quotes_with_http_info(user_id:, user_secret:, symbols:, account_id:, use_ticker: SENTINEL, extra: {})
      extra[:use_ticker] = use_ticker if use_ticker != SENTINEL
      get_user_account_quotes_with_http_info_impl(user_id, user_secret, symbols, account_id, extra)
    end

    # Get equity symbol quotes
    # Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbols [String] List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_ticker Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.
    # @return [Array<SymbolsQuotesInner>]
    private def get_user_account_quotes_impl(user_id, user_secret, symbols, account_id, opts = {})
      data, _status_code, _headers = get_user_account_quotes_with_http_info(user_id, user_secret, symbols, account_id, opts)
      data
    end

    # Get equity symbol quotes
    # Returns quotes from the brokerage for the specified symbols and account. The quotes returned can be delayed depending on the brokerage the account belongs to. It is highly recommended that you use your own market data provider for real-time quotes instead of relying on this endpoint. This endpoint does not work for options quotes.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbols [String] List of Universal Symbol IDs or tickers to get quotes for. When providing multiple values, use a comma as separator
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [Boolean] :use_ticker Should be set to `True` if `symbols` are comprised of tickers. Defaults to `False` if not provided.
    # @return [Array<(Array<SymbolsQuotesInner>, Integer, Hash)>] Array<SymbolsQuotesInner> data, response status code and response headers
    private def get_user_account_quotes_with_http_info_impl(user_id, user_secret, symbols, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.get_user_account_quotes ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.get_user_account_quotes"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.get_user_account_quotes"
      end
      # verify the required parameter 'symbols' is set
      if @api_client.config.client_side_validation && symbols.nil?
        fail ArgumentError, "Missing the required parameter 'symbols' when calling TradingApi.get_user_account_quotes"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.get_user_account_quotes"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/quotes'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'symbols'] = symbols
      query_params[:'use_ticker'] = opts[:'use_ticker'] if !opts[:'use_ticker'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<SymbolsQuotesInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.get_user_account_quotes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#get_user_account_quotes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place bracket equity order
    #
    # Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for
    # use. Only supported on certain brokerages
    #
    # @param action [ActionStrictWithOptions] The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.
    # @param instrument [TradingInstrument] 
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param stop_loss [StopLoss] 
    # @param take_profit [TakeProfit] 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbol [String] The security's trading ticker symbol.
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    # @param body [ManualTradeFormBracket] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_bracket_order(action:, instrument:, order_type:, time_in_force:, stop_loss:, take_profit:, account_id:, user_id:, user_secret:, symbol: SENTINEL, price: SENTINEL, stop: SENTINEL, units: SENTINEL, extra: {})
      _body = {}
      _body[:action] = action if action != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:stop_loss] = stop_loss if stop_loss != SENTINEL
      _body[:take_profit] = take_profit if take_profit != SENTINEL
      manual_trade_form_bracket = _body
      data, _status_code, _headers = place_bracket_order_with_http_info_impl(account_id, user_id, user_secret, manual_trade_form_bracket, extra)
      data
    end

    # Place bracket equity order
    #
    # Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for
    # use. Only supported on certain brokerages
    #
    # @param action [ActionStrictWithOptions] The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.
    # @param instrument [TradingInstrument] 
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param stop_loss [StopLoss] 
    # @param take_profit [TakeProfit] 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param symbol [String] The security's trading ticker symbol.
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] Number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided.
    # @param body [ManualTradeFormBracket] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_bracket_order_with_http_info(action:, instrument:, order_type:, time_in_force:, stop_loss:, take_profit:, account_id:, user_id:, user_secret:, symbol: SENTINEL, price: SENTINEL, stop: SENTINEL, units: SENTINEL, extra: {})
      _body = {}
      _body[:action] = action if action != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:stop_loss] = stop_loss if stop_loss != SENTINEL
      _body[:take_profit] = take_profit if take_profit != SENTINEL
      manual_trade_form_bracket = _body
      place_bracket_order_with_http_info_impl(account_id, user_id, user_secret, manual_trade_form_bracket, extra)
    end

    # Place bracket equity order
    # Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form_bracket [ManualTradeFormBracket] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def place_bracket_order_impl(account_id, user_id, user_secret, manual_trade_form_bracket, opts = {})
      data, _status_code, _headers = place_bracket_order_with_http_info(account_id, user_id, user_secret, manual_trade_form_bracket, opts)
      data
    end

    # Place bracket equity order
    # Places a bracket order (entry order + OCO of stop loss and take profit). Disabled by default please contact support for use. Only supported on certain brokerages 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form_bracket [ManualTradeFormBracket] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def place_bracket_order_with_http_info_impl(account_id, user_id, user_secret, manual_trade_form_bracket, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.place_bracket_order ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.place_bracket_order"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.place_bracket_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.place_bracket_order"
      end
      # verify the required parameter 'manual_trade_form_bracket' is set
      if @api_client.config.client_side_validation && manual_trade_form_bracket.nil?
        fail ArgumentError, "Missing the required parameter 'manual_trade_form_bracket' when calling TradingApi.place_bracket_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/bracket'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(manual_trade_form_bracket)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.place_bracket_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#place_bracket_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place equity order
    #
    # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.
    # 
    # This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).
    # 
    # It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param action [ActionStrictWithOptions] The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param universal_symbol_id [String] The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
    # @param symbol [String] The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example `AAPL 131124C00240000` represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    # @param notional_value [ManualTradeFormNotionalValue] 
    # @param body [ManualTradeFormWithOptions] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_force_order(account_id:, action:, order_type:, time_in_force:, user_id:, user_secret:, universal_symbol_id: SENTINEL, symbol: SENTINEL, price: SENTINEL, stop: SENTINEL, units: SENTINEL, notional_value: SENTINEL, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      _body[:action] = action if action != SENTINEL
      _body[:universal_symbol_id] = universal_symbol_id if universal_symbol_id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:notional_value] = notional_value if notional_value != SENTINEL
      manual_trade_form_with_options = _body
      data, _status_code, _headers = place_force_order_with_http_info_impl(user_id, user_secret, manual_trade_form_with_options, extra)
      data
    end

    # Place equity order
    #
    # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.
    # 
    # This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).
    # 
    # It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.
    #
    # @param account_id [String] Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade.
    # @param action [ActionStrictWithOptions] The action describes the intent or side of a trade. This is either `BUY` or `SELL` for Equity symbols or `BUY_TO_OPEN`, `BUY_TO_CLOSE`, `SELL_TO_OPEN` or `SELL_TO_CLOSE` for Options.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param universal_symbol_id [String] The universal symbol ID of the security to trade. Must be 'null' if `symbol` is provided, otherwise must be provided.
    # @param symbol [String] The security's trading ticker symbol. This currently supports stock symbols and Options symbols in the 21 character OCC format. For example `AAPL 131124C00240000` represents a call option on AAPL expiring on 2024-11-13 with a strike price of $240. For more information on the OCC format, see [here](https://en.wikipedia.org/wiki/Option_symbol#OCC_format). If 'symbol' is provided, then 'universal_symbol_id' must be 'null'.
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] For Equity orders, this represents the number of shares for the order. This can be a decimal for fractional orders. Must be `null` if `notional_value` is provided. If placing an Option order, this field represents the number of contracts to buy or sell. (e.g., 1 contract = 100 shares).
    # @param notional_value [ManualTradeFormNotionalValue] 
    # @param body [ManualTradeFormWithOptions] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_force_order_with_http_info(account_id:, action:, order_type:, time_in_force:, user_id:, user_secret:, universal_symbol_id: SENTINEL, symbol: SENTINEL, price: SENTINEL, stop: SENTINEL, units: SENTINEL, notional_value: SENTINEL, extra: {})
      _body = {}
      _body[:account_id] = account_id if account_id != SENTINEL
      _body[:action] = action if action != SENTINEL
      _body[:universal_symbol_id] = universal_symbol_id if universal_symbol_id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      _body[:notional_value] = notional_value if notional_value != SENTINEL
      manual_trade_form_with_options = _body
      place_force_order_with_http_info_impl(user_id, user_secret, manual_trade_form_with_options, extra)
    end

    # Place equity order
    # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form_with_options [ManualTradeFormWithOptions] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def place_force_order_impl(user_id, user_secret, manual_trade_form_with_options, opts = {})
      data, _status_code, _headers = place_force_order_with_http_info(user_id, user_secret, manual_trade_form_with_options, opts)
      data
    end

    # Place equity order
    # Places a brokerage order in the specified account. The order could be rejected by the brokerage if it is invalid or if the account does not have sufficient funds.  This endpoint does not compute the impact to the account balance from the order and any potential commissions before submitting the order to the brokerage. If that is desired, you can use the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_form_with_options [ManualTradeFormWithOptions] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def place_force_order_with_http_info_impl(user_id, user_secret, manual_trade_form_with_options, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.place_force_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.place_force_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.place_force_order"
      end
      # verify the required parameter 'manual_trade_form_with_options' is set
      if @api_client.config.client_side_validation && manual_trade_form_with_options.nil?
        fail ArgumentError, "Missing the required parameter 'manual_trade_form_with_options' when calling TradingApi.place_force_order"
      end
      # resource path
      local_var_path = '/trade/place'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(manual_trade_form_with_options)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.place_force_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#place_force_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place option order
    #
    # Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support
    #
    # @param order_type [MlegOrderTypeStrict] The type of order to place.
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param legs [Array<MlegLeg>] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.
    # @param price_effect [String] 
    # @param body [MlegTradeForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_mleg_order(order_type:, time_in_force:, legs:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, price_effect: SENTINEL, extra: {})
      _body = {}
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:price_effect] = price_effect if price_effect != SENTINEL
      _body[:legs] = legs if legs != SENTINEL
      mleg_trade_form = _body
      data, _status_code, _headers = place_mleg_order_with_http_info_impl(user_id, user_secret, account_id, mleg_trade_form, extra)
      data
    end

    # Place option order
    #
    # Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support
    #
    # @param order_type [MlegOrderTypeStrict] The type of order to place.
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param legs [Array<MlegLeg>] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT.
    # @param price_effect [String] 
    # @param body [MlegTradeForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_mleg_order_with_http_info(order_type:, time_in_force:, legs:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, price_effect: SENTINEL, extra: {})
      _body = {}
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:price_effect] = price_effect if price_effect != SENTINEL
      _body[:legs] = legs if legs != SENTINEL
      mleg_trade_form = _body
      place_mleg_order_with_http_info_impl(user_id, user_secret, account_id, mleg_trade_form, extra)
    end

    # Place option order
    # Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param mleg_trade_form [MlegTradeForm] 
    # @param [Hash] opts the optional parameters
    # @return [MlegOrderResponse]
    private def place_mleg_order_impl(user_id, user_secret, account_id, mleg_trade_form, opts = {})
      data, _status_code, _headers = place_mleg_order_with_http_info(user_id, user_secret, account_id, mleg_trade_form, opts)
      data
    end

    # Place option order
    # Places a multi-leg option order. Only supported on certain option trading brokerages. https://snaptrade.notion.site/brokerages has information on brokerage trading support 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param mleg_trade_form [MlegTradeForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(MlegOrderResponse, Integer, Hash)>] MlegOrderResponse data, response status code and response headers
    private def place_mleg_order_with_http_info_impl(user_id, user_secret, account_id, mleg_trade_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.place_mleg_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.place_mleg_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.place_mleg_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.place_mleg_order"
      end
      # verify the required parameter 'mleg_trade_form' is set
      if @api_client.config.client_side_validation && mleg_trade_form.nil?
        fail ArgumentError, "Missing the required parameter 'mleg_trade_form' when calling TradingApi.place_mleg_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/options'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(mleg_trade_form)

      # return_type
      return_type = opts[:debug_return_type] || 'MlegOrderResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.place_mleg_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#place_mleg_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place checked equity order
    #
    # Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).
    # 
    # It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.
    #
    # @param trade_id [String] Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param wait_to_confirm [Boolean] Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.
    # @param body [ValidatedTradeBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_order(trade_id:, user_id:, user_secret:, wait_to_confirm: SENTINEL, extra: {})
      _body = {}
      _body[:wait_to_confirm] = wait_to_confirm if wait_to_confirm != SENTINEL
      extra[:validated_trade_body] = _body if !_body.empty?
      data, _status_code, _headers = place_order_with_http_info_impl(trade_id, user_id, user_secret, extra)
      data
    end

    # Place checked equity order
    #
    # Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).
    # 
    # It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this.
    #
    # @param trade_id [String] Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param wait_to_confirm [Boolean] Optional, defaults to true. Determines if a wait is performed to check on order status. If false, latency will be reduced but orders returned will be more likely to be of status `PENDING` as we will not wait to check on the status before responding to the request.
    # @param body [ValidatedTradeBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_order_with_http_info(trade_id:, user_id:, user_secret:, wait_to_confirm: SENTINEL, extra: {})
      _body = {}
      _body[:wait_to_confirm] = wait_to_confirm if wait_to_confirm != SENTINEL
      extra[:validated_trade_body] = _body if !_body.empty?
      place_order_with_http_info_impl(trade_id, user_id, user_secret, extra)
    end

    # Place checked equity order
    # Places the previously checked order with the brokerage. The `tradeId` is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It's recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
    # @param trade_id [String] Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ValidatedTradeBody] :validated_trade_body 
    # @return [AccountOrderRecord]
    private def place_order_impl(trade_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = place_order_with_http_info(trade_id, user_id, user_secret, opts)
      data
    end

    # Place checked equity order
    # Places the previously checked order with the brokerage. The &#x60;tradeId&#x60; is obtained from the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact). If you prefer to place the order without checking for impact first, you can use the [place order endpoint](/reference/Trading/Trading_placeForceOrder).  It&#39;s recommended to trigger a manual refresh of the account after placing an order to ensure the account is up to date. You can use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint for this. 
    # @param trade_id [String] Obtained from calling the [check order impact endpoint](/reference/Trading/Trading_getOrderImpact)
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [ValidatedTradeBody] :validated_trade_body 
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def place_order_with_http_info_impl(trade_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.place_order ...'
      end
      # verify the required parameter 'trade_id' is set
      if @api_client.config.client_side_validation && trade_id.nil?
        fail ArgumentError, "Missing the required parameter 'trade_id' when calling TradingApi.place_order"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.place_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.place_order"
      end
      # resource path
      local_var_path = '/trade/{tradeId}'.sub('{' + 'tradeId' + '}', CGI.escape(trade_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'validated_trade_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.place_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#place_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place crypto order
    #
    # Places an order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [SimpleOrderForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_simple_order(instrument:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      simple_order_form = _body
      data, _status_code, _headers = place_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, extra)
      data
    end

    # Place crypto order
    #
    # Places an order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [SimpleOrderForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def place_simple_order_with_http_info(instrument:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      simple_order_form = _body
      place_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, extra)
    end

    # Place crypto order
    # Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param simple_order_form [SimpleOrderForm] 
    # @param [Hash] opts the optional parameters
    # @return [OrderUpdatedResponse]
    private def place_simple_order_impl(user_id, user_secret, account_id, simple_order_form, opts = {})
      data, _status_code, _headers = place_simple_order_with_http_info(user_id, user_secret, account_id, simple_order_form, opts)
      data
    end

    # Place crypto order
    # Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param simple_order_form [SimpleOrderForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderUpdatedResponse, Integer, Hash)>] OrderUpdatedResponse data, response status code and response headers
    private def place_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.place_simple_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.place_simple_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.place_simple_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.place_simple_order"
      end
      # verify the required parameter 'simple_order_form' is set
      if @api_client.config.client_side_validation && simple_order_form.nil?
        fail ArgumentError, "Missing the required parameter 'simple_order_form' when calling TradingApi.place_simple_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/simple'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(simple_order_form)

      # return_type
      return_type = opts[:debug_return_type] || 'OrderUpdatedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.place_simple_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#place_simple_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Preview crypto order
    #
    # Previews an order using the specified account.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [SimpleOrderForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def preview_simple_order(instrument:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      simple_order_form = _body
      data, _status_code, _headers = preview_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, extra)
      data
    end

    # Preview crypto order
    #
    # Previews an order using the specified account.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Valid and required only for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees. 
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [SimpleOrderForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def preview_simple_order_with_http_info(instrument:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:instrument] = instrument if instrument != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      simple_order_form = _body
      preview_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, extra)
    end

    # Preview crypto order
    # Previews an order using the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param simple_order_form [SimpleOrderForm] 
    # @param [Hash] opts the optional parameters
    # @return [SimpleOrderPreview]
    private def preview_simple_order_impl(user_id, user_secret, account_id, simple_order_form, opts = {})
      data, _status_code, _headers = preview_simple_order_with_http_info(user_id, user_secret, account_id, simple_order_form, opts)
      data
    end

    # Preview crypto order
    # Previews an order using the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param simple_order_form [SimpleOrderForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(SimpleOrderPreview, Integer, Hash)>] SimpleOrderPreview data, response status code and response headers
    private def preview_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.preview_simple_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.preview_simple_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.preview_simple_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.preview_simple_order"
      end
      # verify the required parameter 'simple_order_form' is set
      if @api_client.config.client_side_validation && simple_order_form.nil?
        fail ArgumentError, "Missing the required parameter 'simple_order_form' when calling TradingApi.preview_simple_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/simple/preview'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(simple_order_form)

      # return_type
      return_type = opts[:debug_return_type] || 'SimpleOrderPreview'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.preview_simple_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#preview_simple_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Replace crypto order
    #
    # Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
    # the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
    # returned in the response going forward. Only supported on some brokerages
    #
    # @param action [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param brokerage_order_id [String] The Brokerage Order ID of the order to replace.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param symbol [String] The security's trading ticker symbol
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] 
    # @param body [ManualTradeReplaceForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def replace_order(action:, order_type:, time_in_force:, account_id:, brokerage_order_id:, user_id:, user_secret:, price: SENTINEL, symbol: SENTINEL, stop: SENTINEL, units: SENTINEL, extra: {})
      _body = {}
      _body[:action] = action if action != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      manual_trade_replace_form = _body
      data, _status_code, _headers = replace_order_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, manual_trade_replace_form, extra)
      data
    end

    # Replace crypto order
    #
    # Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling
    # the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one
    # returned in the response going forward. Only supported on some brokerages
    #
    # @param action [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param order_type [OrderTypeStrict] The type of order to place. - For `Limit` and `StopLimit` orders, the `price` field is required. - For `Stop` and `StopLimit` orders, the `stop` field is required. 
    # @param time_in_force [TimeInForceStrict] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. Here are the supported values: - `Day` - Day. The order is valid only for the trading day on which it is placed. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param brokerage_order_id [String] The Brokerage Order ID of the order to replace.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param price [Float] The limit price for `Limit` and `StopLimit` orders.
    # @param symbol [String] The security's trading ticker symbol
    # @param stop [Float] The price at which a stop order is triggered for `Stop` and `StopLimit` orders.
    # @param units [Float] 
    # @param body [ManualTradeReplaceForm] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def replace_order_with_http_info(action:, order_type:, time_in_force:, account_id:, brokerage_order_id:, user_id:, user_secret:, price: SENTINEL, symbol: SENTINEL, stop: SENTINEL, units: SENTINEL, extra: {})
      _body = {}
      _body[:action] = action if action != SENTINEL
      _body[:order_type] = order_type if order_type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:price] = price if price != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:stop] = stop if stop != SENTINEL
      _body[:units] = units if units != SENTINEL
      manual_trade_replace_form = _body
      replace_order_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, manual_trade_replace_form, extra)
    end

    # Replace crypto order
    # Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order's brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param brokerage_order_id [String] The Brokerage Order ID of the order to replace.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_replace_form [ManualTradeReplaceForm] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def replace_order_impl(account_id, brokerage_order_id, user_id, user_secret, manual_trade_replace_form, opts = {})
      data, _status_code, _headers = replace_order_with_http_info(account_id, brokerage_order_id, user_id, user_secret, manual_trade_replace_form, opts)
      data
    end

    # Replace crypto order
    # Replaces an existing pending order with a new one. The way this works is brokerage dependent, but usually involves cancelling the existing order and placing a new one. The order&#39;s brokerage_order_id may or may not change, be sure to use the one returned in the response going forward. Only supported on some brokerages 
    # @param account_id [String] The ID of the account to execute the trade on.
    # @param brokerage_order_id [String] The Brokerage Order ID of the order to replace.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param manual_trade_replace_form [ManualTradeReplaceForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def replace_order_with_http_info_impl(account_id, brokerage_order_id, user_id, user_secret, manual_trade_replace_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.replace_order ...'
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.replace_order"
      end
      # verify the required parameter 'brokerage_order_id' is set
      if @api_client.config.client_side_validation && brokerage_order_id.nil?
        fail ArgumentError, "Missing the required parameter 'brokerage_order_id' when calling TradingApi.replace_order"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.replace_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.replace_order"
      end
      # verify the required parameter 'manual_trade_replace_form' is set
      if @api_client.config.client_side_validation && manual_trade_replace_form.nil?
        fail ArgumentError, "Missing the required parameter 'manual_trade_replace_form' when calling TradingApi.replace_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/simple/{brokerageOrderId}/replace'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s)).sub('{' + 'brokerageOrderId' + '}', CGI.escape(brokerage_order_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(manual_trade_replace_form)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.replace_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#replace_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get crypto pairs
    #
    # Searches cryptocurrency pairs instruments accessible to the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def search_cryptocurrency_pair_instruments(user_id:, user_secret:, account_id:, base: SENTINEL, quote: SENTINEL, extra: {})
      extra[:base] = base if base != SENTINEL
      extra[:quote] = quote if quote != SENTINEL
      data, _status_code, _headers = search_cryptocurrency_pair_instruments_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # Get crypto pairs
    #
    # Searches cryptocurrency pairs instruments accessible to the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def search_cryptocurrency_pair_instruments_with_http_info(user_id:, user_secret:, account_id:, base: SENTINEL, quote: SENTINEL, extra: {})
      extra[:base] = base if base != SENTINEL
      extra[:quote] = quote if quote != SENTINEL
      search_cryptocurrency_pair_instruments_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # Get crypto pairs
    # Searches cryptocurrency pairs instruments accessible to the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base 
    # @option opts [String] :quote 
    # @return [TradingSearchCryptocurrencyPairInstruments200Response]
    private def search_cryptocurrency_pair_instruments_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = search_cryptocurrency_pair_instruments_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # Get crypto pairs
    # Searches cryptocurrency pairs instruments accessible to the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :base 
    # @option opts [String] :quote 
    # @return [Array<(TradingSearchCryptocurrencyPairInstruments200Response, Integer, Hash)>] TradingSearchCryptocurrencyPairInstruments200Response data, response status code and response headers
    private def search_cryptocurrency_pair_instruments_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TradingApi.search_cryptocurrency_pair_instruments ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling TradingApi.search_cryptocurrency_pair_instruments"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling TradingApi.search_cryptocurrency_pair_instruments"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling TradingApi.search_cryptocurrency_pair_instruments"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/instruments/cryptocurrencyPairs'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'base'] = opts[:'base'] if !opts[:'base'].nil?
      query_params[:'quote'] = opts[:'quote'] if !opts[:'quote'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TradingSearchCryptocurrencyPairInstruments200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"TradingApi.search_cryptocurrency_pair_instruments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TradingApi#search_cryptocurrency_pair_instruments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Trading = TradingApi::new
end
