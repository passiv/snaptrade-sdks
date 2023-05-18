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
    # Return the exchange rate of a currency pair
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] opts the optional parameters
    # @return [ExchangeRatePairs]
    def get_currency_exchange_rate_pair(currency_pair, opts = {})
      data, _status_code, _headers = get_currency_exchange_rate_pair_with_http_info(currency_pair, opts)
      data
    end

    # Return the exchange rate of a currency pair
    # @param currency_pair [String] A currency pair based on currency code for example, {CAD-USD}
    # @param [Hash] opts the optional parameters
    # @return [Array<(ExchangeRatePairs, Integer, Hash)>] ExchangeRatePairs data, response status code and response headers
    def get_currency_exchange_rate_pair_with_http_info(currency_pair, opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_currency_exchange_rate_pair\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get metadata related to Snaptrade partner
    # @param [Hash] opts the optional parameters
    # @return [PartnerData]
    def get_partner_info(opts = {})
      data, _status_code, _headers = get_partner_info_with_http_info(opts)
      data
    end

    # Get metadata related to Snaptrade partner
    # @param [Hash] opts the optional parameters
    # @return [Array<(PartnerData, Integer, Hash)>] PartnerData data, response status code and response headers
    def get_partner_info_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_partner_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of all security types.
    # @param [Hash] opts the optional parameters
    # @return [Array<SecurityType>]
    def get_security_types(opts = {})
      data, _status_code, _headers = get_security_types_with_http_info(opts)
      data
    end

    # List of all security types.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<SecurityType>, Integer, Hash)>] Array<SecurityType> data, response status code and response headers
    def get_security_types_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_security_types\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return list of stock exchanges on Passiv and their suffixes
    # @param [Hash] opts the optional parameters
    # @return [Array<Exchange>]
    def get_stock_exchanges(opts = {})
      data, _status_code, _headers = get_stock_exchanges_with_http_info(opts)
      data
    end

    # Return list of stock exchanges on Passiv and their suffixes
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Exchange>, Integer, Hash)>] Array<Exchange> data, response status code and response headers
    def get_stock_exchanges_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_stock_exchanges\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for symbols
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<UniversalSymbol>]
    def get_symbols(opts = {})
      data, _status_code, _headers = get_symbols_with_http_info(opts)
      data
    end

    # Search for symbols
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<(Array<UniversalSymbol>, Integer, Hash)>] Array<UniversalSymbol> data, response status code and response headers
    def get_symbols_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_symbols\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get details of a symbol by the ticker
    # @param ticker [String] The ticker of the UniversalSymbol to get.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol_id OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.
    # @return [UniversalSymbol]
    def get_symbols_by_ticker(ticker, opts = {})
      data, _status_code, _headers = get_symbols_by_ticker_with_http_info(ticker, opts)
      data
    end

    # Get details of a symbol by the ticker
    # @param ticker [String] The ticker of the UniversalSymbol to get.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :symbol_id OPTIONAL IN PATH Can be used instead of the ticker ; The ID of the UniversalSymbol to get.
    # @return [Array<(UniversalSymbol, Integer, Hash)>] UniversalSymbol data, response status code and response headers
    def get_symbols_by_ticker_with_http_info(ticker, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ReferenceDataApi.get_symbols_by_ticker ...'
      end
      # verify the required parameter 'ticker' is set
      if @api_client.config.client_side_validation && ticker.nil?
        fail ArgumentError, "Missing the required parameter 'ticker' when calling ReferenceDataApi.get_symbols_by_ticker"
      end
      # resource path
      local_var_path = '/symbols/{ticker}'.sub('{' + 'ticker' + '}', CGI.escape(ticker.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'symbolId'] = opts[:'symbol_id'] if !opts[:'symbol_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#get_symbols_by_ticker\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of all brokerage authorization types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage Comma separated value of brokerage slugs
    # @return [Array<BrokerageAuthorizationTypeReadOnly>]
    def list_all_brokerage_authorization_type(opts = {})
      data, _status_code, _headers = list_all_brokerage_authorization_type_with_http_info(opts)
      data
    end

    # List of all brokerage authorization types
    # @param [Hash] opts the optional parameters
    # @option opts [String] :brokerage Comma separated value of brokerage slugs
    # @return [Array<(Array<BrokerageAuthorizationTypeReadOnly>, Integer, Hash)>] Array<BrokerageAuthorizationTypeReadOnly> data, response status code and response headers
    def list_all_brokerage_authorization_type_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_brokerage_authorization_type\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of all brokerages.
    # @param [Hash] opts the optional parameters
    # @return [Array<Brokerage>]
    def list_all_brokerages(opts = {})
      data, _status_code, _headers = list_all_brokerages_with_http_info(opts)
      data
    end

    # List of all brokerages.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Brokerage>, Integer, Hash)>] Array<Brokerage> data, response status code and response headers
    def list_all_brokerages_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_brokerages\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # List of all supported currencies
    # @param [Hash] opts the optional parameters
    # @return [Array<Currency>]
    def list_all_currencies(opts = {})
      data, _status_code, _headers = list_all_currencies_with_http_info(opts)
      data
    end

    # List of all supported currencies
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Currency>, Integer, Hash)>] Array<Currency> data, response status code and response headers
    def list_all_currencies_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_currencies\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return the exchange rates of all supported currencies
    # @param [Hash] opts the optional parameters
    # @return [Array<ExchangeRatePairs>]
    def list_all_currencies_rates(opts = {})
      data, _status_code, _headers = list_all_currencies_rates_with_http_info(opts)
      data
    end

    # Return the exchange rates of all supported currencies
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExchangeRatePairs>, Integer, Hash)>] Array<ExchangeRatePairs> data, response status code and response headers
    def list_all_currencies_rates_with_http_info(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#list_all_currencies_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Search for symbols that are supported by a brokerage account using a substring
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account get positions.
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<UniversalSymbol>]
    def symbol_search_user_account(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = symbol_search_user_account_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # Search for symbols that are supported by a brokerage account using a substring
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account get positions.
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<(Array<UniversalSymbol>, Integer, Hash)>] Array<UniversalSymbol> data, response status code and response headers
    def symbol_search_user_account_with_http_info(user_id, user_secret, account_id, opts = {})
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
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ReferenceDataApi#symbol_search_user_account\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
