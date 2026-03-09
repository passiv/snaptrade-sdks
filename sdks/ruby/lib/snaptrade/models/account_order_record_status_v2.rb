=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  class AccountOrderRecordStatusV2
    PENDING = "PENDING".freeze
    REJECTED = "REJECTED".freeze
    CANCELED = "CANCELED".freeze
    CANCEL_PENDING = "CANCEL_PENDING".freeze
    PARTIAL_CANCELED = "PARTIAL_CANCELED".freeze
    EXECUTED = "EXECUTED".freeze
    PARTIALLY_EXECUTED = "PARTIALLY_EXECUTED".freeze
    REPLACED = "REPLACED".freeze
    REPLACE_PENDING = "REPLACE_PENDING".freeze
    EXPIRED = "EXPIRED".freeze

    def self.all_vars
      @all_vars ||= [PENDING, REJECTED, CANCELED, CANCEL_PENDING, PARTIAL_CANCELED, EXECUTED, PARTIALLY_EXECUTED, REPLACED, REPLACE_PENDING, EXPIRED].freeze
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
      return value if AccountOrderRecordStatusV2.all_vars.include?(value)
      raise "Invalid ENUM value #{value} for class #AccountOrderRecordStatusV2"
    end
  end
end
