=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # A single account under a connection, from the `kind`-discriminated union used by `Connections_listConnectionAccounts`. Use `kind` to determine which schema is present.  Only `investment` is implemented today; `deposit` and `line_of_credit` will be added as additional variants in a future release. 
  module ConnectionAccount
    class << self
      # List of class defined in oneOf (OpenAPI v3)
      def openapi_one_of
        [
          :'InvestmentAccount'
        ]
      end

      # Discriminator's property name (OpenAPI v3)
      def openapi_discriminator_name
        :'kind'
      end

      # Discriminator's mapping (OpenAPI v3)
      def openapi_discriminator_mapping
        {
          :'investment' => :'InvestmentAccount'
        }
      end

      # Builds the object
      # @param [Mixed] Data to be matched against the list of oneOf items
      # @return [Object] Returns the model or the data itself
      def build(data)
        discriminator_value = data[openapi_discriminator_name]
        return nil if discriminator_value.nil?

        klass = openapi_discriminator_mapping[discriminator_value.to_s.to_sym]
        return nil unless klass

        SnapTrade.const_get(klass).build_from_hash(data)
      end
    end
  end

end
