=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  class MlegPriceEffectStrict
    CREDIT = "CREDIT".freeze
    DEBIT = "DEBIT".freeze
    EVEN = "EVEN".freeze

    def self.all_vars
      @all_vars ||= [CREDIT, DEBIT, EVEN].freeze
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
      return value if MlegPriceEffectStrict.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #MlegPriceEffectStrict"
    end
  end
end
