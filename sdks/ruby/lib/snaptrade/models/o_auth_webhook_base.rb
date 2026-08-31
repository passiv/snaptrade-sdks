=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # The versioned webhook content sent to an authorized OAuth application.
  class OAuthWebhookBase
    attr_accessor :schema_version

    attr_accessor :webhook_id

    # The OAuth client ID of the application receiving the webhook.
    attr_accessor :oauth_client_id

    attr_accessor :event_timestamp

    # The SnapTrade Personal user UUID, matching the `sub` claim of the OIDC `id_token` (issued when the `openid` scope is requested) and the deprecated top-level `sub.snaptrade_user_id` field in the OAuth token response.
    attr_accessor :user_id

    attr_accessor :event_type

    attr_accessor :account_id

    attr_accessor :connection_id

    attr_accessor :brokerage_id

    attr_accessor :connection_attempted_result

    attr_accessor :details

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'schema_version' => :'schemaVersion',
        :'webhook_id' => :'webhookId',
        :'oauth_client_id' => :'oauthClientId',
        :'event_timestamp' => :'eventTimestamp',
        :'user_id' => :'userId',
        :'event_type' => :'eventType',
        :'account_id' => :'accountId',
        :'connection_id' => :'connectionId',
        :'brokerage_id' => :'brokerageId',
        :'connection_attempted_result' => :'connectionAttemptedResult',
        :'details' => :'details'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'schema_version' => :'SchemaVersion',
        :'webhook_id' => :'String',
        :'oauth_client_id' => :'String',
        :'event_timestamp' => :'Time',
        :'user_id' => :'String',
        :'event_type' => :'String',
        :'account_id' => :'String',
        :'connection_id' => :'String',
        :'brokerage_id' => :'String',
        :'connection_attempted_result' => :'String',
        :'details' => :'Hash<String, Object>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::OAuthWebhookBase` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::OAuthWebhookBase`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'schema_version')
        self.schema_version = attributes[:'schema_version']
      end

      if attributes.key?(:'webhook_id')
        self.webhook_id = attributes[:'webhook_id']
      end

      if attributes.key?(:'oauth_client_id')
        self.oauth_client_id = attributes[:'oauth_client_id']
      end

      if attributes.key?(:'event_timestamp')
        self.event_timestamp = attributes[:'event_timestamp']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'event_type')
        self.event_type = attributes[:'event_type']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'connection_id')
        self.connection_id = attributes[:'connection_id']
      end

      if attributes.key?(:'brokerage_id')
        self.brokerage_id = attributes[:'brokerage_id']
      end

      if attributes.key?(:'connection_attempted_result')
        self.connection_attempted_result = attributes[:'connection_attempted_result']
      end

      if attributes.key?(:'details')
        if (value = attributes[:'details']).is_a?(Hash)
          self.details = value
        end
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @schema_version.nil?
        invalid_properties.push('invalid value for "schema_version", schema_version cannot be nil.')
      end

      if @webhook_id.nil?
        invalid_properties.push('invalid value for "webhook_id", webhook_id cannot be nil.')
      end

      if @oauth_client_id.nil?
        invalid_properties.push('invalid value for "oauth_client_id", oauth_client_id cannot be nil.')
      end

      if @event_timestamp.nil?
        invalid_properties.push('invalid value for "event_timestamp", event_timestamp cannot be nil.')
      end

      if @user_id.nil?
        invalid_properties.push('invalid value for "user_id", user_id cannot be nil.')
      end

      if @event_type.nil?
        invalid_properties.push('invalid value for "event_type", event_type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @schema_version.nil?
      return false if @webhook_id.nil?
      return false if @oauth_client_id.nil?
      return false if @event_timestamp.nil?
      return false if @user_id.nil?
      return false if @event_type.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          schema_version == o.schema_version &&
          webhook_id == o.webhook_id &&
          oauth_client_id == o.oauth_client_id &&
          event_timestamp == o.event_timestamp &&
          user_id == o.user_id &&
          event_type == o.event_type &&
          account_id == o.account_id &&
          connection_id == o.connection_id &&
          brokerage_id == o.brokerage_id &&
          connection_attempted_result == o.connection_attempted_result &&
          details == o.details
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [schema_version, webhook_id, oauth_client_id, event_timestamp, user_id, event_type, account_id, connection_id, brokerage_id, connection_attempted_result, details].hash
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
