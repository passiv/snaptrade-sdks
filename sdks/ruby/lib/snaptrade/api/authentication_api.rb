=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class AuthenticationApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Delete user
    #
    # Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.
    #
    # @param user_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_snap_trade_user(user_id:, extra: {})
      data, _status_code, _headers = delete_snap_trade_user_with_http_info_impl(user_id, extra)
      data
    end

    # Delete user
    #
    # Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.
    #
    # @param user_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_snap_trade_user_with_http_info(user_id:, extra: {})
      delete_snap_trade_user_with_http_info_impl(user_id, extra)
    end

    # Delete user
    # Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a `USER_DELETED` webhook will be sent.
    # @param user_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteUserResponse]
    private def delete_snap_trade_user_impl(user_id, opts = {})
      data, _status_code, _headers = delete_snap_trade_user_with_http_info(user_id, opts)
      data
    end

    # Delete user
    # Deletes a registered user and all associated data. This action is irreversible. This API is asynchronous and will return a 200 status code if the request is accepted. The user and all associated data will be queued for deletion. Once deleted, a &#x60;USER_DELETED&#x60; webhook will be sent.
    # @param user_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteUserResponse, Integer, Hash)>] DeleteUserResponse data, response status code and response headers
    private def delete_snap_trade_user_with_http_info_impl(user_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.delete_snap_trade_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthenticationApi.delete_snap_trade_user"
      end
      # resource path
      local_var_path = '/snapTrade/deleteUser'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'userId'] = user_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'DeleteUserResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.delete_snap_trade_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#delete_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # List all users
    #
    # Returns a list of all registered user IDs. Please note that the response is not currently paginated.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_snap_trade_users(extra: {})
      data, _status_code, _headers = list_snap_trade_users_with_http_info_impl(extra)
      data
    end

    # List all users
    #
    # Returns a list of all registered user IDs. Please note that the response is not currently paginated.
    #
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_snap_trade_users_with_http_info(extra: {})
      list_snap_trade_users_with_http_info_impl(extra)
    end

    # List all users
    # Returns a list of all registered user IDs. Please note that the response is not currently paginated.
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    private def list_snap_trade_users_impl(opts = {})
      data, _status_code, _headers = list_snap_trade_users_with_http_info(opts)
      data
    end

    # List all users
    # Returns a list of all registered user IDs. Please note that the response is not currently paginated.
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    private def list_snap_trade_users_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.list_snap_trade_users ...'
      end
      # resource path
      local_var_path = '/snapTrade/listUsers'

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
      return_type = opts[:debug_return_type] || 'Array<String>'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.list_snap_trade_users",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#list_snap_trade_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Generate Connection Portal URL
    #
    # Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.
    # 
    # Please note that the returned URL expires in 5 minutes.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param broker [String] Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.
    # @param immediate_redirect [Boolean] When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    # @param custom_redirect [String] URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    # @param reconnect [String] The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.
    # @param connection_type [ConnectionType] Sets whether the connection should be read-only or trade-enabled.
    # @param connection_portal_version [ConnectionPortalVersion] Sets the version of the connection portal to render.
    # @param body [SnapTradeLoginUserRequestBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def login_snap_trade_user(user_id:, user_secret:, broker: SENTINEL, immediate_redirect: SENTINEL, custom_redirect: SENTINEL, reconnect: SENTINEL, connection_type: 'read', connection_portal_version: 'v3', extra: {})
      _body = {}
      _body[:broker] = broker if broker != SENTINEL
      _body[:immediateRedirect] = immediate_redirect if immediate_redirect != SENTINEL
      _body[:customRedirect] = custom_redirect if custom_redirect != SENTINEL
      _body[:reconnect] = reconnect if reconnect != SENTINEL
      _body[:connectionType] = connection_type if connection_type != SENTINEL
      _body[:connectionPortalVersion] = connection_portal_version if connection_portal_version != SENTINEL
      extra[:snap_trade_login_user_request_body] = _body if !_body.empty?
      data, _status_code, _headers = login_snap_trade_user_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # Generate Connection Portal URL
    #
    # Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.
    # 
    # Please note that the returned URL expires in 5 minutes.
    #
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param broker [String] Slug of the brokerage to connect the user to. See [the integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=3cfea70ef4254afc89704e47275a7a9a&pvs=4) for a list of supported brokerages and their slugs.
    # @param immediate_redirect [Boolean] When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    # @param custom_redirect [String] URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    # @param reconnect [String] The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.
    # @param connection_type [ConnectionType] Sets whether the connection should be read-only or trade-enabled.
    # @param connection_portal_version [ConnectionPortalVersion] Sets the version of the connection portal to render.
    # @param body [SnapTradeLoginUserRequestBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def login_snap_trade_user_with_http_info(user_id:, user_secret:, broker: SENTINEL, immediate_redirect: SENTINEL, custom_redirect: SENTINEL, reconnect: SENTINEL, connection_type: 'read', connection_portal_version: 'v3', extra: {})
      _body = {}
      _body[:broker] = broker if broker != SENTINEL
      _body[:immediateRedirect] = immediate_redirect if immediate_redirect != SENTINEL
      _body[:customRedirect] = custom_redirect if custom_redirect != SENTINEL
      _body[:reconnect] = reconnect if reconnect != SENTINEL
      _body[:connectionType] = connection_type if connection_type != SENTINEL
      _body[:connectionPortalVersion] = connection_portal_version if connection_portal_version != SENTINEL
      extra[:snap_trade_login_user_request_body] = _body if !_body.empty?
      login_snap_trade_user_with_http_info_impl(user_id, user_secret, extra)
    end

    # Generate Connection Portal URL
    # Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.  Please note that the returned URL expires in 5 minutes. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SnapTradeLoginUserRequestBody] :snap_trade_login_user_request_body 
    # @return [AuthenticationLoginSnapTradeUser200Response]
    private def login_snap_trade_user_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = login_snap_trade_user_with_http_info(user_id, user_secret, opts)
      data
    end

    # Generate Connection Portal URL
    # Authenticates a SnapTrade user and returns the Connection Portal URL used for connecting brokerage accounts. Please check [this guide](/docs/implement-connection-portal) for how to integrate the Connection Portal into your app.  Please note that the returned URL expires in 5 minutes. 
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SnapTradeLoginUserRequestBody] :snap_trade_login_user_request_body 
    # @return [Array<(AuthenticationLoginSnapTradeUser200Response, Integer, Hash)>] AuthenticationLoginSnapTradeUser200Response data, response status code and response headers
    private def login_snap_trade_user_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.login_snap_trade_user ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthenticationApi.login_snap_trade_user"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AuthenticationApi.login_snap_trade_user"
      end
      # resource path
      local_var_path = '/snapTrade/login'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(opts[:'snap_trade_login_user_request_body'])

      # return_type
      return_type = opts[:debug_return_type] || 'AuthenticationLoginSnapTradeUser200Response'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.login_snap_trade_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#login_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Register user
    #
    # Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
    # Most SnapTrade operations require a user ID and user secret to be passed in as parameters.
    #
    # @param user_id [String] SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    # @param body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def register_snap_trade_user(user_id: SENTINEL, extra: {})
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      snap_trade_register_user_request_body = _body
      data, _status_code, _headers = register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, extra)
      data
    end

    # Register user
    #
    # Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system.
    # Most SnapTrade operations require a user ID and user secret to be passed in as parameters.
    #
    # @param user_id [String] SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    # @param body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def register_snap_trade_user_with_http_info(user_id: SENTINEL, extra: {})
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      snap_trade_register_user_request_body = _body
      register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, extra)
    end

    # Register user
    # Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system. Most SnapTrade operations require a user ID and user secret to be passed in as parameters. 
    # @param snap_trade_register_user_request_body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [UserIDandSecret]
    private def register_snap_trade_user_impl(snap_trade_register_user_request_body, opts = {})
      data, _status_code, _headers = register_snap_trade_user_with_http_info(snap_trade_register_user_request_body, opts)
      data
    end

    # Register user
    # Registers a new SnapTrade user under your Client ID. A user secret will be automatically generated for you and must be properly stored in your system. Most SnapTrade operations require a user ID and user secret to be passed in as parameters. 
    # @param snap_trade_register_user_request_body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserIDandSecret, Integer, Hash)>] UserIDandSecret data, response status code and response headers
    private def register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.register_snap_trade_user ...'
      end
      # verify the required parameter 'snap_trade_register_user_request_body' is set
      if @api_client.config.client_side_validation && snap_trade_register_user_request_body.nil?
        fail ArgumentError, "Missing the required parameter 'snap_trade_register_user_request_body' when calling AuthenticationApi.register_snap_trade_user"
      end
      # resource path
      local_var_path = '/snapTrade/registerUser'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(snap_trade_register_user_request_body)

      # return_type
      return_type = opts[:debug_return_type] || 'UserIDandSecret'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.register_snap_trade_user",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#register_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end


    # Rotate user secret
    #
    # Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.
    #
    # @param user_id [String] SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    # @param user_secret [String] SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).
    # @param body [UserIDandSecret] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def reset_snap_trade_user_secret(user_id: SENTINEL, user_secret: SENTINEL, extra: {})
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      _body[:userSecret] = user_secret if user_secret != SENTINEL
      user_i_dand_secret = _body
      data, _status_code, _headers = reset_snap_trade_user_secret_with_http_info_impl(user_i_dand_secret, extra)
      data
    end

    # Rotate user secret
    #
    # Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect.
    #
    # @param user_id [String] SnapTrade User ID. This is chosen by the API partner and can be any string that is a) unique to the user, and b) immutable for the user. It is recommended to NOT use email addresses for this property because they are usually not immutable.
    # @param user_secret [String] SnapTrade User Secret. This is a randomly generated string and should be stored securely. If compromised, please rotate it via the [rotate user secret endpoint](/reference/Authentication/Authentication_resetSnapTradeUserSecret).
    # @param body [UserIDandSecret] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def reset_snap_trade_user_secret_with_http_info(user_id: SENTINEL, user_secret: SENTINEL, extra: {})
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      _body[:userSecret] = user_secret if user_secret != SENTINEL
      user_i_dand_secret = _body
      reset_snap_trade_user_secret_with_http_info_impl(user_i_dand_secret, extra)
    end

    # Rotate user secret
    # Rotates the secret for a SnapTrade user. You might use this if `userSecret` is compromised. Please note that if you call this endpoint and fail to save the new secret, you'll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 
    # @param user_i_dand_secret [UserIDandSecret] 
    # @param [Hash] opts the optional parameters
    # @return [UserIDandSecret]
    private def reset_snap_trade_user_secret_impl(user_i_dand_secret, opts = {})
      data, _status_code, _headers = reset_snap_trade_user_secret_with_http_info(user_i_dand_secret, opts)
      data
    end

    # Rotate user secret
    # Rotates the secret for a SnapTrade user. You might use this if &#x60;userSecret&#x60; is compromised. Please note that if you call this endpoint and fail to save the new secret, you&#39;ll no longer be able to access any data for this user, and your only option will be to delete and recreate the user, then ask them to reconnect. 
    # @param user_i_dand_secret [UserIDandSecret] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserIDandSecret, Integer, Hash)>] UserIDandSecret data, response status code and response headers
    private def reset_snap_trade_user_secret_with_http_info_impl(user_i_dand_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.reset_snap_trade_user_secret ...'
      end
      # verify the required parameter 'user_i_dand_secret' is set
      if @api_client.config.client_side_validation && user_i_dand_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_i_dand_secret' when calling AuthenticationApi.reset_snap_trade_user_secret"
      end
      # resource path
      local_var_path = '/snapTrade/resetUserSecret'

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
      post_body = opts[:debug_body] || @api_client.object_to_http_body(user_i_dand_secret)

      # return_type
      return_type = opts[:debug_return_type] || 'UserIDandSecret'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.reset_snap_trade_user_secret",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#reset_snap_trade_user_secret\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Authentication = AuthenticationApi::new
end
