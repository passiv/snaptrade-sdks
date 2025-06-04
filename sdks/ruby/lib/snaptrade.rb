=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

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
require 'snaptrade/models/account_holdings'
require 'snaptrade/models/account_holdings_account'
require 'snaptrade/models/account_order_record'
require 'snaptrade/models/account_order_record_child_brokerage_order_ids'
require 'snaptrade/models/account_order_record_option_symbol'
require 'snaptrade/models/account_order_record_quote_currency'
require 'snaptrade/models/account_order_record_quote_universal_symbol'
require 'snaptrade/models/account_order_record_status'
require 'snaptrade/models/account_order_record_universal_symbol'
require 'snaptrade/models/account_simple'
require 'snaptrade/models/account_status'
require 'snaptrade/models/account_sync_status'
require 'snaptrade/models/account_universal_activity'
require 'snaptrade/models/account_universal_activity_currency'
require 'snaptrade/models/account_universal_activity_option_symbol'
require 'snaptrade/models/account_universal_activity_symbol'
require 'snaptrade/models/action_strict'
require 'snaptrade/models/action_strict_with_options'
require 'snaptrade/models/auth_type'
require 'snaptrade/models/authentication_login_snap_trade_user200_response'
require 'snaptrade/models/balance'
require 'snaptrade/models/balance_currency'
require 'snaptrade/models/brokerage'
require 'snaptrade/models/brokerage_authorization'
require 'snaptrade/models/brokerage_authorization_disabled_confirmation'
require 'snaptrade/models/brokerage_authorization_refresh_confirmation'
require 'snaptrade/models/brokerage_authorization_type_read_only'
require 'snaptrade/models/brokerage_authorization_type_read_only_brokerage'
require 'snaptrade/models/brokerage_type'
require 'snaptrade/models/child_brokerage_order_ids'
require 'snaptrade/models/connection_portal_version'
require 'snaptrade/models/connection_type'
require 'snaptrade/models/connections_session_events200_response_inner'
require 'snaptrade/models/cryptocurrency_pair'
require 'snaptrade/models/cryptocurrency_pair_quote'
require 'snaptrade/models/currency'
require 'snaptrade/models/delete_user_response'
require 'snaptrade/models/dividend_at_date'
require 'snaptrade/models/encrypted_response'
require 'snaptrade/models/encrypted_response_encrypted_message_data'
require 'snaptrade/models/exchange'
require 'snaptrade/models/exchange_rate_pairs'
require 'snaptrade/models/figi_instrument'
require 'snaptrade/models/holdings_status'
require 'snaptrade/models/login_redirect_uri'
require 'snaptrade/models/manual_trade'
require 'snaptrade/models/manual_trade_and_impact'
require 'snaptrade/models/manual_trade_balance'
require 'snaptrade/models/manual_trade_form'
require 'snaptrade/models/manual_trade_form_bracket'
require 'snaptrade/models/manual_trade_form_notional_value'
require 'snaptrade/models/manual_trade_form_with_options'
require 'snaptrade/models/manual_trade_impact'
require 'snaptrade/models/manual_trade_replace_form'
require 'snaptrade/models/manual_trade_symbol'
require 'snaptrade/models/mleg_action_strict'
require 'snaptrade/models/mleg_instrument_type'
require 'snaptrade/models/mleg_leg'
require 'snaptrade/models/mleg_order_response'
require 'snaptrade/models/mleg_order_type_strict'
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
require 'snaptrade/models/model500_unexpected_exception_response'
require 'snaptrade/models/monthly_dividends'
require 'snaptrade/models/net_contributions'
require 'snaptrade/models/net_dividend'
require 'snaptrade/models/notional_value'
require 'snaptrade/models/option_brokerage_symbol'
require 'snaptrade/models/option_chain_inner'
require 'snaptrade/models/option_chain_inner_chain_per_root_inner'
require 'snaptrade/models/option_chain_inner_chain_per_root_inner_chain_per_strike_price_inner'
require 'snaptrade/models/option_leg'
require 'snaptrade/models/option_leg_action'
require 'snaptrade/models/option_strategy'
require 'snaptrade/models/option_strategy_legs_inner'
require 'snaptrade/models/option_type'
require 'snaptrade/models/options_get_option_strategy_request'
require 'snaptrade/models/options_place_option_strategy_request'
require 'snaptrade/models/options_position'
require 'snaptrade/models/options_position_currency'
require 'snaptrade/models/options_symbol'
require 'snaptrade/models/order_type_strict'
require 'snaptrade/models/order_updated_response'
require 'snaptrade/models/paginated_universal_activity'
require 'snaptrade/models/pagination_details'
require 'snaptrade/models/partner_data'
require 'snaptrade/models/past_value'
require 'snaptrade/models/performance_custom'
require 'snaptrade/models/position'
require 'snaptrade/models/position_symbol'
require 'snaptrade/models/rate_of_return_object'
require 'snaptrade/models/rate_of_return_response'
require 'snaptrade/models/recent_orders_response'
require 'snaptrade/models/security_type'
require 'snaptrade/models/session_event'
require 'snaptrade/models/session_event_type'
require 'snaptrade/models/simple_order_form'
require 'snaptrade/models/simple_order_form_time_in_force'
require 'snaptrade/models/simple_order_form_type'
require 'snaptrade/models/simple_order_preview'
require 'snaptrade/models/simple_order_preview_estimated_fee'
require 'snaptrade/models/snap_trade_holdings_account'
require 'snaptrade/models/snap_trade_holdings_total_value'
require 'snaptrade/models/snap_trade_login_user_request_body'
require 'snaptrade/models/snap_trade_register_user_request_body'
require 'snaptrade/models/status'
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
require 'snaptrade/models/symbol_figi_instrument'
require 'snaptrade/models/symbol_query'
require 'snaptrade/models/symbols_quotes_inner'
require 'snaptrade/models/take_profit'
require 'snaptrade/models/time_in_force_strict'
require 'snaptrade/models/timeframe'
require 'snaptrade/models/trading_cancel_user_account_order_request'
require 'snaptrade/models/trading_instrument'
require 'snaptrade/models/trading_instrument_type'
require 'snaptrade/models/trading_search_cryptocurrency_pair_instruments200_response'
require 'snaptrade/models/transactions_status'
require 'snaptrade/models/type'
require 'snaptrade/models/us_exchange'
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
require 'snaptrade/api/options_api'
require 'snaptrade/api/reference_data_api'
require 'snaptrade/api/trading_api'
require 'snaptrade/api/transactions_and_reporting_api'

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
    attr_reader :options
    attr_reader :reference_data
    attr_reader :trading
    attr_reader :transactions_and_reporting

    def initialize(config = Configuration.default)
      @api_client = ApiClient::new(config)
      @account_information = SnapTrade::AccountInformationApi.new(@api_client)
      @api_status = SnapTrade::APIStatusApi.new(@api_client)
      @authentication = SnapTrade::AuthenticationApi.new(@api_client)
      @connections = SnapTrade::ConnectionsApi.new(@api_client)
      @options = SnapTrade::OptionsApi.new(@api_client)
      @reference_data = SnapTrade::ReferenceDataApi.new(@api_client)
      @trading = SnapTrade::TradingApi.new(@api_client)
      @transactions_and_reporting = SnapTrade::TransactionsAndReportingApi.new(@api_client)
    end
  end
end
