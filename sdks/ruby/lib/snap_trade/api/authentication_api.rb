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

    # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
    # @param user_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_snap_trade_user(user_id:, extra: {}
)

      data, _status_code, _headers = delete_snap_trade_user_with_http_info_impl(user_id, extra)
      data
    end

    # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
    # @param user_id [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def delete_snap_trade_user_with_http_info(user_id:, extra: {}
)

      delete_snap_trade_user_with_http_info_impl(user_id, extra)
    end

    # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
    # @param user_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [DeleteUserResponse]
    def delete_snap_trade_user_impl(user_id, opts = {})
      data, _status_code, _headers = delete_snap_trade_user_with_http_info(user_id, opts)
      data
    end

    # Delete user from SnapTrade, disabling all brokerage authorizations and permanently deleting all data associated with the user
    # @param user_id [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(DeleteUserResponse, Integer, Hash)>] DeleteUserResponse data, response status code and response headers
    def delete_snap_trade_user_with_http_info_impl(user_id, opts = {})
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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#delete_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_jwt(user_id:, user_secret:, extra: {}
)

      data, _status_code, _headers = get_user_jwt_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_user_jwt_with_http_info(user_id:, user_secret:, extra: {}
)

      get_user_jwt_with_http_info_impl(user_id, user_secret, extra)
    end

    # Obtains an encrypted JWT tokens that should be decrypted on a user's local device
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [EncryptedResponse]
    def get_user_jwt_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = get_user_jwt_with_http_info(user_id, user_secret, opts)
      data
    end

    # Obtains an encrypted JWT tokens that should be decrypted on a user&#39;s local device
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(EncryptedResponse, Integer, Hash)>] EncryptedResponse data, response status code and response headers
    def get_user_jwt_with_http_info_impl(user_id, user_secret, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: AuthenticationApi.get_user_jwt ...'
      end
      # verify the required parameter 'user_id' is set
      if @api_client.config.client_side_validation && user_id.nil?
        fail ArgumentError, "Missing the required parameter 'user_id' when calling AuthenticationApi.get_user_jwt"
      end
      # verify the required parameter 'user_secret' is set
      if @api_client.config.client_side_validation && user_secret.nil?
        fail ArgumentError, "Missing the required parameter 'user_secret' when calling AuthenticationApi.get_user_jwt"
      end
      # resource path
      local_var_path = '/snapTrade/encryptedJWT'

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
      return_type = opts[:debug_return_type] || 'EncryptedResponse'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"AuthenticationApi.get_user_jwt",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#get_user_jwt\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Get a list of all SnapTrade users you've registered on our platform
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_snap_trade_users(extra: {}
)

      data, _status_code, _headers = list_snap_trade_users_with_http_info_impl(extra)
      data
    end

    # Get a list of all SnapTrade users you've registered on our platform
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def list_snap_trade_users_with_http_info(extra: {}
)

      list_snap_trade_users_with_http_info_impl(extra)
    end

    # Get a list of all SnapTrade users you've registered on our platform
    # @param [Hash] opts the optional parameters
    # @return [Array<String>]
    def list_snap_trade_users_impl(opts = {})
      data, _status_code, _headers = list_snap_trade_users_with_http_info(opts)
      data
    end

    # Get a list of all SnapTrade users you&#39;ve registered on our platform
    # @param [Hash] opts the optional parameters
    # @return [Array<(Array<String>, Integer, Hash)>] Array<String> data, response status code and response headers
    def list_snap_trade_users_with_http_info_impl(opts = {})
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

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#list_snap_trade_users\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param broker [String] 
    # @param immediate_redirect [Boolean] 
    # @param custom_redirect [String] 
    # @param reconnect [String] 
    # @param connection_type [ConnectionType] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def login_snap_trade_user(user_id:, user_secret:, broker: SENTINEL, immediate_redirect: SENTINEL, custom_redirect: SENTINEL, reconnect: SENTINEL, connection_type: SENTINEL, extra: {}
)
      _body = {}
      _body[:broker] = broker if broker != SENTINEL
      _body[:immediateRedirect] = immediate_redirect if immediate_redirect != SENTINEL
      _body[:customRedirect] = custom_redirect if custom_redirect != SENTINEL
      _body[:reconnect] = reconnect if reconnect != SENTINEL
      _body[:connectionType] = connection_type if connection_type != SENTINEL
      extra[:snap_trade_login_user_request_body] = _body if !_body.empty?

      data, _status_code, _headers = login_snap_trade_user_with_http_info_impl(user_id, user_secret, extra)
      data
    end

    # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param broker [String] 
    # @param immediate_redirect [Boolean] 
    # @param custom_redirect [String] 
    # @param reconnect [String] 
    # @param connection_type [ConnectionType] 
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def login_snap_trade_user_with_http_info(user_id:, user_secret:, broker: SENTINEL, immediate_redirect: SENTINEL, custom_redirect: SENTINEL, reconnect: SENTINEL, connection_type: SENTINEL, extra: {}
)
      _body = {}
      _body[:broker] = broker if broker != SENTINEL
      _body[:immediateRedirect] = immediate_redirect if immediate_redirect != SENTINEL
      _body[:customRedirect] = custom_redirect if custom_redirect != SENTINEL
      _body[:reconnect] = reconnect if reconnect != SENTINEL
      _body[:connectionType] = connection_type if connection_type != SENTINEL
      extra[:snap_trade_login_user_request_body] = _body if !_body.empty?

      login_snap_trade_user_with_http_info_impl(user_id, user_secret, extra)
    end

    # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SnapTradeLoginUserRequestBody] :snap_trade_login_user_request_body 
    # @return [AuthenticationLoginSnapTradeUser200Response]
    def login_snap_trade_user_impl(user_id, user_secret, opts = {})
      data, _status_code, _headers = login_snap_trade_user_with_http_info(user_id, user_secret, opts)
      data
    end

    # Generate a redirect URI to securely login a user to the SnapTrade Connection Portal
    # @param user_id [String] 
    # @param user_secret [String] 
    # @param [Hash] opts the optional parameters
    # @option opts [SnapTradeLoginUserRequestBody] :snap_trade_login_user_request_body 
    # @return [Array<(AuthenticationLoginSnapTradeUser200Response, Integer, Hash)>] AuthenticationLoginSnapTradeUser200Response data, response status code and response headers
    def login_snap_trade_user_with_http_info_impl(user_id, user_secret, opts = {})
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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#login_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Register user with SnapTrade in order to create secure brokerage authorizations
    # @param user_id [String] SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user
    # @param rsa_public_key [String] Open SSH RSA public key
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def register_snap_trade_user(user_id: SENTINEL, rsa_public_key: SENTINEL, extra: {}
)
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      _body[:rsaPublicKey] = rsa_public_key if rsa_public_key != SENTINEL
      snap_trade_register_user_request_body = _body

      data, _status_code, _headers = register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, extra)
      data
    end

    # Register user with SnapTrade in order to create secure brokerage authorizations
    # @param user_id [String] SnapTrade User ID. Provided by SnapTrade Partner. Can be any string, as long as it&#39;s unique to a user
    # @param rsa_public_key [String] Open SSH RSA public key
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def register_snap_trade_user_with_http_info(user_id: SENTINEL, rsa_public_key: SENTINEL, extra: {}
)
      _body = {}
      _body[:userId] = user_id if user_id != SENTINEL
      _body[:rsaPublicKey] = rsa_public_key if rsa_public_key != SENTINEL
      snap_trade_register_user_request_body = _body

      register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, extra)
    end

    # Register user with SnapTrade in order to create secure brokerage authorizations
    # @param snap_trade_register_user_request_body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [UserIDandSecret]
    def register_snap_trade_user_impl(snap_trade_register_user_request_body, opts = {})
      data, _status_code, _headers = register_snap_trade_user_with_http_info(snap_trade_register_user_request_body, opts)
      data
    end

    # Register user with SnapTrade in order to create secure brokerage authorizations
    # @param snap_trade_register_user_request_body [SnapTradeRegisterUserRequestBody] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(UserIDandSecret, Integer, Hash)>] UserIDandSecret data, response status code and response headers
    def register_snap_trade_user_with_http_info_impl(snap_trade_register_user_request_body, opts = {})
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

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: AuthenticationApi#register_snap_trade_user\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Authentication = AuthenticationApi::new
end
