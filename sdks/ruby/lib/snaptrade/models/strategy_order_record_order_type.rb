=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com

=end

require 'date'
require 'time'

module SnapTrade
  class StrategyOrderRecordOrderType
    LIMIT = "Limit".freeze
    MARKET = "Market".freeze
    NET_DEBIT = "NetDebit".freeze
    NET_CREDIT = "NetCredit".freeze

    def self.all_vars
      @all_vars ||= [LIMIT, MARKET, NET_DEBIT, NET_CREDIT].freeze
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      return value if StrategyOrderRecordOrderType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #StrategyOrderRecordOrderType"
    end
  end
end