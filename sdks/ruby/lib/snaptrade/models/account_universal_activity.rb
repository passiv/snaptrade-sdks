=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # A transaction or activity from an institution
  class AccountUniversalActivity
    # Unique identifier for the transaction. This is the ID used to reference the transaction in SnapTrade.  Please note that this ID _can_ change if the transaction is deleted and re-added. Under normal circumstances, SnapTrade does not delete transactions. The only time this would happen is if SnapTrade re-fetches and reprocesses the data from the brokerage, which is rare. If you require a stable ID, please let us know and we can work with you to provide one. 
    attr_accessor :id

    attr_accessor :symbol

    attr_accessor :option_symbol

    # The price of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions.
    attr_accessor :price

    # The number of units of the security for the transaction. This is mostly applicable to `BUY`, `SELL`, and `DIVIDEND` transactions.
    attr_accessor :units

    # The amount of the transaction denominated in `currency`. This can be positive or negative. In general, transactions that positively affect the account balance (like sell, deposits, dividends, etc) will have a positive amount, while transactions that negatively affect the account balance (like buy, withdrawals, fees, etc) will have a negative amount.
    attr_accessor :amount

    attr_accessor :currency

    # A string representing the type of transaction. SnapTrade does a best effort to categorize the brokerage transaction types into a common set of values. Here are some of the most popular values:   - `BUY` - Asset bought.   - `SELL` - Asset sold.   - `DIVIDEND` - Dividend payout.   - `CONTRIBUTION` - Cash contribution.   - `WITHDRAWAL` - Cash withdrawal.   - `REI` - Dividend reinvestment.   - `INTEREST` - Interest deposited into the account.   - `FEE` - Fee withdrawn from the account.   - `OPTIONEXPIRATION` - Option expiration event. `option_symbol` contains the related option contract info.   - `OPTIONASSIGNMENT` - Option assignment event. `option_symbol` contains the related option contract info.   - `OPTIONEXERCISE` - Option exercise event. `option_symbol` contains the related option contract info. 
    attr_accessor :type

    # If an option `BUY` or `SELL` transaction, this further specifies the type of action. The possible values are: - BUY_TO_OPEN - BUY_TO_CLOSE - SELL_TO_OPEN - SELL_TO_CLOSE 
    attr_accessor :option_type

    # A human-readable description of the transaction. This is usually the brokerage's description of the transaction.
    attr_accessor :description

    # The recorded time for the transaction. The granularity of this timestamp depends on the brokerage. Some brokerages provide the exact time of the transaction, while others provide only the date. Please check the [integrations page](https://snaptrade.notion.site/66793431ad0b416489eaabaf248d0afb?v=6fab8012ade6441fa0c6d9af9c55ce3a) for the specific brokerage to see the granularity of the timestamps. Note that even though the field is named `trade_date`, it can represent any type of transaction, not just trades.
    attr_accessor :trade_date

    # The date on which the transaction is settled.
    attr_accessor :settlement_date

    # Any fee associated with the transaction if provided by the brokerage.
    attr_accessor :fee

    # The forex conversion rate involved in the transaction if provided by the brokerage. Used in cases where securities of one currency are purchased in a different currency, and the forex conversion is automatic. In those cases, price, amount and fee will be in the top level currency (activity -> currency)
    attr_accessor :fx_rate

    # The institution that the transaction is associated with. This is usually the brokerage name.
    attr_accessor :institution

    # Reference ID from brokerage used to identify related transactions. For example if an order comprises of several transactions (buy, fee, fx), they can be grouped if they share the same `external_reference_id`
    attr_accessor :external_reference_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'symbol' => :'symbol',
        :'option_symbol' => :'option_symbol',
        :'price' => :'price',
        :'units' => :'units',
        :'amount' => :'amount',
        :'currency' => :'currency',
        :'type' => :'type',
        :'option_type' => :'option_type',
        :'description' => :'description',
        :'trade_date' => :'trade_date',
        :'settlement_date' => :'settlement_date',
        :'fee' => :'fee',
        :'fx_rate' => :'fx_rate',
        :'institution' => :'institution',
        :'external_reference_id' => :'external_reference_id'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'symbol' => :'AccountUniversalActivitySymbol',
        :'option_symbol' => :'AccountUniversalActivityOptionSymbol',
        :'price' => :'Float',
        :'units' => :'Float',
        :'amount' => :'Float',
        :'currency' => :'AccountUniversalActivityCurrency',
        :'type' => :'String',
        :'option_type' => :'String',
        :'description' => :'String',
        :'trade_date' => :'Time',
        :'settlement_date' => :'Time',
        :'fee' => :'Float',
        :'fx_rate' => :'Float',
        :'institution' => :'String',
        :'external_reference_id' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'symbol',
        :'option_symbol',
        :'amount',
        :'trade_date',
        :'fx_rate',
        :'external_reference_id'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::AccountUniversalActivity` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::AccountUniversalActivity`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'option_symbol')
        self.option_symbol = attributes[:'option_symbol']
      end

      if attributes.key?(:'price')
        self.price = attributes[:'price']
      end

      if attributes.key?(:'units')
        self.units = attributes[:'units']
      end

      if attributes.key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'option_type')
        self.option_type = attributes[:'option_type']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'trade_date')
        self.trade_date = attributes[:'trade_date']
      end

      if attributes.key?(:'settlement_date')
        self.settlement_date = attributes[:'settlement_date']
      end

      if attributes.key?(:'fee')
        self.fee = attributes[:'fee']
      end

      if attributes.key?(:'fx_rate')
        self.fx_rate = attributes[:'fx_rate']
      end

      if attributes.key?(:'institution')
        self.institution = attributes[:'institution']
      end

      if attributes.key?(:'external_reference_id')
        self.external_reference_id = attributes[:'external_reference_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          symbol == o.symbol &&
          option_symbol == o.option_symbol &&
          price == o.price &&
          units == o.units &&
          amount == o.amount &&
          currency == o.currency &&
          type == o.type &&
          option_type == o.option_type &&
          description == o.description &&
          trade_date == o.trade_date &&
          settlement_date == o.settlement_date &&
          fee == o.fee &&
          fx_rate == o.fx_rate &&
          institution == o.institution &&
          external_reference_id == o.external_reference_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, symbol, option_symbol, price, units, amount, currency, type, option_type, description, trade_date, settlement_date, fee, fx_rate, institution, external_reference_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = SnapTrade.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
