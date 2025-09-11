=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class OptionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get the options chain for a symbol
    #
    # Returns the option chain for the specified symbol in the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to get the options chain from.
    # @param symbol [String] Universal symbol ID if symbol
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_options_chain(user_id:, user_secret:, account_id:, symbol:, extra: {})
      data, _status_code, _headers = get_options_chain_with_http_info_impl(user_id, user_secret, account_id, symbol, extra)
      data
    end

    # Get the options chain for a symbol
    #
    # Returns the option chain for the specified symbol in the specified account.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to get the options chain from.
    # @param symbol [String] Universal symbol ID if symbol
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_options_chain_with_http_info(user_id:, user_secret:, account_id:, symbol:, extra: {})
      get_options_chain_with_http_info_impl(user_id, user_secret, account_id, symbol, extra)
    end

    # Get the options chain for a symbol
    # Returns the option chain for the specified symbol in the specified account.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to get the options chain from.
    # @param symbol [String] Universal symbol ID if symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<OptionChainInner>]
    private def get_options_chain_impl(user_id, user_secret, account_id, symbol, opts = {})
      data, _status_code, _headers = get_options_chain_with_http_info(user_id, user_secret, account_id, symbol, opts)
      data
    end

    # Get the options chain for a symbol
    # Returns the option chain for the specified symbol in the specified account.
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] The ID of the account to get the options chain from.
    # @param symbol [String] Universal symbol ID if symbol
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OptionChainInner>, Integer, Hash)>] Array<OptionChainInner> data, response status code and response headers
    private def get_options_chain_with_http_info_impl(user_id, user_secret, account_id, symbol, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionsApi.get_options_chain ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OptionsApi.get_options_chain"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling OptionsApi.get_options_chain"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OptionsApi.get_options_chain"
      end
      # verify the required parameter 'symbol' is set
      if @api_client.config.client_side_validation && symbol.nil?
        fail ArgumentError, "Missing the required parameter 'symbol' when calling OptionsApi.get_options_chain"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/optionsChain'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret
      query_params[:'symbol'] = symbol

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<OptionChainInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"OptionsApi.get_options_chain",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#get_options_chain\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List account option positions
    #
    # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).
    # 
    # The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_option_holdings(user_id:, user_secret:, account_id:, extra: {})
      data, _status_code, _headers = list_option_holdings_with_http_info_impl(user_id, user_secret, account_id, extra)
      data
    end

    # List account option positions
    #
    # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).
    # 
    # The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for "Cache Expiry Time" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_option_holdings_with_http_info(user_id:, user_secret:, account_id:, extra: {})
      list_option_holdings_with_http_info_impl(user_id, user_secret, account_id, extra)
    end

    # List account option positions
    # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=d16c4c97b8d5438bbb2d8581ac53b11e) and look for \"Cache Expiry Time\" to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<OptionsPosition>]
    private def list_option_holdings_impl(user_id, user_secret, account_id, opts = {})
      data, _status_code, _headers = list_option_holdings_with_http_info(user_id, user_secret, account_id, opts)
      data
    end

    # List account option positions
    # Returns a list of option positions in the specified account. For stock/ETF/crypto/mutual fund positions, please use the [positions endpoint](/reference/Account%20Information/AccountInformation_getUserAccountPositions).  The data returned here is cached. How long the data is cached for varies by brokerage. Check the [brokerage integrations doc](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v&#x3D;d16c4c97b8d5438bbb2d8581ac53b11e) and look for \&quot;Cache Expiry Time\&quot; to see the exact value for a specific brokerage. **If you need real-time data, please use the [manual refresh](/reference/Connections/Connections_refreshBrokerageAuthorization) endpoint**. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param account_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<OptionsPosition>, Integer, Hash)>] Array<OptionsPosition> data, response status code and response headers
    private def list_option_holdings_with_http_info_impl(user_id, user_secret, account_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: OptionsApi.list_option_holdings ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling OptionsApi.list_option_holdings"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling OptionsApi.list_option_holdings"
      end
      # verify the required parameter 'account_id' is set
      if @api_client.config.client_side_validation && account_id.nil?
        fail ArgumentError, "Missing the required parameter 'account_id' when calling OptionsApi.list_option_holdings"
      end
      # resource path
      local_var_path = '/accounts/{accountId}/options'.sub('{' + 'accountId' + '}', CGI.escape(account_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<OptionsPosition>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"OptionsApi.list_option_holdings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OptionsApi#list_option_holdings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Options = OptionsApi::new
end
