=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'cgi'

module SnapTrade
  class ManagementApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # Get usage stats
    #
    # Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users & Connections page of the SnapTrade Dashboard.
    # 
    # User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; `assets_under_management_calculated_at` indicates when it was last calculated.
    #
    # @param currency [String] ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_stats(currency: SENTINEL, extra: {})
      extra[:currency] = currency if currency != SENTINEL
      data, _status_code, _headers = get_stats_with_http_info_impl(extra)
      data
    end

    # Get usage stats
    #
    # Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users & Connections page of the SnapTrade Dashboard.
    # 
    # User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; `assets_under_management_calculated_at` indicates when it was last calculated.
    #
    # @param currency [String] ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    # @param [Hash] extra additional parameters to pass along through :header_params, :query_params, or parameter name
    def get_stats_with_http_info(currency: SENTINEL, extra: {})
      extra[:currency] = currency if currency != SENTINEL
      get_stats_with_http_info_impl(extra)
    end

    # Get usage stats
    # Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users & Connections page of the SnapTrade Dashboard.  User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; `assets_under_management_calculated_at` indicates when it was last calculated. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    # @return [PartnerStats]
    private def get_stats_impl(opts = {})
      data, _status_code, _headers = get_stats_with_http_info(opts)
      data
    end

    # Get usage stats
    # Returns user, connection, and connected asset totals for your SnapTrade Client ID. These are the same numbers shown on the Users &amp; Connections page of the SnapTrade Dashboard.  User and connection counts are cached for up to 5 minutes. Connected asset values come from a snapshot calculated once a day; &#x60;assets_under_management_calculated_at&#x60; indicates when it was last calculated. 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :currency ISO 4217 currency code to express connected asset values in. Defaults to `USD`.
    # @return [Array<(PartnerStats, Integer, Hash)>] PartnerStats data, response status code and response headers
    private def get_stats_with_http_info_impl(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ManagementApi.get_stats ...'
      end
      # resource path
      local_var_path = '/snapTrade/stats'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'currency'] = opts[:'currency'] if !opts[:'currency'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'PartnerStats'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['PartnerClientId', 'PartnerSignature', 'PartnerTimestamp']

      new_options = opts.merge(
        :operation => :"ManagementApi.get_stats",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers, response = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ManagementApi#get_stats\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers, response
    end
  end

  # top-level client access to avoid having the user to insantiate their own API instances
  Management = ManagementApi::new
end
