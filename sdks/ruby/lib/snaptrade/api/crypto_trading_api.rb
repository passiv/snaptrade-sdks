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
