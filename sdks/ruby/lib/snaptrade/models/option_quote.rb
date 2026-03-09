=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # Real-time quote for a single option contract.
  class OptionQuote
    # The OCC-formatted option symbol.
    attr_accessor :symbol

    # The best bid price for the option contract.
    attr_accessor :bid_price

    # The number of contracts available at the bid price.
    attr_accessor :bid_size

    # The best ask price for the option contract.
    attr_accessor :ask_price

    # The number of contracts available at the ask price.
    attr_accessor :ask_size

    # The price of the last trade for the option contract.
    attr_accessor :last_price

    # The number of contracts in the last trade.
    attr_accessor :last_size

    # The total number of outstanding contracts.
    attr_accessor :open_interest

    # The total number of contracts traded during the current session.
    attr_accessor :volume

    # The implied volatility of the option contract.
    attr_accessor :implied_volatility

    # The current price of the underlying security.
    attr_accessor :underlying_price

    # The timestamp of the quote.
    attr_accessor :timestamp

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'symbol' => :'symbol',
        :'bid_price' => :'bid_price',
        :'bid_size' => :'bid_size',
        :'ask_price' => :'ask_price',
        :'ask_size' => :'ask_size',
        :'last_price' => :'last_price',
        :'last_size' => :'last_size',
        :'open_interest' => :'open_interest',
        :'volume' => :'volume',
        :'implied_volatility' => :'implied_volatility',
        :'underlying_price' => :'underlying_price',
        :'timestamp' => :'timestamp'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'symbol' => :'String',
        :'bid_price' => :'Float',
        :'bid_size' => :'Integer',
        :'ask_price' => :'Float',
        :'ask_size' => :'Integer',
        :'last_price' => :'Float',
        :'last_size' => :'Integer',
        :'open_interest' => :'Integer',
        :'volume' => :'Integer',
        :'implied_volatility' => :'Float',
        :'underlying_price' => :'Float',
        :'timestamp' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'timestamp'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::OptionQuote` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::OptionQuote`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'symbol')
        self.symbol = attributes[:'symbol']
      end

      if attributes.key?(:'bid_price')
        self.bid_price = attributes[:'bid_price']
      end

      if attributes.key?(:'bid_size')
        self.bid_size = attributes[:'bid_size']
      end

      if attributes.key?(:'ask_price')
        self.ask_price = attributes[:'ask_price']
      end

      if attributes.key?(:'ask_size')
        self.ask_size = attributes[:'ask_size']
      end

      if attributes.key?(:'last_price')
        self.last_price = attributes[:'last_price']
      end

      if attributes.key?(:'last_size')
        self.last_size = attributes[:'last_size']
      end

      if attributes.key?(:'open_interest')
        self.open_interest = attributes[:'open_interest']
      end

      if attributes.key?(:'volume')
        self.volume = attributes[:'volume']
      end

      if attributes.key?(:'implied_volatility')
        self.implied_volatility = attributes[:'implied_volatility']
      end

      if attributes.key?(:'underlying_price')
        self.underlying_price = attributes[:'underlying_price']
      end

      if attributes.key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
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
          symbol == o.symbol &&
          bid_price == o.bid_price &&
          bid_size == o.bid_size &&
          ask_price == o.ask_price &&
          ask_size == o.ask_size &&
          last_price == o.last_price &&
          last_size == o.last_size &&
          open_interest == o.open_interest &&
          volume == o.volume &&
          implied_volatility == o.implied_volatility &&
          underlying_price == o.underlying_price &&
          timestamp == o.timestamp
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [symbol, bid_price, bid_size, ask_price, ask_size, last_price, last_size, open_interest, volume, implied_volatility, underlying_price, timestamp].hash
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
