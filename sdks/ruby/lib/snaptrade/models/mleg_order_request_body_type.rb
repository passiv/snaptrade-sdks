=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  class MlegOrderRequestBodyType
    MARKET = "MARKET".freeze
    LIMIT = "LIMIT".freeze
    STOP_LOSS_MARKET = "STOP_LOSS_MARKET".freeze
    STOP_LOSS_LIMIT = "STOP_LOSS_LIMIT".freeze

    def self.all_vars
      @all_vars ||= [MARKET, LIMIT, STOP_LOSS_MARKET, STOP_LOSS_LIMIT].freeze
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
      return value if MlegOrderRequestBodyType.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #MlegOrderRequestBodyType"
    end
  end
end
