=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class CryptoTradingApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get cryptocurrency pair quote
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

    # Get cryptocurrency pair quote
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

    # Get cryptocurrency pair quote
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

    # Get cryptocurrency pair quote
    # Gets a quote for the specified account. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param instrument_symbol [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CryptocurrencyPairQuote, Integer, Hash)>] CryptocurrencyPairQuote data, response status code and response headers
    private def get_cryptocurrency_pair_quote_with_http_info_impl(user_id, user_secret, account_id, instrument_symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoTradingApi.get_cryptocurrency_pair_quote ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoTradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoTradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoTradingApi.get_cryptocurrency_pair_quote"
      end
      # verify the required parameter 'instrument_symbol' is set
      if @api_client.config.client_side_validation && instrument_symbol.nil?
        fail ArgumentError, "Missing the required parameter 'instrument_symbol' when calling CryptoTradingApi.get_cryptocurrency_pair_quote"
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
        :operation => :"CryptoTradingApi.get_cryptocurrency_pair_quote",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoTradingApi#get_cryptocurrency_pair_quote\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Place order v2
    #
    # Places an order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [String] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [String] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [String] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
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

    # Place order v2
    #
    # Places an order in the specified account.
    # This endpoint does not compute the impact to the account balance from the order before submitting the order.
    #
    # @param instrument [TradingInstrument] 
    # @param side [ActionStrict] The action describes the intent or side of a trade. This is either `BUY` or `SELL`.
    # @param type [SimpleOrderFormType] The type of order to place.
    # @param time_in_force [SimpleOrderFormTimeInForce] The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled. - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely. - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled. - `GTD` - Good Til Date. The order is valid until the specified date. 
    # @param amount [String] The amount of the base currency to buy or sell.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param limit_price [String] The limit price. Required if the order type is LIMIT, STOP_LOSS_LIMIT or TAKE_PROFIT_LIMIT.
    # @param stop_price [String] The stop price. Required if the order type is STOP_LOSS_MARKET, STOP_LOSS_LIMIT, TAKE_PROFIT_MARKET or TAKE_PROFIT_LIMIT.
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

    # Place order v2
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

    # Place order v2
    # Places an order in the specified account. This endpoint does not compute the impact to the account balance from the order before submitting the order. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param simple_order_form [SimpleOrderForm] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderUpdatedResponse, Integer, Hash)>] OrderUpdatedResponse data, response status code and response headers
    private def place_simple_order_with_http_info_impl(user_id, user_secret, account_id, simple_order_form, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CryptoTradingApi.place_simple_order ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoTradingApi.place_simple_order"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoTradingApi.place_simple_order"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoTradingApi.place_simple_order"
      end
      # verify the required parameter 'simple_order_form' is set
      if @api_client.config.client_side_validation && simple_order_form.nil?
        fail ArgumentError, "Missing the required parameter 'simple_order_form' when calling CryptoTradingApi.place_simple_order"
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
        :operation => :"CryptoTradingApi.place_simple_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoTradingApi#place_simple_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Search cryptocurrency pairs instruments
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

    # Search cryptocurrency pairs instruments
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

    # Search cryptocurrency pairs instruments
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

    # Search cryptocurrency pairs instruments
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
        @api_client.config.logger.debug 'Calling API: CryptoTradingApi.search_cryptocurrency_pair_instruments ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling CryptoTradingApi.search_cryptocurrency_pair_instruments"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling CryptoTradingApi.search_cryptocurrency_pair_instruments"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling CryptoTradingApi.search_cryptocurrency_pair_instruments"
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
        :operation => :"CryptoTradingApi.search_cryptocurrency_pair_instruments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CryptoTradingApi#search_cryptocurrency_pair_instruments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  CryptoTrading = CryptoTradingApi::new
end
