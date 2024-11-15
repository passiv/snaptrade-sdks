=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  class Timeframe
    ALL = "ALL".freeze
    N1_Y = "1Y".freeze
    N6_M = "6M".freeze
    N3_M = "3M".freeze
    N1_M = "1M".freeze

    def self.all_vars
      @all_vars ||= [ALL, N1_Y, N6_M, N3_M, N1_M].freeze
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
      return value if Timeframe.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Timeframe"
    end
  end
end
