=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'forwardable'

# Common files
require 'snaptrade/api_client'
require 'snaptrade/api_error'
require 'snaptrade/version'
require 'snaptrade/configuration'

# Models
require 'snaptrade/models/account'
require 'snaptrade/models/account_balance'
require 'snaptrade/models/account_balance_total'
require 'snaptrade/models/account_category'
require 'snaptrade/models/account_holdings'
require 'snaptrade/models/account_holdings_account'
require 'snaptrade/models/account_information_get_user_account_order_detail_request'
require 'snaptrade/models/account_order_record'
require 'snaptrade/models/account_order_record_child_brokerage_order_ids'
require 'snaptrade/models/account_order_record_leg'
require 'snaptrade/models/account_order_record_leg_instrument'
require 'snaptrade/models/account_order_record_option_symbol'
require 'snaptrade/models/account_order_record_quote_currency'
require 'snaptrade/models/account_order_record_quote_universal_symbol'
require 'snaptrade/models/account_order_record_status'
require 'snaptrade/models/account_order_record_status_v2'
require 'snaptrade/models/account_order_record_trailing_stop'
require 'snaptrade/models/account_order_record_universal_symbol'
require 'snaptrade/models/account_order_record_v2'
require 'snaptrade/models/account_order_record_v2_order_role'
require 'snaptrade/models/account_orders_v2_response'
require 'snaptrade/models/account_position'
require 'snaptrade/models/account_simple'
require 'snaptrade/models/account_status'
require 'snaptrade/models/account_sync_status'
require 'snaptrade/models/account_universal_activity'
require 'snaptrade/models/account_universal_activity_currency'
require 'snaptrade/models/account_universal_activity_currency_universal_symbol'
require 'snaptrade/models/account_universal_activity_option_symbol'
require 'snaptrade/models/account_universal_activity_symbol'
require 'snaptrade/models/account_value_history_item'
require 'snaptrade/models/account_value_history_response'
require 'snaptrade/models/action_strict'
require 'snaptrade/models/action_strict_with_options'
require 'snaptrade/models/adr_instrument'
require 'snaptrade/models/adr_instrument_kind'
require 'snaptrade/models/all_account_positions_response'
require 'snaptrade/models/all_account_positions_response_data_freshness'
require 'snaptrade/models/auth_type'
require 'snaptrade/models/authentication_login_snap_trade_user200_response'
require 'snaptrade/models/balance'
require 'snaptrade/models/balance_currency'
require 'snaptrade/models/brokerage'
require 'snaptrade/models/brokerage_authorization'
require 'snaptrade/models/brokerage_authorization_data_freshness_mode'
require 'snaptrade/models/brokerage_authorization_disabled_confirmation'
require 'snaptrade/models/brokerage_authorization_refresh_confirmation'
require 'snaptrade/models/brokerage_authorization_transactions_sync_confirmation'
require 'snaptrade/models/brokerage_authorization_type_read_only'
require 'snaptrade/models/brokerage_authorization_type_read_only_brokerage'
require 'snaptrade/models/brokerage_authorization_type_read_only_type'
require 'snaptrade/models/brokerage_instrument'
require 'snaptrade/models/brokerage_instruments_response'
require 'snaptrade/models/brokerage_type'
require 'snaptrade/models/cancel_order_response'
require 'snaptrade/models/cash_change_direction'
require 'snaptrade/models/cef_instrument'
require 'snaptrade/models/cef_instrument_kind'
require 'snaptrade/models/cfd_instrument'
require 'snaptrade/models/cfd_instrument_kind'
require 'snaptrade/models/child_brokerage_order_ids'
require 'snaptrade/models/complex_order_leg'
require 'snaptrade/models/complex_order_leg_order_role'
require 'snaptrade/models/complex_order_response'
require 'snaptrade/models/complex_order_response_type'
require 'snaptrade/models/connection_account'
require 'snaptrade/models/connection_account_sync_status'
require 'snaptrade/models/connection_portal_version'
require 'snaptrade/models/connection_type'
require 'snaptrade/models/crypto_instrument'
require 'snaptrade/models/crypto_instrument_kind'
require 'snaptrade/models/crypto_order_form'
require 'snaptrade/models/crypto_order_form_time_in_force'
require 'snaptrade/models/crypto_order_form_type'
require 'snaptrade/models/crypto_order_preview'
require 'snaptrade/models/crypto_order_preview_estimated_fee'
require 'snaptrade/models/crypto_trading_instrument'
require 'snaptrade/models/crypto_trading_instrument_type'
require 'snaptrade/models/cryptocurrency_pair'
require 'snaptrade/models/cryptocurrency_pair_quote'
require 'snaptrade/models/currency'
require 'snaptrade/models/delete_connection_confirmation'
require 'snaptrade/models/delete_user_response'
require 'snaptrade/models/deposit_account'
require 'snaptrade/models/deposit_account_kind'
require 'snaptrade/models/deposit_account_net_value'
require 'snaptrade/models/deposit_account_sync_status'
require 'snaptrade/models/dividend_at_date'
require 'snaptrade/models/encrypted_response'
require 'snaptrade/models/encrypted_response_encrypted_message_data'
require 'snaptrade/models/etf_instrument'
require 'snaptrade/models/etf_instrument_kind'
require 'snaptrade/models/exchange'
require 'snaptrade/models/exchange_rate_pairs'
require 'snaptrade/models/figi_instrument'
require 'snaptrade/models/future_instrument'
require 'snaptrade/models/future_instrument_kind'
require 'snaptrade/models/future_option_instrument'
require 'snaptrade/models/future_option_instrument_kind'
require 'snaptrade/models/holdings_status'
require 'snaptrade/models/institution'
require 'snaptrade/models/instrument'
require 'snaptrade/models/investment_account'
require 'snaptrade/models/investment_account_net_value'
require 'snaptrade/models/kind'
require 'snaptrade/models/line_of_credit_account'
require 'snaptrade/models/line_of_credit_account_available_credit'
require 'snaptrade/models/line_of_credit_account_kind'
require 'snaptrade/models/line_of_credit_account_minimum_payment_amount'
require 'snaptrade/models/line_of_credit_account_net_value'
require 'snaptrade/models/line_of_credit_account_sync_status'
require 'snaptrade/models/login_redirect_uri'
require 'snaptrade/models/manual_trade'
require 'snaptrade/models/manual_trade_and_impact'
require 'snaptrade/models/manual_trade_balance'
require 'snaptrade/models/manual_trade_form'
require 'snaptrade/models/manual_trade_form_bracket'
require 'snaptrade/models/manual_trade_form_complex'
require 'snaptrade/models/manual_trade_form_complex_type'
require 'snaptrade/models/manual_trade_form_notional_value'
require 'snaptrade/models/manual_trade_form_with_options'
require 'snaptrade/models/manual_trade_impact'
require 'snaptrade/models/manual_trade_place_time_in_force_strict'
require 'snaptrade/models/manual_trade_replace_form'
require 'snaptrade/models/manual_trade_symbol'
require 'snaptrade/models/mleg_action_strict'
require 'snaptrade/models/mleg_instrument_type'
require 'snaptrade/models/mleg_leg'
require 'snaptrade/models/mleg_order_response'
require 'snaptrade/models/mleg_order_type_strict'
require 'snaptrade/models/mleg_price_effect_strict'
require 'snaptrade/models/mleg_trade_form'
require 'snaptrade/models/mleg_trading_instrument'
require 'snaptrade/models/model400_failed_request_response'
require 'snaptrade/models/model401_failed_request_response'
require 'snaptrade/models/model402_brokerage_auth_already_disabled_exception'
require 'snaptrade/models/model402_brokerage_auth_disabled_response'
require 'snaptrade/models/model403_failed_request_response'
require 'snaptrade/models/model403_feature_not_enabled_response'
require 'snaptrade/models/model404_failed_request_response'
require 'snaptrade/models/model425_failed_request_response'
require 'snaptrade/models/model429_too_many_requests_response'
require 'snaptrade/models/model500_unexpected_exception_response'
require 'snaptrade/models/model501_not_implemented_response'
require 'snaptrade/models/model503_brokerage_request_response'
require 'snaptrade/models/monthly_dividends'
require 'snaptrade/models/mutual_fund_instrument'
require 'snaptrade/models/mutual_fund_instrument_kind'
require 'snaptrade/models/net_contributions'
require 'snaptrade/models/net_dividend'
require 'snaptrade/models/notional_value'
require 'snaptrade/models/o_auth_webhook_base'
require 'snaptrade/models/option_brokerage_symbol'
require 'snaptrade/models/option_chain_inner'
require 'snaptrade/models/option_chain_inner_chain_per_root_inner'
require 'snaptrade/models/option_chain_inner_chain_per_root_inner_chain_per_strike_price_inner'
require 'snaptrade/models/option_impact'
require 'snaptrade/models/option_instrument'
require 'snaptrade/models/option_instrument_kind'
require 'snaptrade/models/option_instrument_option_type'
require 'snaptrade/models/option_leg'
require 'snaptrade/models/option_leg_action'
require 'snaptrade/models/option_quote'
require 'snaptrade/models/option_quote_greeks'
require 'snaptrade/models/option_strategy'
require 'snaptrade/models/option_strategy_legs_inner'
require 'snaptrade/models/option_type'
require 'snaptrade/models/options_position'
require 'snaptrade/models/options_position_currency'
require 'snaptrade/models/options_symbol'
require 'snaptrade/models/options_symbol_option_type'
require 'snaptrade/models/order_role'
require 'snaptrade/models/order_type_strict'
require 'snaptrade/models/order_updated_response'
require 'snaptrade/models/order_updated_response_order'
require 'snaptrade/models/other_instrument'
require 'snaptrade/models/other_instrument_kind'
require 'snaptrade/models/paginated_universal_activity'
require 'snaptrade/models/pagination_details'
require 'snaptrade/models/partner_data'
require 'snaptrade/models/past_value'
require 'snaptrade/models/performance_custom'
require 'snaptrade/models/position'
require 'snaptrade/models/position_currency'
require 'snaptrade/models/position_symbol'
require 'snaptrade/models/price_effect'
require 'snaptrade/models/rate_of_return_object'
require 'snaptrade/models/rate_of_return_response'
require 'snaptrade/models/recent_orders_response'
require 'snaptrade/models/schema_version'
require 'snaptrade/models/security_type'
require 'snaptrade/models/session_event'
require 'snaptrade/models/session_event_type'
require 'snaptrade/models/simple_order_form'
require 'snaptrade/models/simple_order_form_time_in_force'
require 'snaptrade/models/simple_order_form_type'
require 'snaptrade/models/snap_trade_holdings_account'
require 'snaptrade/models/snap_trade_holdings_total_value'
require 'snaptrade/models/snap_trade_login_user_request_body'
require 'snaptrade/models/snap_trade_register_user_request_body'
require 'snaptrade/models/snaptrade'
require 'snaptrade/models/status'
require 'snaptrade/models/stock_instrument'
require 'snaptrade/models/stock_instrument_figi_instrument'
require 'snaptrade/models/stock_instrument_kind'
require 'snaptrade/models/stop_loss'
require 'snaptrade/models/strategy_order_record'
require 'snaptrade/models/strategy_order_record_status'
require 'snaptrade/models/strategy_quotes'
require 'snaptrade/models/strategy_quotes_greek'
require 'snaptrade/models/strategy_type'
require 'snaptrade/models/sub_period_return_rate'
require 'snaptrade/models/symbol'
require 'snaptrade/models/symbol_currency'
require 'snaptrade/models/symbol_exchange'
require 'snaptrade/models/symbol_query'
require 'snaptrade/models/symbols_quotes_inner'
require 'snaptrade/models/take_profit'
require 'snaptrade/models/tax_lot'
require 'snaptrade/models/time_in_force_strict'
require 'snaptrade/models/timeframe'
require 'snaptrade/models/trade_detection_add_subscription_request'
require 'snaptrade/models/trade_detection_cancel_subscription_request'
require 'snaptrade/models/trade_detection_cancel_subscription_response'
require 'snaptrade/models/trade_detection_subscription'
require 'snaptrade/models/trading_instrument'
require 'snaptrade/models/trading_instrument_type'
require 'snaptrade/models/trading_search_cryptocurrency_pair_instruments200_response'
require 'snaptrade/models/trading_session'
require 'snaptrade/models/trailing_stop'
require 'snaptrade/models/transactions_status'
require 'snaptrade/models/type'
require 'snaptrade/models/us_exchange'
require 'snaptrade/models/underlying_cfd_instrument'
require 'snaptrade/models/underlying_option_instrument'
require 'snaptrade/models/underlying_symbol'
require 'snaptrade/models/underlying_symbol_exchange'
require 'snaptrade/models/underlying_symbol_type'
require 'snaptrade/models/universal_activity'
require 'snaptrade/models/universal_symbol'
require 'snaptrade/models/user_i_dand_secret'
require 'snaptrade/models/validated_trade_body'

# APIs
require 'snaptrade/api/account_information_api'
require 'snaptrade/api/api_status_api'
require 'snaptrade/api/authentication_api'
require 'snaptrade/api/connections_api'
require 'snaptrade/api/experimental_endpoints_api'
require 'snaptrade/api/reference_data_api'
require 'snaptrade/api/trading_api'

module SnapTrade
  @config = Configuration.default
  SENTINEL = Object.new
  class << self

    private def is_sentinel(value)
      value == SENTINEL
    end

    def host
      @config.host
    end

    def host=(value)
      @config.host = value
    end
    # api key from OpenAPI spec
    def client_id
      @config.client_id
    end

    def client_id=(value)
      @config.client_id = value
    end
    # api key from OpenAPI spec
    def signature
      @config.signature
    end

    def signature=(value)
      @config.signature = value
    end
    # api key from OpenAPI spec
    def timestamp
      @config.timestamp
    end

    def timestamp=(value)
      @config.timestamp = value
    end
    # client state from konfig.yaml
    def consumer_key
      @config.consumer_key
    end

    def consumer_key=(value)
      @config.consumer_key = value
    end

    # Customize default settings for the SDK using block.
    #   SnapTrade.configure do |config|
    #     config.host = "http://example.com"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end

  class Client
    attr_reader :account_information
    attr_reader :api_status
    attr_reader :authentication
    attr_reader :connections
    attr_reader :experimental_endpoints
    attr_reader :reference_data
    attr_reader :trading

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @account_information = SnapTrade::AccountInformationApi.new(@api_client)
      @api_status = SnapTrade::APIStatusApi.new(@api_client)
      @authentication = SnapTrade::AuthenticationApi.new(@api_client)
      @connections = SnapTrade::ConnectionsApi.new(@api_client)
      @experimental_endpoints = SnapTrade::ExperimentalEndpointsApi.new(@api_client)
      @reference_data = SnapTrade::ReferenceDataApi.new(@api_client)
      @trading = SnapTrade::TradingApi.new(@api_client)
    end
  end
end
