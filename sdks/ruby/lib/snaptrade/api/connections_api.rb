=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

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

    # Delete connection
    #
    # Deletes the SnapTrade connection specified by the ID. This will also remove the accounts and holdings data associated with the connection from SnapTrade. This action is irreversible. This endpoint is asynchronous, a 200 response indicates that a task has been queued to delete the connection. Listen for the [`CONNECTION_DELETED` webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-connection_deleted) webhook to know when the deletion has been completed and the data has been removed.
    #
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connection(connection_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = delete_connection_with_http_info_impl(connection_id, user_id, user_secret, extra)
      data
    end

    # Delete connection
    #
    # Deletes the SnapTrade connection specified by the ID. This will also remove the accounts and holdings data associated with the connection from SnapTrade. This action is irreversible. This endpoint is asynchronous, a 200 response indicates that a task has been queued to delete the connection. Listen for the [`CONNECTION_DELETED` webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-connection_deleted) webhook to know when the deletion has been completed and the data has been removed.
    #
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_connection_with_http_info(connection_id:, user_id:, user_secret:, extra: {})
      delete_connection_with_http_info_impl(connection_id, user_id, user_secret, extra)
    end

    # Delete connection
    # Deletes the SnapTrade connection specified by the ID. This will also remove the accounts and holdings data associated with the connection from SnapTrade. This action is irreversible. This endpoint is asynchronous, a 200 response indicates that a task has been queued to delete the connection. Listen for the [`CONNECTION_DELETED` webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-connection_deleted) webhook to know when the deletion has been completed and the data has been removed.
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteConnectionConfirmation]
    private def delete_connection_impl(connection_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = delete_connection_with_http_info(connection_id, user_id, user_secret, opts)
      data
    end

    # Delete connection
    # Deletes the SnapTrade connection specified by the ID. This will also remove the accounts and holdings data associated with the connection from SnapTrade. This action is irreversible. This endpoint is asynchronous, a 200 response indicates that a task has been queued to delete the connection. Listen for the [&#x60;CONNECTION_DELETED&#x60; webhook](https://docs.snaptrade.com/docs/webhooks#webhooks-connection_deleted) webhook to know when the deletion has been completed and the data has been removed.
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteConnectionConfirmation, Integer, Hash)>] DeleteConnectionConfirmation data, response status code and response headers
    private def delete_connection_with_http_info_impl(connection_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.delete_connection ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.delete_connection"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.delete_connection"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.delete_connection"
      end
      # resource path
      local_var_path = '/connection/{connectionId}'.sub('{' + 'connectionId' + '}', CGI.escape(connection_id.to_s))

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
      return_type = opts[:debug_return_type] || 'DeleteConnectionConfirmation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.delete_connection",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#delete_connection\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
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


    # List accounts for a connection
    #
    # Returns all brokerage accounts that belong to the specified connection for the authenticated user.
    # 
    # On Pay as you Go / Real-time, this endpoint refreshes each account's opening date, funding date, and total value live from the brokerage on each call.
    # 
    # On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_brokerage_authorization_accounts(authorization_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = list_brokerage_authorization_accounts_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      data
    end

    # List accounts for a connection
    #
    # Returns all brokerage accounts that belong to the specified connection for the authenticated user.
    # 
    # On Pay as you Go / Real-time, this endpoint refreshes each account's opening date, funding date, and total value live from the brokerage on each call.
    # 
    # On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_brokerage_authorization_accounts_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      list_brokerage_authorization_accounts_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # List accounts for a connection
    # Returns all brokerage accounts that belong to the specified connection for the authenticated user.  On Pay as you Go / Real-time, this endpoint refreshes each account's opening date, funding date, and total value live from the brokerage on each call.  On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data. 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<Account>]
    private def list_brokerage_authorization_accounts_impl(authorization_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = list_brokerage_authorization_accounts_with_http_info(authorization_id, user_id, user_secret, opts)
      data
    end

    # List accounts for a connection
    # Returns all brokerage accounts that belong to the specified connection for the authenticated user.  On Pay as you Go / Real-time, this endpoint refreshes each account&#39;s opening date, funding date, and total value live from the brokerage on each call.  On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by brokerage. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data. 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<Account>, Integer, Hash)>] Array<Account> data, response status code and response headers
    private def list_brokerage_authorization_accounts_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.list_brokerage_authorization_accounts ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.list_brokerage_authorization_accounts"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.list_brokerage_authorization_accounts"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.list_brokerage_authorization_accounts"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}/accounts'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<Account>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.list_brokerage_authorization_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#list_brokerage_authorization_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
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


    # List accounts for a connection (discriminated union)
    #
    # Returns the accounts that belong to the specified connection for the authenticated user, using the `kind`-discriminated account shape.
    # 
    # Each item in the response carries a `kind` field (`investment`, `deposit`, and `line_of_credit` are implemented) that determines which additional fields are present -- see the `ConnectionAccount` schema.
    # 
    # On Pay as you Go / Real-time, this endpoint refreshes each account's opening date and total net value (`net_value`) live from the institution on each call, along with funding date for `investment` accounts.
    # 
    # On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by institution. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.
    #
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_connection_accounts(connection_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = list_connection_accounts_with_http_info_impl(connection_id, user_id, user_secret, extra)
      data
    end

    # List accounts for a connection (discriminated union)
    #
    # Returns the accounts that belong to the specified connection for the authenticated user, using the `kind`-discriminated account shape.
    # 
    # Each item in the response carries a `kind` field (`investment`, `deposit`, and `line_of_credit` are implemented) that determines which additional fields are present -- see the `ConnectionAccount` schema.
    # 
    # On Pay as you Go / Real-time, this endpoint refreshes each account's opening date and total net value (`net_value`) live from the institution on each call, along with funding date for `investment` accounts.
    # 
    # On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by institution. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).
    # 
    # Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data.
    #
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_connection_accounts_with_http_info(connection_id:, user_id:, user_secret:, extra: {})
      list_connection_accounts_with_http_info_impl(connection_id, user_id, user_secret, extra)
    end

    # List accounts for a connection (discriminated union)
    # Returns the accounts that belong to the specified connection for the authenticated user, using the `kind`-discriminated account shape.  Each item in the response carries a `kind` field (`investment`, `deposit`, and `line_of_credit` are implemented) that determines which additional fields are present -- see the `ConnectionAccount` schema.  On Pay as you Go / Real-time, this endpoint refreshes each account's opening date and total net value (`net_value`) live from the institution on each call, along with funding date for `investment` accounts.  On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by institution. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data. 
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<ConnectionAccount>]
    private def list_connection_accounts_impl(connection_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = list_connection_accounts_with_http_info(connection_id, user_id, user_secret, opts)
      data
    end

    # List accounts for a connection (discriminated union)
    # Returns the accounts that belong to the specified connection for the authenticated user, using the &#x60;kind&#x60;-discriminated account shape.  Each item in the response carries a &#x60;kind&#x60; field (&#x60;investment&#x60;, &#x60;deposit&#x60;, and &#x60;line_of_credit&#x60; are implemented) that determines which additional fields are present -- see the &#x60;ConnectionAccount&#x60; schema.  On Pay as you Go / Real-time, this endpoint refreshes each account&#39;s opening date and total net value (&#x60;net_value&#x60;) live from the institution on each call, along with funding date for &#x60;investment&#x60; accounts.  On Pay as you Go / Daily, this endpoint returns Daily data. Daily data is cached and refreshed once a day. Exact refresh timing may vary by institution. To force a refresh, use the [manual refresh endpoint](/reference/Connections/Connections_refreshBrokerageAuthorization).  Check your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing) to see whether your plan includes real-time data. 
    # @param connection_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<ConnectionAccount>, Integer, Hash)>] Array<ConnectionAccount> data, response status code and response headers
    private def list_connection_accounts_with_http_info_impl(connection_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.list_connection_accounts ...'
      end
      # verify the required parameter 'connection_id' is set
      if @api_client.config.client_side_validation && connection_id.nil?
        fail ArgumentError, "Missing the required parameter 'connection_id' when calling ConnectionsApi.list_connection_accounts"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.list_connection_accounts"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.list_connection_accounts"
      end
      # resource path
      local_var_path = '/connections/{connectionId}/accounts'.sub('{' + 'connectionId' + '}', CGI.escape(connection_id.to_s))

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
      return_type = opts[:debug_return_type] || 'Array<ConnectionAccount>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.list_connection_accounts",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#list_connection_accounts\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Refresh holdings for a connection
    #
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection.
    # This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.
    # 
    # **Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    # **Please note this endpoint is disabled for Real-time plans (Personal and Pay as you go) unless SnapTrade uses delayed data for the connection. Real-time connections do not benefit from this feature since data is refreshed when calls are made. Refer to `data_freshness_mode.snaptrade` on a connection to determine this.**
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
    # **Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)**
    # **Please note this endpoint is disabled for Real-time plans (Personal and Pay as you go) unless SnapTrade uses delayed data for the connection. Real-time connections do not benefit from this feature since data is refreshed when calls are made. Refer to `data_freshness_mode.snaptrade` on a connection to determine this.**
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def refresh_brokerage_authorization_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      refresh_brokerage_authorization_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Refresh holdings for a connection
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [`ACCOUNT_HOLDINGS_UPDATED` webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** **Please note this endpoint is disabled for Real-time plans (Personal and Pay as you go) unless SnapTrade uses delayed data for the connection. Real-time connections do not benefit from this feature since data is refreshed when calls are made. Refer to `data_freshness_mode.snaptrade` on a connection to determine this.** 
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
    # Trigger a holdings update for all accounts under this connection. Updates will be queued asynchronously. [&#x60;ACCOUNT_HOLDINGS_UPDATED&#x60; webhook](/docs/webhooks#webhooks-account_holdings_updated) will be sent once the sync completes for each account under the connection. This endpoint will also trigger a transaction sync for the past day if one has not yet occurred.  **Because of the cost of refreshing a connection, each call to this endpoint incurs an additional charge. You can find the exact cost for your API key on the [Customer Dashboard billing page](https://dashboard.snaptrade.com/settings/billing)** **Please note this endpoint is disabled for Real-time plans (Personal and Pay as you go) unless SnapTrade uses delayed data for the connection. Real-time connections do not benefit from this feature since data is refreshed when calls are made. Refer to &#x60;data_freshness_mode.snaptrade&#x60; on a connection to determine this.** 
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


    # List connection rate of returns
    #
    # Returns a list of rate of return percents for a given connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param timeframes [String] Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def return_rates(user_id:, user_secret:, authorization_id:, timeframes: SENTINEL, extra: {})
      extra[:timeframes] = timeframes if timeframes != SENTINEL
      data, _status_code, _headers = return_rates_with_http_info_impl(user_id, user_secret, authorization_id, extra)
      data
    end

    # List connection rate of returns
    #
    # Returns a list of rate of return percents for a given connection.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param timeframes [String] Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def return_rates_with_http_info(user_id:, user_secret:, authorization_id:, timeframes: SENTINEL, extra: {})
      extra[:timeframes] = timeframes if timeframes != SENTINEL
      return_rates_with_http_info_impl(user_id, user_secret, authorization_id, extra)
    end

    # List connection rate of returns
    # Returns a list of rate of return percents for a given connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :timeframes Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.
    # @return [RateOfReturnResponse]
    private def return_rates_impl(user_id, user_secret, authorization_id, opts = {})
      data, _status_code, _headers = return_rates_with_http_info(user_id, user_secret, authorization_id, opts)
      data
    end

    # List connection rate of returns
    # Returns a list of rate of return percents for a given connection. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param authorization_id [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :timeframes Optional comma separated list of rate-of-return timeframes to return. Supported values are `ALL`, `1Y`, `YTD`, `1M`, `1W`, and `1D`. If omitted, SnapTrade returns all six supported timeframes.
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
      query_params[:'timeframes'] = opts[:'timeframes'] if !opts[:'timeframes'].nil?

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


    # Sync transactions for a connection
    #
    # Trigger a transactions sync for all accounts under this connection. Updates will be queued asynchronously. Transactions are not updated intra-day, but calling this endpoint can ensure that the previous day's transactions have been synced. For more information on sync behaviour, see: https://docs.snaptrade.com/docs/syncing
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_brokerage_authorization_transactions(authorization_id:, user_id:, user_secret:, extra: {})
      data, _status_code, _headers = sync_brokerage_authorization_transactions_with_http_info_impl(authorization_id, user_id, user_secret, extra)
      data
    end

    # Sync transactions for a connection
    #
    # Trigger a transactions sync for all accounts under this connection. Updates will be queued asynchronously. Transactions are not updated intra-day, but calling this endpoint can ensure that the previous day's transactions have been synced. For more information on sync behaviour, see: https://docs.snaptrade.com/docs/syncing
    #
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def sync_brokerage_authorization_transactions_with_http_info(authorization_id:, user_id:, user_secret:, extra: {})
      sync_brokerage_authorization_transactions_with_http_info_impl(authorization_id, user_id, user_secret, extra)
    end

    # Sync transactions for a connection
    # Trigger a transactions sync for all accounts under this connection. Updates will be queued asynchronously. Transactions are not updated intra-day, but calling this endpoint can ensure that the previous day's transactions have been synced. For more information on sync behaviour, see: https://docs.snaptrade.com/docs/syncing 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [BrokerageAuthorizationTransactionsSyncConfirmation]
    private def sync_brokerage_authorization_transactions_impl(authorization_id, user_id, user_secret, opts = {})
      data, _status_code, _headers = sync_brokerage_authorization_transactions_with_http_info(authorization_id, user_id, user_secret, opts)
      data
    end

    # Sync transactions for a connection
    # Trigger a transactions sync for all accounts under this connection. Updates will be queued asynchronously. Transactions are not updated intra-day, but calling this endpoint can ensure that the previous day&#39;s transactions have been synced. For more information on sync behaviour, see: https://docs.snaptrade.com/docs/syncing 
    # @param authorization_id [String] 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(BrokerageAuthorizationTransactionsSyncConfirmation, Integer, Hash)>] BrokerageAuthorizationTransactionsSyncConfirmation data, response status code and response headers
    private def sync_brokerage_authorization_transactions_with_http_info_impl(authorization_id, user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ConnectionsApi.sync_brokerage_authorization_transactions ...'
      end
      # verify the required parameter 'authorization_id' is set
      if @api_client.config.client_side_validation && authorization_id.nil?
        fail ArgumentError, "Missing the required parameter 'authorization_id' when calling ConnectionsApi.sync_brokerage_authorization_transactions"
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling ConnectionsApi.sync_brokerage_authorization_transactions"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling ConnectionsApi.sync_brokerage_authorization_transactions"
      end
      # resource path
      local_var_path = '/authorizations/{authorizationId}/transactions/sync'.sub('{' + 'authorizationId' + '}', CGI.escape(authorization_id.to_s))

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
      return_type = opts[:debug_return_type] || 'BrokerageAuthorizationTransactionsSyncConfirmation'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ConnectionsApi.sync_brokerage_authorization_transactions",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ConnectionsApi#sync_brokerage_authorization_transactions\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Connections = ConnectionsApi::new
end
