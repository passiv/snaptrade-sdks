=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # Describes a single order in the standardized V2 format.
  class AccountOrderRecordV2
    # Order ID returned by brokerage. This is the unique identifier for the order in the brokerage system.
    attr_accessor :brokerage_order_id

    # Indicates the status of an order. SnapTrade does a best effort to map brokerage statuses to statuses in this enum. Possible values include:   - NONE   - PENDING   - ACCEPTED   - FAILED   - REJECTED   - CANCELED   - PARTIAL_CANCELED   - CANCEL_PENDING   - EXECUTED   - PARTIAL   - REPLACE_PENDING   - REPLACED   - EXPIRED   - QUEUED   - TRIGGERED   - ACTIVATED 
    attr_accessor :status

    # The type of order placed.   - `MARKET`   - `LIMIT`   - `STOP`   - `STOP_LIMIT` 
    attr_accessor :order_type

    # The Time in Force type for the order. This field indicates how long the order will remain active before it is executed or expires. We try our best to map brokerage time in force values to the following. When mapping fails, we will return the brokerage's time in force value.   - `DAY` - Day. The order is valid only for the trading day on which it is placed.   - `GTC` - Good Til Canceled. The order is valid until it is executed or canceled.   - `FOK` - Fill Or Kill. The order must be executed in its entirety immediately or be canceled completely.   - `IOC` - Immediate Or Cancel. The order must be executed immediately. Any portion of the order that cannot be filled immediately will be canceled.   - `GTD` - Good Til Date. The order is valid until the specified date.   - `MOO` - Market On Open. The order is to be executed at the day's opening price.   - `EHP` - Extended Hours P.M. The order is to be placed during extended hour trading, after markets close. 
    attr_accessor :time_in_force

    # The time the order was placed. This is the time the order was submitted to the brokerage.
    attr_accessor :time_placed

    # The time the order was executed in the brokerage system. This value is not always available from the brokerage.
    attr_accessor :time_executed

    # Quote currency code for the order.
    attr_accessor :quote_currency

    # The price at which the order was executed.
    attr_accessor :execution_price

    # The limit price is maximum price one is willing to pay for a buy order or the minimum price one is willing to accept for a sell order. Should only apply to `Limit` and `StopLimit` orders.
    attr_accessor :limit_price

    # The stop price is the price at which a stop order is triggered. Should only apply to `Stop` and `StopLimit` orders.
    attr_accessor :stop_price

    # List of legs that make up the order.
    attr_accessor :legs

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'brokerage_order_id' => :'brokerage_order_id',
        :'status' => :'status',
        :'order_type' => :'order_type',
        :'time_in_force' => :'time_in_force',
        :'time_placed' => :'time_placed',
        :'time_executed' => :'time_executed',
        :'quote_currency' => :'quote_currency',
        :'execution_price' => :'execution_price',
        :'limit_price' => :'limit_price',
        :'stop_price' => :'stop_price',
        :'legs' => :'legs'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'brokerage_order_id' => :'String',
        :'status' => :'AccountOrderRecordStatus',
        :'order_type' => :'String',
        :'time_in_force' => :'String',
        :'time_placed' => :'Time',
        :'time_executed' => :'Time',
        :'quote_currency' => :'String',
        :'execution_price' => :'Float',
        :'limit_price' => :'Float',
        :'stop_price' => :'Float',
        :'legs' => :'Array<AccountOrderRecordLeg>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'order_type',
        :'time_executed',
        :'execution_price',
        :'limit_price',
        :'stop_price',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::AccountOrderRecordV2` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::AccountOrderRecordV2`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'brokerage_order_id')
        self.brokerage_order_id = attributes[:'brokerage_order_id']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'order_type')
        self.order_type = attributes[:'order_type']
      end

      if attributes.key?(:'time_in_force')
        self.time_in_force = attributes[:'time_in_force']
      end

      if attributes.key?(:'time_placed')
        self.time_placed = attributes[:'time_placed']
      end

      if attributes.key?(:'time_executed')
        self.time_executed = attributes[:'time_executed']
      end

      if attributes.key?(:'quote_currency')
        self.quote_currency = attributes[:'quote_currency']
      end

      if attributes.key?(:'execution_price')
        self.execution_price = attributes[:'execution_price']
      end

      if attributes.key?(:'limit_price')
        self.limit_price = attributes[:'limit_price']
      end

      if attributes.key?(:'stop_price')
        self.stop_price = attributes[:'stop_price']
      end

      if attributes.key?(:'legs')
        if (value = attributes[:'legs']).is_a?(Array)
          self.legs = value
        end
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
          brokerage_order_id == o.brokerage_order_id &&
          status == o.status &&
          order_type == o.order_type &&
          time_in_force == o.time_in_force &&
          time_placed == o.time_placed &&
          time_executed == o.time_executed &&
          quote_currency == o.quote_currency &&
          execution_price == o.execution_price &&
          limit_price == o.limit_price &&
          stop_price == o.stop_price &&
          legs == o.legs
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [brokerage_order_id, status, order_type, time_in_force, time_placed, time_executed, quote_currency, execution_price, limit_price, stop_price, legs].hash
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
