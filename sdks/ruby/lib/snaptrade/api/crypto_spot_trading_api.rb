=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class CryptoSpotTradingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Cancel a crypto spot order.
    #
    # Cancels a cryptocurrency spot order in the specified account.
    #
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param body [TradingCryptoSpotCancelOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_cancel_order(brokerage_order_id:, user_id:, user_secret:, account_id:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      trading_crypto_spot_cancel_order_request = _body
      data, _status_code, _headers = crypto_spot_cancel_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_cancel_order_request, extra)
      data
    end

    # Cancel a crypto spot order.
    #
    # Cancels a cryptocurrency spot order in the specified account.
    #
    # @param brokerage_order_id [String] Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param body [TradingCryptoSpotCancelOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_cancel_order_with_http_info(brokerage_order_id:, user_id:, user_secret:, account_id:, extra: {})
      _body = {}
      _body[:brokerage_order_id] = brokerage_order_id if brokerage_order_id != SENTINEL
      trading_crypto_spot_cancel_order_request = _body
      crypto_spot_cancel_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_cancel_order_request, extra)
    end

    # Cancel a crypto spot order.
    # Cancels a cryptocurrency spot order in the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_cancel_order_request [TradingCryptoSpotCancelOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def crypto_spot_cancel_order_impl(user_id, user_secret, account_id, trading_crypto_spot_cancel_order_request, opts = {})
      data, _status_code, _headers = crypto_spot_cancel_order_with_http_info(user_id, user_secret, account_id, trading_crypto_spot_cancel_order_request, opts)
      data
    end

    # Cancel a crypto spot order.
    # Cancels a cryptocurrency spot order in the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_cancel_order_request [TradingCryptoSpotCancelOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def crypto_spot_cancel_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_cancel_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoSpotTradingApi.crypto_spot_cancel_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoSpotTradingApi.crypto_spot_cancel_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoSpotTradingApi.crypto_spot_cancel_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoSpotTradingApi.crypto_spot_cancel_order"
      end
      # verify the required parameter 'trading_crypto_spot_cancel_order_request' is set
      if @api_client.config.client_side_validation && trading_crypto_spot_cancel_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'trading_crypto_spot_cancel_order_request' when calling CryptoSpotTradingApi.crypto_spot_cancel_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/crypto/spot/cancelOrder'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trading_crypto_spot_cancel_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"CryptoSpotTradingApi.crypto_spot_cancel_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoSpotTradingApi#crypto_spot_cancel_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place a spot order on a crypto exchange
    #
    # Places a spot cryptocurrency order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange.
    #
    # @param symbol [CryptocurrencyPair] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [Type] The type of order to place.
    # @param time_in_force [CryptoSpotOrderRequestBodyTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_place_order(symbol:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      trading_crypto_spot_place_order_request = _body
      data, _status_code, _headers = crypto_spot_place_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, extra)
      data
    end

    # Place a spot order on a crypto exchange
    #
    # Places a spot cryptocurrency order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange.
    #
    # @param symbol [CryptocurrencyPair] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [Type] The type of order to place.
    # @param time_in_force [CryptoSpotOrderRequestBodyTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_place_order_with_http_info(symbol:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      trading_crypto_spot_place_order_request = _body
      crypto_spot_place_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, extra)
    end

    # Place a spot order on a crypto exchange
    # Places a spot cryptocurrency order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_place_order_request [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [AccountOrderRecord]
    private def crypto_spot_place_order_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts = {})
      data, _status_code, _headers = crypto_spot_place_order_with_http_info(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts)
      data
    end

    # Place a spot order on a crypto exchange
    # Places a spot cryptocurrency order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order to the exchange. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_place_order_request [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(AccountOrderRecord, Integer, Hash)>] AccountOrderRecord data, response status code and response headers
    private def crypto_spot_place_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoSpotTradingApi.crypto_spot_place_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoSpotTradingApi.crypto_spot_place_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoSpotTradingApi.crypto_spot_place_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoSpotTradingApi.crypto_spot_place_order"
      end
      # verify the required parameter 'trading_crypto_spot_place_order_request' is set
      if @api_client.config.client_side_validation && trading_crypto_spot_place_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'trading_crypto_spot_place_order_request' when calling CryptoSpotTradingApi.crypto_spot_place_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/crypto/spot/placeOrder'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trading_crypto_spot_place_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'AccountOrderRecord'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"CryptoSpotTradingApi.crypto_spot_place_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoSpotTradingApi#crypto_spot_place_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place a spot order on a crypto exchange
    #
    # Previews a cryptocurrency spot order using the specified account.
    #
    # @param symbol [CryptocurrencyPair] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [Type] The type of order to place.
    # @param time_in_force [CryptoSpotOrderRequestBodyTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_preview_order(symbol:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      trading_crypto_spot_place_order_request = _body
      data, _status_code, _headers = crypto_spot_preview_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, extra)
      data
    end

    # Place a spot order on a crypto exchange
    #
    # Previews a cryptocurrency spot order using the specified account.
    #
    # @param symbol [CryptocurrencyPair] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [Type] The type of order to place.
    # @param time_in_force [CryptoSpotOrderRequestBodyTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [Float] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [Float] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [Float] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
    # @param post_only [Boolean] Required for order type LIMIT. If true orders that would be filled immediately are rejected to avoid incurring TAKER fees.
    # @param expiration_date [Time] The expiration date of the order. Required if the time_in_force is GTD.
    # @param body [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_preview_order_with_http_info(symbol:, side:, type:, time_in_force:, amount:, user_id:, user_secret:, account_id:, limit_price: SENTINEL, stop_price: SENTINEL, post_only: SENTINEL, expiration_date: SENTINEL, extra: {})
      _body = {}
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:side] = side if side != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:time_in_force] = time_in_force if time_in_force != SENTINEL
      _body[:amount] = amount if amount != SENTINEL
      _body[:limit_price] = limit_price if limit_price != SENTINEL
      _body[:stop_price] = stop_price if stop_price != SENTINEL
      _body[:post_only] = post_only if post_only != SENTINEL
      _body[:expiration_date] = expiration_date if expiration_date != SENTINEL
      trading_crypto_spot_place_order_request = _body
      crypto_spot_preview_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, extra)
    end

    # Place a spot order on a crypto exchange
    # Previews a cryptocurrency spot order using the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_place_order_request [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [CryptoSpotOrderPreview]
    private def crypto_spot_preview_order_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts = {})
      data, _status_code, _headers = crypto_spot_preview_order_with_http_info(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts)
      data
    end

    # Place a spot order on a crypto exchange
    # Previews a cryptocurrency spot order using the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param trading_crypto_spot_place_order_request [TradingCryptoSpotPlaceOrderRequest] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CryptoSpotOrderPreview, Integer, Hash)>] CryptoSpotOrderPreview data, response status code and response headers
    private def crypto_spot_preview_order_with_http_info_impl(user_id, user_secret, account_id, trading_crypto_spot_place_order_request, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoSpotTradingApi.crypto_spot_preview_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoSpotTradingApi.crypto_spot_preview_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoSpotTradingApi.crypto_spot_preview_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoSpotTradingApi.crypto_spot_preview_order"
      end
      # verify the required parameter 'trading_crypto_spot_place_order_request' is set
      if @api_client.config.client_side_validation && trading_crypto_spot_place_order_request.nil?
        fail ArgumentError, "Missing the required parameter 'trading_crypto_spot_place_order_request' when calling CryptoSpotTradingApi.crypto_spot_preview_order"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/crypto/spot/previewOrder'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(trading_crypto_spot_place_order_request)

      # return_type
      return_type = opts[:debug_return_type] || 'CryptoSpotOrderPreview'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"CryptoSpotTradingApi.crypto_spot_preview_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoSpotTradingApi#crypto_spot_preview_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get a quote for a cyrptocurrency market
    #
    # Gets a quote for the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_quote(user_id:, user_secret:, account_id:, base:, quote:, extra: {})
      data, _status_code, _headers = crypto_spot_quote_with_http_info_impl(user_id, user_secret, account_id, base, quote, extra)
      data
    end

    # Get a quote for a cyrptocurrency market
    #
    # Gets a quote for the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_quote_with_http_info(user_id:, user_secret:, account_id:, base:, quote:, extra: {})
      crypto_spot_quote_with_http_info_impl(user_id, user_secret, account_id, base, quote, extra)
    end

    # Get a quote for a cyrptocurrency market
    # Gets a quote for the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] opts the optional parameters
    # @return [CryptoSpotQuote]
    private def crypto_spot_quote_impl(user_id, user_secret, account_id, base, quote, opts = {})
      data, _status_code, _headers = crypto_spot_quote_with_http_info(user_id, user_secret, account_id, base, quote, opts)
      data
    end

    # Get a quote for a cyrptocurrency market
    # Gets a quote for the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CryptoSpotQuote, Integer, Hash)>] CryptoSpotQuote data, response status code and response headers
    private def crypto_spot_quote_with_http_info_impl(user_id, user_secret, account_id, base, quote, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoSpotTradingApi.crypto_spot_quote ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoSpotTradingApi.crypto_spot_quote"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoSpotTradingApi.crypto_spot_quote"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoSpotTradingApi.crypto_spot_quote"
      end
      # verify the required parameter 'base' is set
      if @api_client.config.client_side_validation && base.nil?
        fail ArgumentError, "Missing the required parameter 'base' when calling CryptoSpotTradingApi.crypto_spot_quote"
      end
      # verify the required parameter 'quote' is set
      if @api_client.config.client_side_validation && quote.nil?
        fail ArgumentError, "Missing the required parameter 'quote' when calling CryptoSpotTradingApi.crypto_spot_quote"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/crypto/spot/quote'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'base'] = base
      query_params[:'quote'] = quote

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'CryptoSpotQuote'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"CryptoSpotTradingApi.crypto_spot_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoSpotTradingApi#crypto_spot_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Search crypto spot symbols
    #
    # Searches cryptocurrency spot symbols accessible to the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_symbols(user_id:, user_secret:, account_id:, base:, quote: SENTINEL, extra: {})
      extra[:quote] = quote if quote != SENTINEL
      data, _status_code, _headers = crypto_spot_symbols_with_http_info_impl(user_id, user_secret, account_id, base, extra)
      data
    end

    # Search crypto spot symbols
    #
    # Searches cryptocurrency spot symbols accessible to the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param quote [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def crypto_spot_symbols_with_http_info(user_id:, user_secret:, account_id:, base:, quote: SENTINEL, extra: {})
      extra[:quote] = quote if quote != SENTINEL
      crypto_spot_symbols_with_http_info_impl(user_id, user_secret, account_id, base, extra)
    end

    # Search crypto spot symbols
    # Searches cryptocurrency spot symbols accessible to the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :quote 
    # @return [TradingCryptoSpotSymbols200Response]
    private def crypto_spot_symbols_impl(user_id, user_secret, account_id, base, opts = {})
      data, _status_code, _headers = crypto_spot_symbols_with_http_info(user_id, user_secret, account_id, base, opts)
      data
    end

    # Search crypto spot symbols
    # Searches cryptocurrency spot symbols accessible to the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param base [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :quote 
    # @return [Array<(TradingCryptoSpotSymbols200Response, Integer, Hash)>] TradingCryptoSpotSymbols200Response data, response status code and response headers
    private def crypto_spot_symbols_with_http_info_impl(user_id, user_secret, account_id, base, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoSpotTradingApi.crypto_spot_symbols ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoSpotTradingApi.crypto_spot_symbols"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoSpotTradingApi.crypto_spot_symbols"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoSpotTradingApi.crypto_spot_symbols"
      end
      # verify the required parameter 'base' is set
      if @api_client.config.client_side_validation && base.nil?
        fail ArgumentError, "Missing the required parameter 'base' when calling CryptoSpotTradingApi.crypto_spot_symbols"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/trading/crypto/spot/symbols'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'base'] = base
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
      return_type = opts[:debug_return_type] || 'TradingCryptoSpotSymbols200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"CryptoSpotTradingApi.crypto_spot_symbols",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoSpotTradingApi#crypto_spot_symbols\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  CryptoSpotTrading = CryptoSpotTradingApi::new
end
