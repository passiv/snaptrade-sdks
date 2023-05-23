=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'cgi'

module SnapTrade
  class PortfolioManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Adds an asset to exclude to a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to exclude an asset.
    # @param id [String] 
    # @param symbol [String] 
    # @param raw_symbol [String] 
    # @param description [String] 
    # @param currency [Currency] 
    # @param exchange [Exchange] 
    # @param type [SecurityType] 
    # @param currencies [Array<Currency>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_portfolio_excluded_asset(portfolio_group_id:, id: SENTINEL, symbol: SENTINEL, raw_symbol: SENTINEL, description: SENTINEL, currency: SENTINEL, exchange: SENTINEL, type: SENTINEL, currencies: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:raw_symbol] = raw_symbol if raw_symbol != SENTINEL
      _body[:description] = description if description != SENTINEL
      _body[:currency] = currency if currency != SENTINEL
      _body[:exchange] = exchange if exchange != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:currencies] = currencies if currencies != SENTINEL
      extra[:universal_symbol] = _body if !_body.empty?

      data, _status_code, _headers = add_portfolio_excluded_asset_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Adds an asset to exclude to a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to exclude an asset.
    # @param id [String] 
    # @param symbol [String] 
    # @param raw_symbol [String] 
    # @param description [String] 
    # @param currency [Currency] 
    # @param exchange [Exchange] 
    # @param type [SecurityType] 
    # @param currencies [Array<Currency>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def add_portfolio_excluded_asset_with_http_info(portfolio_group_id:, id: SENTINEL, symbol: SENTINEL, raw_symbol: SENTINEL, description: SENTINEL, currency: SENTINEL, exchange: SENTINEL, type: SENTINEL, currencies: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:raw_symbol] = raw_symbol if raw_symbol != SENTINEL
      _body[:description] = description if description != SENTINEL
      _body[:currency] = currency if currency != SENTINEL
      _body[:exchange] = exchange if exchange != SENTINEL
      _body[:type] = type if type != SENTINEL
      _body[:currencies] = currencies if currencies != SENTINEL
      extra[:universal_symbol] = _body if !_body.empty?

      add_portfolio_excluded_asset_with_http_info_impl(portfolio_group_id, extra)
    end

    # Adds an asset to exclude to a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to exclude an asset.
    # @param [Hash] opts the optional parameters
    # @option opts [UniversalSymbol] :universal_symbol 
    # @return [ExcludedAsset]
    def add_portfolio_excluded_asset_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = add_portfolio_excluded_asset_with_http_info(portfolio_group_id, opts)
      data
    end

    # Adds an asset to exclude to a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to exclude an asset.
    # @param [Hash] opts the optional parameters
    # @option opts [UniversalSymbol] :universal_symbol 
    # @return [Array<(ExcludedAsset, Integer, Hash)>] ExcludedAsset data, response status code and response headers
    def add_portfolio_excluded_asset_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.add_portfolio_excluded_asset ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.add_portfolio_excluded_asset"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/excludedassets'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'universal_symbol'])

      # return_type
      return_type = opts[:debug_return_type] || 'ExcludedAsset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.add_portfolio_excluded_asset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#add_portfolio_excluded_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Create new portfolio group
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param id [String] 
    # @param name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create(user_id:, user_secret:, id: SENTINEL, name: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:name] = name if name != SENTINEL
      request_body = _body

      data, _status_code, _headers = create_with_http_info_impl(user_id, user_secret, request_body, extra)
      data
    end

    # Create new portfolio group
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param id [String] 
    # @param name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_with_http_info(user_id:, user_secret:, id: SENTINEL, name: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:name] = name if name != SENTINEL
      request_body = _body

      create_with_http_info_impl(user_id, user_secret, request_body, extra)
    end

    # Create new portfolio group
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<PortfolioGroup>]
    def create_impl(user_id, user_secret, request_body, opts = {})
      data, _status_code, _headers = create_with_http_info(user_id, user_secret, request_body, opts)
      data
    end

    # Create new portfolio group
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PortfolioGroup>, Integer, Hash)>] Array<PortfolioGroup> data, response status code and response headers
    def create_with_http_info_impl(user_id, user_secret, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.create ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling PortfolioManagementApi.create"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling PortfolioManagementApi.create"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling PortfolioManagementApi.create"
      end
      # resource path
      local_var_path = '/portfolioGroups'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'Array<PortfolioGroup>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.create",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#create\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Create a new model asset class
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_asset_class(extra: {})

      data, _status_code, _headers = create_asset_class_with_http_info_impl(extra)
      data
    end

    # Create a new model asset class
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_asset_class_with_http_info(extra: {})

      create_asset_class_with_http_info_impl(extra)
    end

    # Create a new model asset class
    # @param [Hash] opts the optional parameters
    # @return [ModelAssetClassDetails]
    def create_asset_class_impl(opts = {})
      data, _status_code, _headers = create_asset_class_with_http_info(opts)
      data
    end

    # Create a new model asset class
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelAssetClassDetails, Integer, Hash)>] ModelAssetClassDetails data, response status code and response headers
    def create_asset_class_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.create_asset_class ...'
      end
      # resource path
      local_var_path = '/modelAssetClass'

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
      return_type = opts[:debug_return_type] || 'ModelAssetClassDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.create_asset_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#create_asset_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Creates a new model portfolio
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_model_portfolio(extra: {})

      data, _status_code, _headers = create_model_portfolio_with_http_info_impl(extra)
      data
    end

    # Creates a new model portfolio
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def create_model_portfolio_with_http_info(extra: {})

      create_model_portfolio_with_http_info_impl(extra)
    end

    # Creates a new model portfolio
    # @param [Hash] opts the optional parameters
    # @return [ModelPortfolioDetails]
    def create_model_portfolio_impl(opts = {})
      data, _status_code, _headers = create_model_portfolio_with_http_info(opts)
      data
    end

    # Creates a new model portfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelPortfolioDetails, Integer, Hash)>] ModelPortfolioDetails data, response status code and response headers
    def create_model_portfolio_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.create_model_portfolio ...'
      end
      # resource path
      local_var_path = '/modelPortfolio'

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
      return_type = opts[:debug_return_type] || 'ModelPortfolioDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.create_model_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#create_model_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Deletes a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_asset_class(model_asset_class_id:, extra: {})

      delete_asset_class_with_http_info_impl(model_asset_class_id, extra)
      nil
    end

    # Deletes a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_asset_class_with_http_info(model_asset_class_id:, extra: {})

      delete_asset_class_with_http_info_impl(model_asset_class_id, extra)
    end

    # Deletes a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_asset_class_impl(model_asset_class_id, opts = {})
      delete_asset_class_with_http_info(model_asset_class_id, opts)
      nil
    end

    # Deletes a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_asset_class_with_http_info_impl(model_asset_class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.delete_asset_class ...'
      end
      # verify the required parameter 'model_asset_class_id' is set
      if @api_client.config.client_side_validation && model_asset_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_asset_class_id' when calling PortfolioManagementApi.delete_asset_class"
      end
      # resource path
      local_var_path = '/modelAssetClass/{modelAssetClassId}'.sub('{' + 'modelAssetClassId' + '}', CGI.escape(model_asset_class_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.delete_asset_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#delete_asset_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Unexclude an asset from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to unexclude an asset.
    # @param symbol_id [String] The ID of the excluded asset Symbol to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_excluded_asset(portfolio_group_id:, symbol_id:, extra: {})

      delete_excluded_asset_with_http_info_impl(portfolio_group_id, symbol_id, extra)
      nil
    end

    # Unexclude an asset from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to unexclude an asset.
    # @param symbol_id [String] The ID of the excluded asset Symbol to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_excluded_asset_with_http_info(portfolio_group_id:, symbol_id:, extra: {})

      delete_excluded_asset_with_http_info_impl(portfolio_group_id, symbol_id, extra)
    end

    # Unexclude an asset from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to unexclude an asset.
    # @param symbol_id [String] The ID of the excluded asset Symbol to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_excluded_asset_impl(portfolio_group_id, symbol_id, opts = {})
      delete_excluded_asset_with_http_info(portfolio_group_id, symbol_id, opts)
      nil
    end

    # Unexclude an asset from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to unexclude an asset.
    # @param symbol_id [String] The ID of the excluded asset Symbol to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_excluded_asset_with_http_info_impl(portfolio_group_id, symbol_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.delete_excluded_asset ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.delete_excluded_asset"
      end
      # verify the required parameter 'symbol_id' is set
      if @api_client.config.client_side_validation && symbol_id.nil?
        fail ArgumentError, "Missing the required parameter 'symbol_id' when calling PortfolioManagementApi.delete_excluded_asset"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/excludedassets/{symbolId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s)).sub('{' + 'symbolId' + '}', CGI.escape(symbol_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.delete_excluded_asset",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#delete_excluded_asset\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Deletes a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_model_portfolio_by_id(model_portfolio_id:, extra: {})

      delete_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, extra)
      nil
    end

    # Deletes a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_model_portfolio_by_id_with_http_info(model_portfolio_id:, extra: {})

      delete_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, extra)
    end

    # Deletes a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to delete.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_model_portfolio_by_id_impl(model_portfolio_id, opts = {})
      delete_model_portfolio_by_id_with_http_info(model_portfolio_id, opts)
      nil
    end

    # Deletes a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.delete_model_portfolio_by_id ...'
      end
      # verify the required parameter 'model_portfolio_id' is set
      if @api_client.config.client_side_validation && model_portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_portfolio_id' when calling PortfolioManagementApi.delete_model_portfolio_by_id"
      end
      # resource path
      local_var_path = '/modelPortfolio/{modelPortfolioId}'.sub('{' + 'modelPortfolioId' + '}', CGI.escape(model_portfolio_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.delete_model_portfolio_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#delete_model_portfolio_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Remove a target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_portfoli(portfolio_group_id:, extra: {})

      data, _status_code, _headers = delete_portfoli_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Remove a target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_portfoli_with_http_info(portfolio_group_id:, extra: {})

      delete_portfoli_with_http_info_impl(portfolio_group_id, extra)
    end

    # Remove a target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to delete.
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroup]
    def delete_portfoli_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = delete_portfoli_with_http_info(portfolio_group_id, opts)
      data
    end

    # Remove a target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroup, Integer, Hash)>] PortfolioGroup data, response status code and response headers
    def delete_portfoli_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.delete_portfoli ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.delete_portfoli"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PortfolioGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.delete_portfoli",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#delete_portfoli\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Remove a TargetAsset.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to remove the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_portfolio_target_by_id(portfolio_group_id:, target_asset_id:, extra: {})

      data, _status_code, _headers = delete_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, extra)
      data
    end

    # Remove a TargetAsset.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to remove the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to delete.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_portfolio_target_by_id_with_http_info(portfolio_group_id:, target_asset_id:, extra: {})

      delete_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, extra)
    end

    # Remove a TargetAsset.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to remove the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to delete.
    # @param [Hash] opts the optional parameters
    # @return [TargetAsset]
    def delete_portfolio_target_by_id_impl(portfolio_group_id, target_asset_id, opts = {})
      data, _status_code, _headers = delete_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id, opts)
      data
    end

    # Remove a TargetAsset.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to remove the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to delete.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TargetAsset, Integer, Hash)>] TargetAsset data, response status code and response headers
    def delete_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.delete_portfolio_target_by_id ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.delete_portfolio_target_by_id"
      end
      # verify the required parameter 'target_asset_id' is set
      if @api_client.config.client_side_validation && target_asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'target_asset_id' when calling PortfolioManagementApi.delete_portfolio_target_by_id"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/targets/{targetAssetId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s)).sub('{' + 'targetAssetId' + '}', CGI.escape(target_asset_id.to_s))

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
      return_type = opts[:debug_return_type] || 'TargetAsset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.delete_portfolio_target_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#delete_portfolio_target_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get details of a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def detail_asset_class(model_asset_class_id:, extra: {})

      data, _status_code, _headers = detail_asset_class_with_http_info_impl(model_asset_class_id, extra)
      data
    end

    # Get details of a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def detail_asset_class_with_http_info(model_asset_class_id:, extra: {})

      detail_asset_class_with_http_info_impl(model_asset_class_id, extra)
    end

    # Get details of a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to get.
    # @param [Hash] opts the optional parameters
    # @return [ModelAssetClassDetails]
    def detail_asset_class_impl(model_asset_class_id, opts = {})
      data, _status_code, _headers = detail_asset_class_with_http_info(model_asset_class_id, opts)
      data
    end

    # Get details of a model asset class
    # @param model_asset_class_id [String] The ID of the model asset class to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelAssetClassDetails, Integer, Hash)>] ModelAssetClassDetails data, response status code and response headers
    def detail_asset_class_with_http_info_impl(model_asset_class_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.detail_asset_class ...'
      end
      # verify the required parameter 'model_asset_class_id' is set
      if @api_client.config.client_side_validation && model_asset_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_asset_class_id' when calling PortfolioManagementApi.detail_asset_class"
      end
      # resource path
      local_var_path = '/modelAssetClass/{modelAssetClassId}'.sub('{' + 'modelAssetClassId' + '}', CGI.escape(model_asset_class_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ModelAssetClassDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.detail_asset_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#detail_asset_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Return an individual trade
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param calculated_trade_id [String] The ID of calculated trade to get account impact
    # @param trade_id [String] The ID of trade object
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_calculated_trade_by_id(portfolio_group_id:, calculated_trade_id:, trade_id:, extra: {})

      data, _status_code, _headers = get_calculated_trade_by_id_with_http_info_impl(portfolio_group_id, calculated_trade_id, trade_id, extra)
      data
    end

    # Return an individual trade
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param calculated_trade_id [String] The ID of calculated trade to get account impact
    # @param trade_id [String] The ID of trade object
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_calculated_trade_by_id_with_http_info(portfolio_group_id:, calculated_trade_id:, trade_id:, extra: {})

      get_calculated_trade_by_id_with_http_info_impl(portfolio_group_id, calculated_trade_id, trade_id, extra)
    end

    # Return an individual trade
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param calculated_trade_id [String] The ID of calculated trade to get account impact
    # @param trade_id [String] The ID of trade object
    # @param [Hash] opts the optional parameters
    # @return [Array<Trade>]
    def get_calculated_trade_by_id_impl(portfolio_group_id, calculated_trade_id, trade_id, opts = {})
      data, _status_code, _headers = get_calculated_trade_by_id_with_http_info(portfolio_group_id, calculated_trade_id, trade_id, opts)
      data
    end

    # Return an individual trade
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param calculated_trade_id [String] The ID of calculated trade to get account impact
    # @param trade_id [String] The ID of trade object
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Trade>, Integer, Hash)>] Array<Trade> data, response status code and response headers
    def get_calculated_trade_by_id_with_http_info_impl(portfolio_group_id, calculated_trade_id, trade_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_calculated_trade_by_id ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_calculated_trade_by_id"
      end
      # verify the required parameter 'calculated_trade_id' is set
      if @api_client.config.client_side_validation && calculated_trade_id.nil?
        fail ArgumentError, "Missing the required parameter 'calculated_trade_id' when calling PortfolioManagementApi.get_calculated_trade_by_id"
      end
      # verify the required parameter 'trade_id' is set
      if @api_client.config.client_side_validation && trade_id.nil?
        fail ArgumentError, "Missing the required parameter 'trade_id' when calling PortfolioManagementApi.get_calculated_trade_by_id"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/calculatedtrades/{calculatedTradeId}/{TradeId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s)).sub('{' + 'calculatedTradeId' + '}', CGI.escape(calculated_trade_id.to_s)).sub('{' + 'TradeId' + '}', CGI.escape(trade_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Trade>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_calculated_trade_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_calculated_trade_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get details of a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_model_details_by_id(model_portfolio_id:, extra: {})

      data, _status_code, _headers = get_model_details_by_id_with_http_info_impl(model_portfolio_id, extra)
      data
    end

    # Get details of a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_model_details_by_id_with_http_info(model_portfolio_id:, extra: {})

      get_model_details_by_id_with_http_info_impl(model_portfolio_id, extra)
    end

    # Get details of a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to get.
    # @param [Hash] opts the optional parameters
    # @return [ModelPortfolioDetails]
    def get_model_details_by_id_impl(model_portfolio_id, opts = {})
      data, _status_code, _headers = get_model_details_by_id_with_http_info(model_portfolio_id, opts)
      data
    end

    # Get details of a model portfolio
    # @param model_portfolio_id [String] The ID of the model portfolio to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ModelPortfolioDetails, Integer, Hash)>] ModelPortfolioDetails data, response status code and response headers
    def get_model_details_by_id_with_http_info_impl(model_portfolio_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_model_details_by_id ...'
      end
      # verify the required parameter 'model_portfolio_id' is set
      if @api_client.config.client_side_validation && model_portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_portfolio_id' when calling PortfolioManagementApi.get_model_details_by_id"
      end
      # resource path
      local_var_path = '/modelPortfolio/{modelPortfolioId}'.sub('{' + 'modelPortfolioId' + '}', CGI.escape(model_portfolio_id.to_s))

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
      return_type = opts[:debug_return_type] || 'ModelPortfolioDetails'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_model_details_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_model_details_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get sum of cash balances in portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_balances(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portfolio_balances_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get sum of cash balances in portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_balances_with_http_info(portfolio_group_id:, extra: {})

      get_portfolio_balances_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get sum of cash balances in portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<Balance>]
    def get_portfolio_balances_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portfolio_balances_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get sum of cash balances in portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Balance>, Integer, Hash)>] Array<Balance> data, response status code and response headers
    def get_portfolio_balances_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_balances ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_balances"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/balances'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Balance>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_balances",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_balances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get details of a target portfolio
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_details_by_id(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portfolio_details_by_id_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get details of a target portfolio
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_details_by_id_with_http_info(portfolio_group_id:, extra: {})

      get_portfolio_details_by_id_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get details of a target portfolio
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to get.
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroup]
    def get_portfolio_details_by_id_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portfolio_details_by_id_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get details of a target portfolio
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroup, Integer, Hash)>] PortfolioGroup data, response status code and response headers
    def get_portfolio_details_by_id_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_details_by_id ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_details_by_id"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PortfolioGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_details_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_details_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Return a whole bunch of relevant information relating to a portfolio group.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_info(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portfolio_info_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Return a whole bunch of relevant information relating to a portfolio group.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_info_with_http_info(portfolio_group_id:, extra: {})

      get_portfolio_info_with_http_info_impl(portfolio_group_id, extra)
    end

    # Return a whole bunch of relevant information relating to a portfolio group.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroupInfo]
    def get_portfolio_info_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portfolio_info_with_http_info(portfolio_group_id, opts)
      data
    end

    # Return a whole bunch of relevant information relating to a portfolio group.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroupInfo, Integer, Hash)>] PortfolioGroupInfo data, response status code and response headers
    def get_portfolio_info_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_info ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_info"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/info'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PortfolioGroupInfo'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_info",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_info\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the settings.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_settings(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portfolio_settings_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the settings.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_settings_with_http_info(portfolio_group_id:, extra: {})

      get_portfolio_settings_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the settings.
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroupSettings]
    def get_portfolio_settings_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portfolio_settings_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the settings.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroupSettings, Integer, Hash)>] PortfolioGroupSettings data, response status code and response headers
    def get_portfolio_settings_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_settings ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_settings"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/settings'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'PortfolioGroupSettings'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get a specific target from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_target_by_id(portfolio_group_id:, target_asset_id:, extra: {})

      data, _status_code, _headers = get_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, extra)
      data
    end

    # Get a specific target from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to get.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_target_by_id_with_http_info(portfolio_group_id:, target_asset_id:, extra: {})

      get_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, extra)
    end

    # Get a specific target from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to get.
    # @param [Hash] opts the optional parameters
    # @return [TargetAsset]
    def get_portfolio_target_by_id_impl(portfolio_group_id, target_asset_id, opts = {})
      data, _status_code, _headers = get_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id, opts)
      data
    end

    # Get a specific target from a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to get the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to get.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TargetAsset, Integer, Hash)>] TargetAsset data, response status code and response headers
    def get_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_target_by_id ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_target_by_id"
      end
      # verify the required parameter 'target_asset_id' is set
      if @api_client.config.client_side_validation && target_asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'target_asset_id' when calling PortfolioManagementApi.get_portfolio_target_by_id"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/targets/{targetAssetId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s)).sub('{' + 'targetAssetId' + '}', CGI.escape(target_asset_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'TargetAsset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_target_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_target_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get all target assets under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_targets(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portfolio_targets_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get all target assets under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portfolio_targets_with_http_info(portfolio_group_id:, extra: {})

      get_portfolio_targets_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get all target assets under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<TargetAsset>]
    def get_portfolio_targets_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portfolio_targets_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get all target assets under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TargetAsset>, Integer, Hash)>] Array<TargetAsset> data, response status code and response headers
    def get_portfolio_targets_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portfolio_targets ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portfolio_targets"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/targets'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<TargetAsset>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portfolio_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portfolio_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get an array of excluded assets associated with a portfolio group\\
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the excluded assets are linked.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portoflio_excluded_assets(portfolio_group_id:, extra: {})

      data, _status_code, _headers = get_portoflio_excluded_assets_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get an array of excluded assets associated with a portfolio group\\
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the excluded assets are linked.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_portoflio_excluded_assets_with_http_info(portfolio_group_id:, extra: {})

      get_portoflio_excluded_assets_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get an array of excluded assets associated with a portfolio group\\
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the excluded assets are linked.
    # @param [Hash] opts the optional parameters
    # @return [Array<ExcludedAsset>]
    def get_portoflio_excluded_assets_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = get_portoflio_excluded_assets_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get an array of excluded assets associated with a portfolio group\\
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the excluded assets are linked.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ExcludedAsset>, Integer, Hash)>] Array<ExcludedAsset> data, response status code and response headers
    def get_portoflio_excluded_assets_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.get_portoflio_excluded_assets ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.get_portoflio_excluded_assets"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/excludedassets'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ExcludedAsset>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.get_portoflio_excluded_assets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#get_portoflio_excluded_assets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Import target allocation based on portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def import_model_portfolio(portfolio_group_id:, extra: {})

      data, _status_code, _headers = import_model_portfolio_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Import target allocation based on portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def import_model_portfolio_with_http_info(portfolio_group_id:, extra: {})

      import_model_portfolio_with_http_info_impl(portfolio_group_id, extra)
    end

    # Import target allocation based on portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<TargetAsset>]
    def import_model_portfolio_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = import_model_portfolio_with_http_info(portfolio_group_id, opts)
      data
    end

    # Import target allocation based on portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<TargetAsset>, Integer, Hash)>] Array<TargetAsset> data, response status code and response headers
    def import_model_portfolio_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.import_model_portfolio ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.import_model_portfolio"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/import'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<TargetAsset>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.import_model_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#import_model_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # List all portfolio groups
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list(user_id:, user_secret:, extra: {})

      data, _status_code, _headers = list_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # List all portfolio groups
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_with_http_info(user_id:, user_secret:, extra: {})

      list_with_http_info_impl(user_id, user_secret, extra)
    end

    # List all portfolio groups
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<PortfolioGroup>]
    def list_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = list_with_http_info(user_id, user_secret, opts)
      data
    end

    # List all portfolio groups
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<PortfolioGroup>, Integer, Hash)>] Array<PortfolioGroup> data, response status code and response headers
    def list_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.list ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling PortfolioManagementApi.list"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling PortfolioManagementApi.list"
      end
      # resource path
      local_var_path = '/portfolioGroups'

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
      return_type = opts[:debug_return_type] || 'Array<PortfolioGroup>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.list",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#list\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # List of model asset class
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_asset_classes(extra: {})

      data, _status_code, _headers = list_asset_classes_with_http_info_impl(extra)
      data
    end

    # List of model asset class
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_asset_classes_with_http_info(extra: {})

      list_asset_classes_with_http_info_impl(extra)
    end

    # List of model asset class
    # @param [Hash] opts the optional parameters
    # @return [Array<ModelAssetClassDetails>]
    def list_asset_classes_impl(opts = {})
      data, _status_code, _headers = list_asset_classes_with_http_info(opts)
      data
    end

    # List of model asset class
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ModelAssetClassDetails>, Integer, Hash)>] Array<ModelAssetClassDetails> data, response status code and response headers
    def list_asset_classes_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.list_asset_classes ...'
      end
      # resource path
      local_var_path = '/modelAssetClass'

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
      return_type = opts[:debug_return_type] || 'Array<ModelAssetClassDetails>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.list_asset_classes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#list_asset_classes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # List of trades to make to rebalance portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_calculated_trades(portfolio_group_id:, extra: {})

      data, _status_code, _headers = list_calculated_trades_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # List of trades to make to rebalance portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_calculated_trades_with_http_info(portfolio_group_id:, extra: {})

      list_calculated_trades_with_http_info_impl(portfolio_group_id, extra)
    end

    # List of trades to make to rebalance portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param [Hash] opts the optional parameters
    # @return [CalculatedTrade]
    def list_calculated_trades_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = list_calculated_trades_with_http_info(portfolio_group_id, opts)
      data
    end

    # List of trades to make to rebalance portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to perform rebalancing calculations
    # @param [Hash] opts the optional parameters
    # @return [Array<(CalculatedTrade, Integer, Hash)>] CalculatedTrade data, response status code and response headers
    def list_calculated_trades_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.list_calculated_trades ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.list_calculated_trades"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/calculatedtrades'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'CalculatedTrade'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.list_calculated_trades",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#list_calculated_trades\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # List of model portfolio
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_model_portfolio(extra: {})

      data, _status_code, _headers = list_model_portfolio_with_http_info_impl(extra)
      data
    end

    # List of model portfolio
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_model_portfolio_with_http_info(extra: {})

      list_model_portfolio_with_http_info_impl(extra)
    end

    # List of model portfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<ModelPortfolioDetails>]
    def list_model_portfolio_impl(opts = {})
      data, _status_code, _headers = list_model_portfolio_with_http_info(opts)
      data
    end

    # List of model portfolio
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ModelPortfolioDetails>, Integer, Hash)>] Array<ModelPortfolioDetails> data, response status code and response headers
    def list_model_portfolio_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.list_model_portfolio ...'
      end
      # resource path
      local_var_path = '/modelPortfolio'

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
      return_type = opts[:debug_return_type] || 'Array<ModelPortfolioDetails>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.list_model_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#list_model_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get all accounts associated with a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the accounts are linked.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_portfolio_accounts(portfolio_group_id:, extra: {})

      data, _status_code, _headers = list_portfolio_accounts_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Get all accounts associated with a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the accounts are linked.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_portfolio_accounts_with_http_info(portfolio_group_id:, extra: {})

      list_portfolio_accounts_with_http_info_impl(portfolio_group_id, extra)
    end

    # Get all accounts associated with a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the accounts are linked.
    # @param [Hash] opts the optional parameters
    # @return [Array<Account>]
    def list_portfolio_accounts_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = list_portfolio_accounts_with_http_info(portfolio_group_id, opts)
      data
    end

    # Get all accounts associated with a portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which the accounts are linked.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Account>, Integer, Hash)>] Array<Account> data, response status code and response headers
    def list_portfolio_accounts_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.list_portfolio_accounts ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.list_portfolio_accounts"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/accounts'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Account>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.list_portfolio_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#list_portfolio_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Updates model portfolio object
    # @param model_portfolio_id [String] The ID of the model portfolio to update.
    # @param model_portfolio [ModelPortfolio] 
    # @param model_portfolio_security [Array<ModelPortfolioSecurity>] 
    # @param model_portfolio_asset_class [Array<ModelPortfolioAssetClass>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def modify_model_portfolio_by_id(model_portfolio_id:, model_portfolio: SENTINEL, model_portfolio_security: SENTINEL, model_portfolio_asset_class: SENTINEL, extra: {})
      _body = {}
      _body[:model_portfolio] = model_portfolio if model_portfolio != SENTINEL
      _body[:model_portfolio_security] = model_portfolio_security if model_portfolio_security != SENTINEL
      _body[:model_portfolio_asset_class] = model_portfolio_asset_class if model_portfolio_asset_class != SENTINEL
      model_portfolio_details = _body

      modify_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, model_portfolio_details, extra)
      nil
    end

    # Updates model portfolio object
    # @param model_portfolio_id [String] The ID of the model portfolio to update.
    # @param model_portfolio [ModelPortfolio] 
    # @param model_portfolio_security [Array<ModelPortfolioSecurity>] 
    # @param model_portfolio_asset_class [Array<ModelPortfolioAssetClass>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def modify_model_portfolio_by_id_with_http_info(model_portfolio_id:, model_portfolio: SENTINEL, model_portfolio_security: SENTINEL, model_portfolio_asset_class: SENTINEL, extra: {})
      _body = {}
      _body[:model_portfolio] = model_portfolio if model_portfolio != SENTINEL
      _body[:model_portfolio_security] = model_portfolio_security if model_portfolio_security != SENTINEL
      _body[:model_portfolio_asset_class] = model_portfolio_asset_class if model_portfolio_asset_class != SENTINEL
      model_portfolio_details = _body

      modify_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, model_portfolio_details, extra)
    end

    # Updates model portfolio object
    # @param model_portfolio_id [String] The ID of the model portfolio to update.
    # @param model_portfolio_details [ModelPortfolioDetails] Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def modify_model_portfolio_by_id_impl(model_portfolio_id, model_portfolio_details, opts = {})
      modify_model_portfolio_by_id_with_http_info(model_portfolio_id, model_portfolio_details, opts)
      nil
    end

    # Updates model portfolio object
    # @param model_portfolio_id [String] The ID of the model portfolio to update.
    # @param model_portfolio_details [ModelPortfolioDetails] Use this endpoint change model asset class name and to add or remove a model portfolio security/model portfolio asset class. &lt;br /&gt;&lt;br /&gt; * The model portfolio name and model portfolio model type is required. &lt;br /&gt; * The model portfolio model type must be either 0 or 1. [0 -&gt; Securities based, 1 -&gt; Asset Class based] &lt;br /&gt;&lt;br /&gt; * If the model portfolio type is 0, the model portfolio asset class must be an empty array. &lt;br /&gt; * If the model portfolio type is 1, the model portfolio security must be an empty array. &lt;br /&gt;&lt;br /&gt; * When updating the model portfolio security, the percent is required. Only the symbol id is required for the symbol object &lt;br /&gt; * When updating the model portfolio asset classes, the percent is required. Only the model asset class id is required for the model asset class object &lt;br /&gt;&lt;br /&gt; * To remove all model portfolio securities or model portfolio asset class, set then to an empty array
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def modify_model_portfolio_by_id_with_http_info_impl(model_portfolio_id, model_portfolio_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.modify_model_portfolio_by_id ...'
      end
      # verify the required parameter 'model_portfolio_id' is set
      if @api_client.config.client_side_validation && model_portfolio_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_portfolio_id' when calling PortfolioManagementApi.modify_model_portfolio_by_id"
      end
      # verify the required parameter 'model_portfolio_details' is set
      if @api_client.config.client_side_validation && model_portfolio_details.nil?
        fail ArgumentError, "Missing the required parameter 'model_portfolio_details' when calling PortfolioManagementApi.modify_model_portfolio_by_id"
      end
      # resource path
      local_var_path = '/modelPortfolio/{modelPortfolioId}'.sub('{' + 'modelPortfolioId' + '}', CGI.escape(model_portfolio_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(model_portfolio_details)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.modify_model_portfolio_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#modify_model_portfolio_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Update an existing target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to update.
    # @param id [String] 
    # @param name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def save_portfolio(portfolio_group_id:, id: SENTINEL, name: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:name] = name if name != SENTINEL
      request_body = _body

      data, _status_code, _headers = save_portfolio_with_http_info_impl(portfolio_group_id, request_body, extra)
      data
    end

    # Update an existing target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to update.
    # @param id [String] 
    # @param name [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def save_portfolio_with_http_info(portfolio_group_id:, id: SENTINEL, name: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:name] = name if name != SENTINEL
      request_body = _body

      save_portfolio_with_http_info_impl(portfolio_group_id, request_body, extra)
    end

    # Update an existing target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to update.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroup]
    def save_portfolio_impl(portfolio_group_id, request_body, opts = {})
      data, _status_code, _headers = save_portfolio_with_http_info(portfolio_group_id, request_body, opts)
      data
    end

    # Update an existing target portfolio.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to update.
    # @param request_body [Hash<String, Object>] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroup, Integer, Hash)>] PortfolioGroup data, response status code and response headers
    def save_portfolio_with_http_info_impl(portfolio_group_id, request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.save_portfolio ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.save_portfolio"
      end
      # verify the required parameter 'request_body' is set
      if @api_client.config.client_side_validation && request_body.nil?
        fail ArgumentError, "Missing the required parameter 'request_body' when calling PortfolioManagementApi.save_portfolio"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'PortfolioGroup'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.save_portfolio",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#save_portfolio\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Search for symbols limited to brokerages under the specified portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to search under
    # @param substring [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def search_portfolio_symbols(portfolio_group_id:, substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?

      data, _status_code, _headers = search_portfolio_symbols_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Search for symbols limited to brokerages under the specified portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to search under
    # @param substring [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def search_portfolio_symbols_with_http_info(portfolio_group_id:, substring: SENTINEL, extra: {})
      _body = {}
      _body[:substring] = substring if substring != SENTINEL
      extra[:symbol_query] = _body if !_body.empty?

      search_portfolio_symbols_with_http_info_impl(portfolio_group_id, extra)
    end

    # Search for symbols limited to brokerages under the specified portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to search under
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<UniversalSymbol>]
    def search_portfolio_symbols_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = search_portfolio_symbols_with_http_info(portfolio_group_id, opts)
      data
    end

    # Search for symbols limited to brokerages under the specified portfolio group
    # @param portfolio_group_id [String] The ID of the PortfolioGroup to search under
    # @param [Hash] opts the optional parameters
    # @option opts [SymbolQuery] :symbol_query 
    # @return [Array<(Array<UniversalSymbol>, Integer, Hash)>] Array<UniversalSymbol> data, response status code and response headers
    def search_portfolio_symbols_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.search_portfolio_symbols ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.search_portfolio_symbols"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/symbols'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
        :operation => :"PortfolioManagementApi.search_portfolio_symbols",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#search_portfolio_symbols\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def set_portfolio_targets(portfolio_group_id:, extra: {})
      _body = {}
      extra[:target_asset] = _body if !_body.empty?

      data, _status_code, _headers = set_portfolio_targets_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def set_portfolio_targets_with_http_info(portfolio_group_id:, extra: {})
      _body = {}
      extra[:target_asset] = _body if !_body.empty?

      set_portfolio_targets_with_http_info_impl(portfolio_group_id, extra)
    end

    # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<TargetAsset>] :target_asset 
    # @return [Array<TargetAsset>]
    def set_portfolio_targets_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = set_portfolio_targets_with_http_info(portfolio_group_id, opts)
      data
    end

    # Set a new list of target assets under the specified PortfolioGroup. All existing target assets under this portfolio group will be replaced with the new list.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to create the target asset.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<TargetAsset>] :target_asset 
    # @return [Array<(Array<TargetAsset>, Integer, Hash)>] Array<TargetAsset> data, response status code and response headers
    def set_portfolio_targets_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.set_portfolio_targets ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.set_portfolio_targets"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/targets'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'target_asset'])

      # return_type
      return_type = opts[:debug_return_type] || 'Array<TargetAsset>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.set_portfolio_targets",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#set_portfolio_targets\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Updates model asset class objects
    # @param model_asset_class_id [String] The ID of the model asset class to update.
    # @param model_asset_class [ModelAssetClass] 
    # @param model_asset_class_target [Array<ModelAssetClassTarget>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_asset_class(model_asset_class_id:, model_asset_class: SENTINEL, model_asset_class_target: SENTINEL, extra: {})
      _body = {}
      _body[:model_asset_class] = model_asset_class if model_asset_class != SENTINEL
      _body[:model_asset_class_target] = model_asset_class_target if model_asset_class_target != SENTINEL
      model_asset_class_details = _body

      update_asset_class_with_http_info_impl(model_asset_class_id, model_asset_class_details, extra)
      nil
    end

    # Updates model asset class objects
    # @param model_asset_class_id [String] The ID of the model asset class to update.
    # @param model_asset_class [ModelAssetClass] 
    # @param model_asset_class_target [Array<ModelAssetClassTarget>] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_asset_class_with_http_info(model_asset_class_id:, model_asset_class: SENTINEL, model_asset_class_target: SENTINEL, extra: {})
      _body = {}
      _body[:model_asset_class] = model_asset_class if model_asset_class != SENTINEL
      _body[:model_asset_class_target] = model_asset_class_target if model_asset_class_target != SENTINEL
      model_asset_class_details = _body

      update_asset_class_with_http_info_impl(model_asset_class_id, model_asset_class_details, extra)
    end

    # Updates model asset class objects
    # @param model_asset_class_id [String] The ID of the model asset class to update.
    # @param model_asset_class_details [ModelAssetClassDetails] Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_asset_class_impl(model_asset_class_id, model_asset_class_details, opts = {})
      update_asset_class_with_http_info(model_asset_class_id, model_asset_class_details, opts)
      nil
    end

    # Updates model asset class objects
    # @param model_asset_class_id [String] The ID of the model asset class to update.
    # @param model_asset_class_details [ModelAssetClassDetails] Use this endpoint change model asset class name and to add or remove a model asset class target. &lt;br /&gt;&lt;br /&gt; * Only the model asset class name is required for the model asset class object. &lt;br /&gt; * Only the symbol id is required for the symbol object in the model asset class target object. &lt;br /&gt; * To remove all model asset class targets, set the model asset class target as an empty array
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_asset_class_with_http_info_impl(model_asset_class_id, model_asset_class_details, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.update_asset_class ...'
      end
      # verify the required parameter 'model_asset_class_id' is set
      if @api_client.config.client_side_validation && model_asset_class_id.nil?
        fail ArgumentError, "Missing the required parameter 'model_asset_class_id' when calling PortfolioManagementApi.update_asset_class"
      end
      # verify the required parameter 'model_asset_class_details' is set
      if @api_client.config.client_side_validation && model_asset_class_details.nil?
        fail ArgumentError, "Missing the required parameter 'model_asset_class_details' when calling PortfolioManagementApi.update_asset_class"
      end
      # resource path
      local_var_path = '/modelAssetClass/{modelAssetClassId}'.sub('{' + 'modelAssetClassId' + '}', CGI.escape(model_asset_class_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json'])
      if !content_type.nil?
        header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(model_asset_class_details)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.update_asset_class",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#update_asset_class\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Updates portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the settings.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_portfolio_settings(portfolio_group_id:, extra: {})

      data, _status_code, _headers = update_portfolio_settings_with_http_info_impl(portfolio_group_id, extra)
      data
    end

    # Updates portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the settings.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_portfolio_settings_with_http_info(portfolio_group_id:, extra: {})

      update_portfolio_settings_with_http_info_impl(portfolio_group_id, extra)
    end

    # Updates portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the settings.
    # @param [Hash] opts the optional parameters
    # @return [PortfolioGroupSettings]
    def update_portfolio_settings_impl(portfolio_group_id, opts = {})
      data, _status_code, _headers = update_portfolio_settings_with_http_info(portfolio_group_id, opts)
      data
    end

    # Updates portfolio group settings
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the settings.
    # @param [Hash] opts the optional parameters
    # @return [Array<(PortfolioGroupSettings, Integer, Hash)>] PortfolioGroupSettings data, response status code and response headers
    def update_portfolio_settings_with_http_info_impl(portfolio_group_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.update_portfolio_settings ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.update_portfolio_settings"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/settings'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PortfolioGroupSettings'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.update_portfolio_settings",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#update_portfolio_settings\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Update a TargetAsset under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to patch.
    # @param id [String] 
    # @param symbol [UniversalSymbol] 
    # @param percent [Float] 
    # @param is_supported [Boolean] 
    # @param is_excluded [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_portfolio_target_by_id(portfolio_group_id:, target_asset_id:, id: SENTINEL, symbol: SENTINEL, percent: SENTINEL, is_supported: SENTINEL, is_excluded: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:percent] = percent if percent != SENTINEL
      _body[:is_supported] = is_supported if is_supported != SENTINEL
      _body[:is_excluded] = is_excluded if is_excluded != SENTINEL
      target_asset = _body

      data, _status_code, _headers = update_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, target_asset, extra)
      data
    end

    # Update a TargetAsset under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to patch.
    # @param id [String] 
    # @param symbol [UniversalSymbol] 
    # @param percent [Float] 
    # @param is_supported [Boolean] 
    # @param is_excluded [Boolean] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def update_portfolio_target_by_id_with_http_info(portfolio_group_id:, target_asset_id:, id: SENTINEL, symbol: SENTINEL, percent: SENTINEL, is_supported: SENTINEL, is_excluded: SENTINEL, extra: {})
      _body = {}
      _body[:id] = id if id != SENTINEL
      _body[:symbol] = symbol if symbol != SENTINEL
      _body[:percent] = percent if percent != SENTINEL
      _body[:is_supported] = is_supported if is_supported != SENTINEL
      _body[:is_excluded] = is_excluded if is_excluded != SENTINEL
      target_asset = _body

      update_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, target_asset, extra)
    end

    # Update a TargetAsset under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to patch.
    # @param target_asset [TargetAsset] 
    # @param [Hash] opts the optional parameters
    # @return [TargetAsset]
    def update_portfolio_target_by_id_impl(portfolio_group_id, target_asset_id, target_asset, opts = {})
      data, _status_code, _headers = update_portfolio_target_by_id_with_http_info(portfolio_group_id, target_asset_id, target_asset, opts)
      data
    end

    # Update a TargetAsset under the specified PortfolioGroup.
    # @param portfolio_group_id [String] The ID of the PortfolioGroup under which to patch the target asset.
    # @param target_asset_id [String] The ID of the TargetAsset to patch.
    # @param target_asset [TargetAsset] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(TargetAsset, Integer, Hash)>] TargetAsset data, response status code and response headers
    def update_portfolio_target_by_id_with_http_info_impl(portfolio_group_id, target_asset_id, target_asset, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: PortfolioManagementApi.update_portfolio_target_by_id ...'
      end
      # verify the required parameter 'portfolio_group_id' is set
      if @api_client.config.client_side_validation && portfolio_group_id.nil?
        fail ArgumentError, "Missing the required parameter 'portfolio_group_id' when calling PortfolioManagementApi.update_portfolio_target_by_id"
      end
      # verify the required parameter 'target_asset_id' is set
      if @api_client.config.client_side_validation && target_asset_id.nil?
        fail ArgumentError, "Missing the required parameter 'target_asset_id' when calling PortfolioManagementApi.update_portfolio_target_by_id"
      end
      # verify the required parameter 'target_asset' is set
      if @api_client.config.client_side_validation && target_asset.nil?
        fail ArgumentError, "Missing the required parameter 'target_asset' when calling PortfolioManagementApi.update_portfolio_target_by_id"
      end
      # resource path
      local_var_path = '/portfolioGroups/{portfolioGroupId}/targets/{targetAssetId}'.sub('{' + 'portfolioGroupId' + '}', CGI.escape(portfolio_group_id.to_s)).sub('{' + 'targetAssetId' + '}', CGI.escape(target_asset_id.to_s))

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(target_asset)

      # return_type
      return_type = opts[:debug_return_type] || 'TargetAsset'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"PortfolioManagementApi.update_portfolio_target_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: PortfolioManagementApi#update_portfolio_target_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  PortfolioManagement = PortfolioManagementApi::new
end
