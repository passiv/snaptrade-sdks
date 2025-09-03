=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class ReferenceDataApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get exchange rate of a currency pair
    #
    # Returns an Exchange Rate Pair object for the specified Currency Pair.
    #
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_currency_exchange_rate_pair(currency_pair:, extra: {})
      data, _status_code, _headers = get_currency_exchange_rate_pair_with_http_info_impl(currency_pair, extra)
      data
    end

    # Get exchange rate of a currency pair
    #
    # Returns an Exchange Rate Pair object for the specified Currency Pair.
    #
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_currency_exchange_rate_pair_with_http_info(currency_pair:, extra: {})
      get_currency_exchange_rate_pair_with_http_info_impl(currency_pair, extra)
    end

    # Get exchange rate of a currency pair
    # Returns an Exchange Rate Pair object for the specified Currency Pair.
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] opts the optional parameters
    # @return [ExchangeRatePairs]
    private def get_currency_exchange_rate_pair_impl(currency_pair, opts = {})
      data, _status_code, _headers = get_currency_exchange_rate_pair_with_http_info(currency_pair, opts)
      data
    end

    # Get exchange rate of a currency pair
    # Returns an Exchange Rate Pair object for the specified Currency Pair.
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExchangeRatePairs, Integer, Hash)>] ExchangeRatePairs data, response status code and response headers
    private def get_currency_exchange_rate_pair_with_http_info_impl(currency_pair, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_currency_exchange_rate_pair ...'
      end
      # verify the required parameter 'currency_pair' is set
      if @api_client.config.client_side_validation && currency_pair.nil?
        fail ArgumentError, "Missing the required parameter 'currency_pair' when calling ReferenceDataApi.get_currency_exchange_rate_pair"
      end
      # resource path
      local_var_path = '/currencies/rates/{currencyPair}'.sub('{' + 'currencyPair' + '}', CGI.escape(currency_pair.to_s))

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
      return_type = opts[:debug_return_type] || 'ExchangeRatePairs'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_currency_exchange_rate_pair",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_currency_exchange_rate_pair\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get Client Info
    #
    # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_partner_info(extra: {})
      data, _status_code, _headers = get_partner_info_with_http_info_impl(extra)
      data
    end

    # Get Client Info
    #
    # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_partner_info_with_http_info(extra: {})
      get_partner_info_with_http_info_impl(extra)
    end

    # Get Client Info
    # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
    # @param [Hash] opts the optional parameters
    # @return [PartnerData]
    private def get_partner_info_impl(opts = {})
      data, _status_code, _headers = get_partner_info_with_http_info(opts)
      data
    end

    # Get Client Info
    # Returns configurations for your SnapTrade Client ID, including allowed brokerages and data access.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartnerData, Integer, Hash)>] PartnerData data, response status code and response headers
    private def get_partner_info_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_partner_info ...'
      end
      # resource path
      local_var_path = '/snapTrade/partners'

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
      return_type = opts[:debug_return_type] || 'PartnerData'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_partner_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_partner_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List security types
    #
    # Return all available security types supported by SnapTrade.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_security_types(extra: {})
      data, _status_code, _headers = get_security_types_with_http_info_impl(extra)
      data
    end

    # List security types
    #
    # Return all available security types supported by SnapTrade.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_security_types_with_http_info(extra: {})
      get_security_types_with_http_info_impl(extra)
    end

    # List security types
    # Return all available security types supported by SnapTrade.
    # @param [Hash] opts the optional parameters
    # @return [Array<SecurityType>]
    private def get_security_types_impl(opts = {})
      data, _status_code, _headers = get_security_types_with_http_info(opts)
      data
    end

    # List security types
    # Return all available security types supported by SnapTrade.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SecurityType>, Integer, Hash)>] Array<SecurityType> data, response status code and response headers
    private def get_security_types_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_security_types ...'
      end
      # resource path
      local_var_path = '/securityTypes'

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
      return_type = opts[:debug_return_type] || 'Array<SecurityType>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_security_types",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_security_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get exchanges
    #
    # Returns a list of all supported Exchanges.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_stock_exchanges(extra: {})
      data, _status_code, _headers = get_stock_exchanges_with_http_info_impl(extra)
      data
    end

    # Get exchanges
    #
    # Returns a list of all supported Exchanges.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_stock_exchanges_with_http_info(extra: {})
      get_stock_exchanges_with_http_info_impl(extra)
    end

    # Get exchanges
    # Returns a list of all supported Exchanges.
    # @param [Hash] opts the optional parameters
    # @return [Array<Exchange>]
    private def get_stock_exchanges_impl(opts = {})
      data, _status_code, _headers = get_stock_exchanges_with_http_info(opts)
      data
    end

    # Get exchanges
    # Returns a list of all supported Exchanges.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Exchange>, Integer, Hash)>] Array<Exchange> data, response status code and response headers
    private def get_stock_exchanges_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_stock_exchanges ...'
      end
      # resource path
      local_var_path = '/exchanges'

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
      return_type = opts[:debug_return_type] || 'Array<Exchange>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_stock_exchanges",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_stock_exchanges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Search symbols
    #
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.
    #
    # @param substring [String] The search query for symbols.
    # @param body [SymbolQuery] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_symbols(substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?
      data, _status_code, _headers = get_symbols_with_http_info_impl(extra)
      data
    end

    # Search symbols
    #
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.
    #
    # @param substring [String] The search query for symbols.
    # @param body [SymbolQuery] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_symbols_with_http_info(substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?
      get_symbols_with_http_info_impl(extra)
    end

    # Search symbols
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned. 
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<UniversalSymbol>]
    private def get_symbols_impl(opts = {})
      data, _status_code, _headers = get_symbols_with_http_info(opts)
      data
    end

    # Search symbols
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned. 
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<(Array<UniversalSymbol>, Integer, Hash)>] Array<UniversalSymbol> data, response status code and response headers
    private def get_symbols_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_symbols ...'
      end
      # resource path
      local_var_path = '/symbols'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'symbol_query'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<UniversalSymbol>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_symbols",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_symbols\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get symbol detail
    #
    # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.
    #
    # @param query [String] The ticker or Universal Symbol ID to look up the symbol with.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_symbols_by_ticker(query:, extra: {})
      data, _status_code, _headers = get_symbols_by_ticker_with_http_info_impl(query, extra)
      data
    end

    # Get symbol detail
    #
    # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on "Yahoo Finance Market Coverage and Data Delays"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results.
    #
    # @param query [String] The ticker or Universal Symbol ID to look up the symbol with.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_symbols_by_ticker_with_http_info(query:, extra: {})
      get_symbols_by_ticker_with_http_info_impl(query, extra)
    end

    # Get symbol detail
    # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \"Yahoo Finance Market Coverage and Data Delays\"). For example, for securities traded on the Toronto Stock Exchange, the symbol has a '.TO' suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results. 
    # @param query [String] The ticker or Universal Symbol ID to look up the symbol with.
    # @param [Hash] opts the optional parameters
    # @return [UniversalSymbol]
    private def get_symbols_by_ticker_impl(query, opts = {})
      data, _status_code, _headers = get_symbols_by_ticker_with_http_info(query, opts)
      data
    end

    # Get symbol detail
    # Returns the Universal Symbol object specified by the ticker or the Universal Symbol ID. When a ticker is specified, the first matching result is returned. We largely follow the [Yahoo Finance ticker format](https://help.yahoo.com/kb/SLN2310.html)(click on \&quot;Yahoo Finance Market Coverage and Data Delays\&quot;). For example, for securities traded on the Toronto Stock Exchange, the symbol has a &#39;.TO&#39; suffix. For securities traded on NASDAQ or NYSE, the symbol does not have a suffix. Please use the ticker with the proper suffix for the best results. 
    # @param query [String] The ticker or Universal Symbol ID to look up the symbol with.
    # @param [Hash] opts the optional parameters
    # @return [Array<(UniversalSymbol, Integer, Hash)>] UniversalSymbol data, response status code and response headers
    private def get_symbols_by_ticker_with_http_info_impl(query, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_symbols_by_ticker ...'
      end
      # verify the required parameter 'query' is set
      if @api_client.config.client_side_validation && query.nil?
        fail ArgumentError, "Missing the required parameter 'query' when calling ReferenceDataApi.get_symbols_by_ticker"
      end
      # resource path
      local_var_path = '/symbols/{query}'.sub('{' + 'query' + '}', CGI.escape(query.to_s))

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
      return_type = opts[:debug_return_type] || 'UniversalSymbol'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.get_symbols_by_ticker",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_symbols_by_ticker\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get all brokerage authorization types
    #
    # Returns a list of all defined Brokerage authorization Type objects.
    #
    # @param brokerage [String] Comma separated value of brokerage slugs
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerage_authorization_type(brokerage: SENTINEL, extra: {})
      extra[:brokerage] = brokerage if brokerage != SENTINEL
      data, _status_code, _headers = list_all_brokerage_authorization_type_with_http_info_impl(extra)
      data
    end

    # Get all brokerage authorization types
    #
    # Returns a list of all defined Brokerage authorization Type objects.
    #
    # @param brokerage [String] Comma separated value of brokerage slugs
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerage_authorization_type_with_http_info(brokerage: SENTINEL, extra: {})
      extra[:brokerage] = brokerage if brokerage != SENTINEL
      list_all_brokerage_authorization_type_with_http_info_impl(extra)
    end

    # Get all brokerage authorization types
    # Returns a list of all defined Brokerage authorization Type objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage Comma separated value of brokerage slugs
    # @return [Array<BrokerageAuthorizationTypeReadOnly>]
    private def list_all_brokerage_authorization_type_impl(opts = {})
      data, _status_code, _headers = list_all_brokerage_authorization_type_with_http_info(opts)
      data
    end

    # Get all brokerage authorization types
    # Returns a list of all defined Brokerage authorization Type objects.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage Comma separated value of brokerage slugs
    # @return [Array<(Array<BrokerageAuthorizationTypeReadOnly>, Integer, Hash)>] Array<BrokerageAuthorizationTypeReadOnly> data, response status code and response headers
    private def list_all_brokerage_authorization_type_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.list_all_brokerage_authorization_type ...'
      end
      # resource path
      local_var_path = '/brokerageAuthorizationTypes'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'brokerage'] = opts[:'brokerage'] if !opts[:'brokerage'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<BrokerageAuthorizationTypeReadOnly>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.list_all_brokerage_authorization_type",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_brokerage_authorization_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get brokerage instruments
    #
    # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don't will return an empty list.
    #
    # @param slug [String] A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerage_instruments(slug:, extra: {})
      data, _status_code, _headers = list_all_brokerage_instruments_with_http_info_impl(slug, extra)
      data
    end

    # Get brokerage instruments
    #
    # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don't will return an empty list.
    #
    # @param slug [String] A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerage_instruments_with_http_info(slug:, extra: {})
      list_all_brokerage_instruments_with_http_info_impl(slug, extra)
    end

    # Get brokerage instruments
    # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don't will return an empty list.
    # @param slug [String] A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    # @param [Hash] opts the optional parameters
    # @return [BrokerageInstrumentsResponse]
    private def list_all_brokerage_instruments_impl(slug, opts = {})
      data, _status_code, _headers = list_all_brokerage_instruments_with_http_info(slug, opts)
      data
    end

    # Get brokerage instruments
    # Returns a list of all brokerage instruments available for a given brokerage. Not all brokerages support this. The ones that don&#39;t will return an empty list.
    # @param slug [String] A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    # @param [Hash] opts the optional parameters
    # @return [Array<(BrokerageInstrumentsResponse, Integer, Hash)>] BrokerageInstrumentsResponse data, response status code and response headers
    private def list_all_brokerage_instruments_with_http_info_impl(slug, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.list_all_brokerage_instruments ...'
      end
      # verify the required parameter 'slug' is set
      if @api_client.config.client_side_validation && slug.nil?
        fail ArgumentError, "Missing the required parameter 'slug' when calling ReferenceDataApi.list_all_brokerage_instruments"
      end
      # resource path
      local_var_path = '/brokerages/{slug}/instruments'.sub('{' + 'slug' + '}', CGI.escape(slug.to_s))

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
      return_type = opts[:debug_return_type] || 'BrokerageInstrumentsResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.list_all_brokerage_instruments",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_brokerage_instruments\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get brokerages
    #
    # Returns a list of all defined Brokerage objects.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerages(extra: {})
      data, _status_code, _headers = list_all_brokerages_with_http_info_impl(extra)
      data
    end

    # Get brokerages
    #
    # Returns a list of all defined Brokerage objects.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_brokerages_with_http_info(extra: {})
      list_all_brokerages_with_http_info_impl(extra)
    end

    # Get brokerages
    # Returns a list of all defined Brokerage objects.
    # @param [Hash] opts the optional parameters
    # @return [Array<Brokerage>]
    private def list_all_brokerages_impl(opts = {})
      data, _status_code, _headers = list_all_brokerages_with_http_info(opts)
      data
    end

    # Get brokerages
    # Returns a list of all defined Brokerage objects.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Brokerage>, Integer, Hash)>] Array<Brokerage> data, response status code and response headers
    private def list_all_brokerages_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.list_all_brokerages ...'
      end
      # resource path
      local_var_path = '/brokerages'

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
      return_type = opts[:debug_return_type] || 'Array<Brokerage>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.list_all_brokerages",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_brokerages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get currencies
    #
    # Returns a list of all defined Currency objects.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_currencies(extra: {})
      data, _status_code, _headers = list_all_currencies_with_http_info_impl(extra)
      data
    end

    # Get currencies
    #
    # Returns a list of all defined Currency objects.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_currencies_with_http_info(extra: {})
      list_all_currencies_with_http_info_impl(extra)
    end

    # Get currencies
    # Returns a list of all defined Currency objects.
    # @param [Hash] opts the optional parameters
    # @return [Array<Currency>]
    private def list_all_currencies_impl(opts = {})
      data, _status_code, _headers = list_all_currencies_with_http_info(opts)
      data
    end

    # Get currencies
    # Returns a list of all defined Currency objects.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Currency>, Integer, Hash)>] Array<Currency> data, response status code and response headers
    private def list_all_currencies_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.list_all_currencies ...'
      end
      # resource path
      local_var_path = '/currencies'

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
      return_type = opts[:debug_return_type] || 'Array<Currency>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.list_all_currencies",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get currency exchange rates
    #
    # Returns a list of all Exchange Rate Pairs for all supported Currencies.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_currencies_rates(extra: {})
      data, _status_code, _headers = list_all_currencies_rates_with_http_info_impl(extra)
      data
    end

    # Get currency exchange rates
    #
    # Returns a list of all Exchange Rate Pairs for all supported Currencies.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_all_currencies_rates_with_http_info(extra: {})
      list_all_currencies_rates_with_http_info_impl(extra)
    end

    # Get currency exchange rates
    # Returns a list of all Exchange Rate Pairs for all supported Currencies.
    # @param [Hash] opts the optional parameters
    # @return [Array<ExchangeRatePairs>]
    private def list_all_currencies_rates_impl(opts = {})
      data, _status_code, _headers = list_all_currencies_rates_with_http_info(opts)
      data
    end

    # Get currency exchange rates
    # Returns a list of all Exchange Rate Pairs for all supported Currencies.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExchangeRatePairs>, Integer, Hash)>] Array<ExchangeRatePairs> data, response status code and response headers
    private def list_all_currencies_rates_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.list_all_currencies_rates ...'
      end
      # resource path
      local_var_path = '/currencies/rates'

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
      return_type = opts[:debug_return_type] || 'Array<ExchangeRatePairs>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.list_all_currencies_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_currencies_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Search account symbols
    #
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.
    # 
    # The search results are further limited to the symbols supported by the brokerage for which the account is under.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param substring [String] The search query for symbols.
    # @param body [SymbolQuery] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def symbol_search_user_account(user_id:, user_secret:, account_id:, substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?
      data, _status_code, _headers = symbol_search_user_account_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # Search account symbols
    #
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.
    # 
    # The search results are further limited to the symbols supported by the brokerage for which the account is under.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param substring [String] The search query for symbols.
    # @param body [SymbolQuery] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def symbol_search_user_account_with_http_info(user_id:, user_secret:, account_id:, substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?
      symbol_search_user_account_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # Search account symbols
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.  The search results are further limited to the symbols supported by the brokerage for which the account is under. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<UniversalSymbol>]
    private def symbol_search_user_account_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = symbol_search_user_account_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # Search account symbols
    # Returns a list of Universal Symbol objects that match the given query. The matching takes into consideration both the ticker and the name of the symbol. Only the first 20 results are returned.  The search results are further limited to the symbols supported by the brokerage for which the account is under. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<(Array<UniversalSymbol>, Integer, Hash)>] Array<UniversalSymbol> data, response status code and response headers
    private def symbol_search_user_account_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.symbol_search_user_account ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ReferenceDataApi.symbol_search_user_account"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ReferenceDataApi.symbol_search_user_account"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling ReferenceDataApi.symbol_search_user_account"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/symbols'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'symbol_query'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<UniversalSymbol>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ReferenceDataApi.symbol_search_user_account",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#symbol_search_user_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  ReferenceData = ReferenceDataApi::new
end
