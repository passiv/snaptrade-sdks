=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class ConnectionsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get connection detail
    #
    # Returns a single connection for the specified ID.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def detail_brokerage_authorization(authorization_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = detail_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      data
    end

    # Get connection detail
    #
    # Returns a single connection for the specified ID.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def detail_brokerage_authorization_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      detail_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Get connection detail
    # Returns a single connection for the specified ID.
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [BrokerageAuthorization]
    private def detail_brokerage_authorization_impl(authorization_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = detail_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret, opts)
      data
    end

    # Get connection detail
    # Returns a single connection for the specified ID.
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BrokerageAuthorization, Integer, Hash)>] BrokerageAuthorization data, response status code and response headers
    private def detail_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.detail_brokerage_authorization ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.detail_brokerage_authorization"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.detail_brokerage_authorization"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.detail_brokerage_authorization"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BrokerageAuthorization'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.detail_brokerage_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#detail_brokerage_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Force disable connection
    #
    # Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
    # Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.
    # 
    # This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_brokerage_authorization(authorization_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = disable_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      data
    end

    # Force disable connection
    #
    # Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections.
    # Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.
    # 
    # This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def disable_brokerage_authorization_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      disable_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Force disable connection
    # Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a [`CONNECTION_BROKEN` webhook](/docs/webhooks#webhooks-connection_broken) for the connection.  This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default. 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [BrokerageAuthorizationDisabledConfirmation]
    private def disable_brokerage_authorization_impl(authorization_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = disable_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret, opts)
      data
    end

    # Force disable connection
    # Manually force the specified connection to become disabled. This should only be used for testing a reconnect flow, and never used on production connections. Will trigger a disconnect as if it happened naturally, and send a [&#x60;CONNECTION_BROKEN&#x60; webhook](/docs/webhooks#webhooks-connection_broken) for the connection.  This endpoint is available on test keys. If you would like it enabled on production keys as well, please contact support as it is disabled by default. 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BrokerageAuthorizationDisabledConfirmation, Integer, Hash)>] BrokerageAuthorizationDisabledConfirmation data, response status code and response headers
    private def disable_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.disable_brokerage_authorization ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.disable_brokerage_authorization"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.disable_brokerage_authorization"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.disable_brokerage_authorization"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}/disable'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BrokerageAuthorizationDisabledConfirmation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.disable_brokerage_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#disable_brokerage_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List all connections
    #
    # Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.
    # 
    # A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.
    # 
    # SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_brokerage_authorizations(user_id:, user_secret:, extra: {})
      data, _status_code, _headers = list_brokerage_authorizations_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # List all connections
    #
    # Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.
    # 
    # A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.
    # 
    # SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_brokerage_authorizations_with_http_info(user_id:, user_secret:, extra: {})
      list_brokerage_authorizations_with_http_info_impl(user_id, user_secret, extra)
    end

    # List all connections
    # Returns a list of all connections for the specified user. Note that `Connection` and `Brokerage Authorization` are interchangeable, but the term `Connection` is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<BrokerageAuthorization>]
    private def list_brokerage_authorizations_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = list_brokerage_authorizations_with_http_info(user_id, user_secret, opts)
      data
    end

    # List all connections
    # Returns a list of all connections for the specified user. Note that &#x60;Connection&#x60; and &#x60;Brokerage Authorization&#x60; are interchangeable, but the term &#x60;Connection&#x60; is preferred and used in the doc for consistency.  A connection is usually tied to a single login at a brokerage. A single connection can contain multiple brokerage accounts.  SnapTrade performs de-duping on connections for a given user. If the user has an existing connection with the brokerage, when connecting the brokerage with the same credentials, SnapTrade will return the existing connection instead of creating a new one. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<BrokerageAuthorization>, Integer, Hash)>] Array<BrokerageAuthorization> data, response status code and response headers
    private def list_brokerage_authorizations_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.list_brokerage_authorizations ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.list_brokerage_authorizations"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.list_brokerage_authorizations"
      end
      # resource path
      local_var_path = '/authorizations'

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
      return_type = opts[:debug_return_type] || 'Array<BrokerageAuthorization>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.list_brokerage_authorizations",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#list_brokerage_authorizations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Refresh holdings for a connection
    #
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
    # This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.
    # 
    # **Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def refresh_brokerage_authorization(authorization_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = refresh_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      data
    end

    # Refresh holdings for a connection
    #
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
    # This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.
    # 
    # **Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def refresh_brokerage_authorization_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      refresh_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Refresh holdings for a connection
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [BrokerageAuthorizationRefreshConfirmation]
    private def refresh_brokerage_authorization_impl(authorization_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = refresh_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret, opts)
      data
    end

    # Refresh holdings for a connection
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [&#x60;ACCOUNT_HOLDINGS_UPDATED&#x60; webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Please contact support before use. Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BrokerageAuthorizationRefreshConfirmation, Integer, Hash)>] BrokerageAuthorizationRefreshConfirmation data, response status code and response headers
    private def refresh_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.refresh_brokerage_authorization ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.refresh_brokerage_authorization"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.refresh_brokerage_authorization"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.refresh_brokerage_authorization"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}/refresh'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BrokerageAuthorizationRefreshConfirmation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.refresh_brokerage_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#refresh_brokerage_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Delete connection
    #
    # Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_brokerage_authorization(authorization_id:, user_id:, user_secret:, extra: {})
      remove_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      nil
    end

    # Delete connection
    #
    # Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def remove_brokerage_authorization_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      remove_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Delete connection
    # Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [nil]
    private def remove_brokerage_authorization_impl(authorization_id, user_id, user_secret, opts = {})
      remove_brokerage_authorization_with_http_info(authorization_id, user_id, user_secret, opts)
      nil
    end

    # Delete connection
    # Deletes the connection specified by the ID. This will also delete all accounts and holdings associated with the connection. This action is irreversible. This endpoint is synchronous, a 204 response indicates that the connection has been successfully deleted.
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    private def remove_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.remove_brokerage_authorization ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.remove_brokerage_authorization"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.remove_brokerage_authorization"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.remove_brokerage_authorization"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id
      query_params[:'userSecret'] = user_secret

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
        :operation => :"ConnectionsApi.remove_brokerage_authorization",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#remove_brokerage_authorization\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List connection rate of returns
    #
    # Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def return_rates(user_id:, user_secret:, authorization_id:, extra: {})
      data, _status_code, _headers = return_rates_with_http_info_impl(user_id, user_secret, authorization_id, extra)
      data
    end

    # List connection rate of returns
    #
    # Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example "ALL", "1Y", "6M", "3M", "1M"
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def return_rates_with_http_info(user_id:, user_secret:, authorization_id:, extra: {})
      return_rates_with_http_info_impl(user_id, user_secret, authorization_id, extra)
    end

    # List connection rate of returns
    # Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example \"ALL\", \"1Y\", \"6M\", \"3M\", \"1M\" 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [RateOfReturnResponse]
    private def return_rates_impl(user_id, user_secret, authorization_id, opts = {})
      data, _status_code, _headers = return_rates_with_http_info(user_id, user_secret, authorization_id, opts)
      data
    end

    # List connection rate of returns
    # Returns a list of rate of return percents for a given connection. Will include timeframes available from the brokerage, for example \&quot;ALL\&quot;, \&quot;1Y\&quot;, \&quot;6M\&quot;, \&quot;3M\&quot;, \&quot;1M\&quot; 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(RateOfReturnResponse, Integer, Hash)>] RateOfReturnResponse data, response status code and response headers
    private def return_rates_with_http_info_impl(user_id, user_secret, authorization_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.return_rates ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.return_rates"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.return_rates"
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.return_rates"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}/returnRates'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'RateOfReturnResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.return_rates",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#return_rates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Get all session events for a user
    #
    # Returns a list of session events associated with a user.
    #
    # @param partner_client_id [String] 
    # @param user_id [String] Optional comma separated list of user IDs used to filter the request on specific users
    # @param session_id [String] Optional comma separated list of session IDs used to filter the request on specific users
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def session_events(partner_client_id:, user_id: SENTINEL, session_id: SENTINEL, extra: {})
      extra[:user_id] = user_id if user_id != SENTINEL
      extra[:session_id] = session_id if session_id != SENTINEL
      data, _status_code, _headers = session_events_with_http_info_impl(partner_client_id, extra)
      data
    end

    # Get all session events for a user
    #
    # Returns a list of session events associated with a user.
    #
    # @param partner_client_id [String] 
    # @param user_id [String] Optional comma separated list of user IDs used to filter the request on specific users
    # @param session_id [String] Optional comma separated list of session IDs used to filter the request on specific users
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def session_events_with_http_info(partner_client_id:, user_id: SENTINEL, session_id: SENTINEL, extra: {})
      extra[:user_id] = user_id if user_id != SENTINEL
      extra[:session_id] = session_id if session_id != SENTINEL
      session_events_with_http_info_impl(partner_client_id, extra)
    end

    # Get all session events for a user
    # Returns a list of session events associated with a user.
    # @param partner_client_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id Optional comma separated list of user IDs used to filter the request on specific users
    # @option opts [String] :session_id Optional comma separated list of session IDs used to filter the request on specific users
    # @return [Array<ConnectionsSessionEvents200ResponseInner>]
    private def session_events_impl(partner_client_id, opts = {})
      data, _status_code, _headers = session_events_with_http_info(partner_client_id, opts)
      data
    end

    # Get all session events for a user
    # Returns a list of session events associated with a user.
    # @param partner_client_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :user_id Optional comma separated list of user IDs used to filter the request on specific users
    # @option opts [String] :session_id Optional comma separated list of session IDs used to filter the request on specific users
    # @return [Array<(Array<ConnectionsSessionEvents200ResponseInner>, Integer, Hash)>] Array<ConnectionsSessionEvents200ResponseInner> data, response status code and response headers
    private def session_events_with_http_info_impl(partner_client_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.session_events ...'
      end
      # verify the required parameter 'partner_client_id' is set
      if @api_client.config.client_side_validation && partner_client_id.nil?
        fail ArgumentError, "Missing the required parameter 'partner_client_id' when calling ConnectionsApi.session_events"
      end
      # resource path
      local_var_path = '/sessionEvents'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'PartnerClientId'] = partner_client_id
      query_params[:'userId'] = opts[:'user_id'] if !opts[:'user_id'].nil?
      query_params[:'sessionId'] = opts[:'session_id'] if !opts[:'session_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'Array<ConnectionsSessionEvents200ResponseInner>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.session_events",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#session_events\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Connections = ConnectionsApi::new
end
