=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # Describes a brokerage that SnapTrade supports.
  class Brokerage
    # Unique identifier for the brokerage firm. This is the UUID used to reference the brokerage in SnapTrade.
    attr_accessor :id

    # A short, unique identifier for the brokerage. It is usually the name of the brokerage in capital letters and will never change.
    attr_accessor :slug

    # Full name of the brokerage.
    attr_accessor :name

    # A display-friendly name of the brokerage.
    attr_accessor :display_name

    # A brief description of the brokerage.
    attr_accessor :description

    # URL to the brokerage's logo.
    attr_accessor :aws_s3_logo_url

    # URL to the brokerage's logo in square format.
    attr_accessor :aws_s3_square_logo_url

    # URL to the brokerage's website.
    attr_accessor :url

    # Whether the brokerage is enabled in SnapTrade. A disabled brokerage will not be available for new connections.
    attr_accessor :enabled

    # Whether the brokerage is currently in maintenance mode. A brokerage in maintenance mode will not be available for new connections.
    attr_accessor :maintenance_mode

    # Whether the brokerage allows trading through SnapTrade.
    attr_accessor :allows_trading

    # This field is deprecated. Please contact us if you have a valid use case for it.
    attr_accessor :allows_fractional_units

    # This field is deprecated. Please contact us if you have a valid use case for it.
    attr_accessor :has_reporting

    # This field is deprecated. Please contact us if you have a valid use case for it.
    attr_accessor :is_real_time_connection

    attr_accessor :brokerage_type

    # This field is deprecated. Please contact us if you have a valid use case for it.
    attr_accessor :exchanges

    # This field is deprecated.
    attr_accessor :open_url

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'slug' => :'slug',
        :'name' => :'name',
        :'display_name' => :'display_name',
        :'description' => :'description',
        :'aws_s3_logo_url' => :'aws_s3_logo_url',
        :'aws_s3_square_logo_url' => :'aws_s3_square_logo_url',
        :'url' => :'url',
        :'enabled' => :'enabled',
        :'maintenance_mode' => :'maintenance_mode',
        :'allows_trading' => :'allows_trading',
        :'allows_fractional_units' => :'allows_fractional_units',
        :'has_reporting' => :'has_reporting',
        :'is_real_time_connection' => :'is_real_time_connection',
        :'brokerage_type' => :'brokerage_type',
        :'exchanges' => :'exchanges',
        :'open_url' => :'open_url'
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
        :'slug' => :'String',
        :'name' => :'String',
        :'display_name' => :'String',
        :'description' => :'String',
        :'aws_s3_logo_url' => :'String',
        :'aws_s3_square_logo_url' => :'String',
        :'url' => :'String',
        :'enabled' => :'Boolean',
        :'maintenance_mode' => :'Boolean',
        :'allows_trading' => :'Boolean',
        :'allows_fractional_units' => :'Boolean',
        :'has_reporting' => :'Boolean',
        :'is_real_time_connection' => :'Boolean',
        :'brokerage_type' => :'BrokerageType',
        :'exchanges' => :'Array<Object>',
        :'open_url' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'aws_s3_square_logo_url',
        :'allows_trading',
        :'allows_fractional_units',
        :'has_reporting',
        :'open_url'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::Brokerage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::Brokerage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'slug')
        self.slug = attributes[:'slug']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'display_name')
        self.display_name = attributes[:'display_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'aws_s3_logo_url')
        self.aws_s3_logo_url = attributes[:'aws_s3_logo_url']
      end

      if attributes.key?(:'aws_s3_square_logo_url')
        self.aws_s3_square_logo_url = attributes[:'aws_s3_square_logo_url']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'enabled')
        self.enabled = attributes[:'enabled']
      end

      if attributes.key?(:'maintenance_mode')
        self.maintenance_mode = attributes[:'maintenance_mode']
      end

      if attributes.key?(:'allows_trading')
        self.allows_trading = attributes[:'allows_trading']
      end

      if attributes.key?(:'allows_fractional_units')
        self.allows_fractional_units = attributes[:'allows_fractional_units']
      end

      if attributes.key?(:'has_reporting')
        self.has_reporting = attributes[:'has_reporting']
      end

      if attributes.key?(:'is_real_time_connection')
        self.is_real_time_connection = attributes[:'is_real_time_connection']
      end

      if attributes.key?(:'brokerage_type')
        self.brokerage_type = attributes[:'brokerage_type']
      end

      if attributes.key?(:'exchanges')
        if (value = attributes[:'exchanges']).is_a?(Array)
          self.exchanges = value
        end
      end

      if attributes.key?(:'open_url')
        self.open_url = attributes[:'open_url']
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
          slug == o.slug &&
          name == o.name &&
          display_name == o.display_name &&
          description == o.description &&
          aws_s3_logo_url == o.aws_s3_logo_url &&
          aws_s3_square_logo_url == o.aws_s3_square_logo_url &&
          url == o.url &&
          enabled == o.enabled &&
          maintenance_mode == o.maintenance_mode &&
          allows_trading == o.allows_trading &&
          allows_fractional_units == o.allows_fractional_units &&
          has_reporting == o.has_reporting &&
          is_real_time_connection == o.is_real_time_connection &&
          brokerage_type == o.brokerage_type &&
          exchanges == o.exchanges &&
          open_url == o.open_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, slug, name, display_name, description, aws_s3_logo_url, aws_s3_square_logo_url, url, enabled, maintenance_mode, allows_trading, allows_fractional_units, has_reporting, is_real_time_connection, brokerage_type, exchanges, open_url].hash
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
