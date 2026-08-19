=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  class Bucket
    TOP_1_PERCENT = "TOP_1_PERCENT".freeze
    TOP_5_PERCENT = "TOP_5_PERCENT".freeze
    TOP_10_PERCENT = "TOP_10_PERCENT".freeze
    TOP_25_PERCENT = "TOP_25_PERCENT".freeze
    TOP_50_PERCENT = "TOP_50_PERCENT".freeze
    BOTTOM_50_PERCENT = "BOTTOM_50_PERCENT".freeze

    def self.all_vars
      @all_vars ||= [TOP_1_PERCENT, TOP_5_PERCENT, TOP_10_PERCENT, TOP_25_PERCENT, TOP_50_PERCENT, BOTTOM_50_PERCENT].freeze
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
      return value if Bucket.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #Bucket"
    end
  end
end
