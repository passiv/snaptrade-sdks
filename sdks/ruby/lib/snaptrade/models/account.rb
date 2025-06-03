=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # A single account at a brokerage.
  class Account
    # Unique identifier for the connected brokerage account. This is the UUID used to reference the account in SnapTrade. This ID should not change for as long as the connection stays active. If the connection is deleted and re-added, a new account ID will be generated.
    attr_accessor :id

    # Unique identifier for the connection. This is the UUID used to reference the connection in SnapTrade.
    attr_accessor :brokerage_authorization

    # A display name for the account. Either assigned by the user or by the brokerage itself. For certain brokerages, SnapTrade appends the brokerage name to the account name for clarity.
    attr_accessor :name

    # The account number assigned by the brokerage. For some brokerages, this field may be masked for security reasons.
    attr_accessor :number

    # The name of the brokerage that holds the account.
    attr_accessor :institution_name

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the account was created in SnapTrade. This is _not_ the account opening date at the brokerage.
    attr_accessor :created_date

    attr_accessor :sync_status

    attr_accessor :balance

    # The current status of the account. Can be either \"open\", \"closed\", or null if the status is unknown or not provided by the brokerage.
    attr_accessor :status

    # The account type as provided by the brokerage
    attr_accessor :raw_type

    # Additional information about the account, such as account type, status, etc. This information is specific to the brokerage and there's no standard format for this data. This field is deprecated and subject to removal in a future version.
    attr_accessor :meta

    # Portfolio Group ID. Portfolio Groups have been deprecated. Please contact support if you have a usecase for it.
    attr_accessor :portfolio_group

    # This field is deprecated.
    attr_accessor :cash_restrictions

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'brokerage_authorization' => :'brokerage_authorization',
        :'name' => :'name',
        :'number' => :'number',
        :'institution_name' => :'institution_name',
        :'created_date' => :'created_date',
        :'sync_status' => :'sync_status',
        :'balance' => :'balance',
        :'status' => :'status',
        :'raw_type' => :'raw_type',
        :'meta' => :'meta',
        :'portfolio_group' => :'portfolio_group',
        :'cash_restrictions' => :'cash_restrictions'
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
        :'brokerage_authorization' => :'String',
        :'name' => :'String',
        :'number' => :'String',
        :'institution_name' => :'String',
        :'created_date' => :'Time',
        :'sync_status' => :'AccountSyncStatus',
        :'balance' => :'AccountBalance',
        :'status' => :'AccountStatus',
        :'raw_type' => :'String',
        :'meta' => :'Hash<String, Object>',
        :'portfolio_group' => :'String',
        :'cash_restrictions' => :'Array<String>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'name',
        :'status',
        :'raw_type',
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::Account` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::Account`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'brokerage_authorization')
        self.brokerage_authorization = attributes[:'brokerage_authorization']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.key?(:'institution_name')
        self.institution_name = attributes[:'institution_name']
      end

      if attributes.key?(:'created_date')
        self.created_date = attributes[:'created_date']
      end

      if attributes.key?(:'sync_status')
        self.sync_status = attributes[:'sync_status']
      end

      if attributes.key?(:'balance')
        self.balance = attributes[:'balance']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
      end

      if attributes.key?(:'raw_type')
        self.raw_type = attributes[:'raw_type']
      end

      if attributes.key?(:'meta')
        if (value = attributes[:'meta']).is_a?(Hash)
          self.meta = value
        end
      end

      if attributes.key?(:'portfolio_group')
        self.portfolio_group = attributes[:'portfolio_group']
      end

      if attributes.key?(:'cash_restrictions')
        if (value = attributes[:'cash_restrictions']).is_a?(Array)
          self.cash_restrictions = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @brokerage_authorization.nil?
        invalid_properties.push('invalid value for "brokerage_authorization", brokerage_authorization cannot be nil.')
      end

      if @number.nil?
        invalid_properties.push('invalid value for "number", number cannot be nil.')
      end

      if @institution_name.nil?
        invalid_properties.push('invalid value for "institution_name", institution_name cannot be nil.')
      end

      if @created_date.nil?
        invalid_properties.push('invalid value for "created_date", created_date cannot be nil.')
      end

      if @sync_status.nil?
        invalid_properties.push('invalid value for "sync_status", sync_status cannot be nil.')
      end

      if @balance.nil?
        invalid_properties.push('invalid value for "balance", balance cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @brokerage_authorization.nil?
      return false if @number.nil?
      return false if @institution_name.nil?
      return false if @created_date.nil?
      return false if @sync_status.nil?
      return false if @balance.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          brokerage_authorization == o.brokerage_authorization &&
          name == o.name &&
          number == o.number &&
          institution_name == o.institution_name &&
          created_date == o.created_date &&
          sync_status == o.sync_status &&
          balance == o.balance &&
          status == o.status &&
          raw_type == o.raw_type &&
          meta == o.meta &&
          portfolio_group == o.portfolio_group &&
          cash_restrictions == o.cash_restrictions
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, brokerage_authorization, name, number, institution_name, created_date, sync_status, balance, status, raw_type, meta, portfolio_group, cash_restrictions].hash
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
