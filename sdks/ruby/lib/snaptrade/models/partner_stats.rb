=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # User, connection, and connected asset totals for your SnapTrade Client ID.
  class PartnerStats
    # Number of users registered with your Client ID.
    attr_accessor :total_users

    # Number of users registered with your Client ID that have at least one connection, active or disabled.
    attr_accessor :total_connected_users

    # Number of active connections across users registered with your Client ID.
    attr_accessor :total_active_connections

    # Number of disabled connections across users registered with your Client ID.
    attr_accessor :total_disabled_connections

    # Number of users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    attr_accessor :oauth_total_users

    # Number of users who have authorized your OAuth application and have at least one connection, active or disabled. `null` if your Client ID has no OAuth application.
    attr_accessor :oauth_total_connected_users

    # Number of active connections across users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    attr_accessor :oauth_total_active_connections

    # Number of disabled connections across users who have authorized your OAuth application. `null` if your Client ID has no OAuth application.
    attr_accessor :oauth_total_disabled_connections

    # Total latest account value across active connections of users registered with your Client ID, in `assets_under_management_currency`. `null` until the first daily snapshot has been calculated.
    attr_accessor :assets_under_management

    # Total account value across disabled connections of users registered with your Client ID, as of each connection's last sync, in `assets_under_management_currency`. `null` until the first daily snapshot has been calculated.
    attr_accessor :disabled_assets_under_management

    # Total latest account value across active connections of users who have authorized your OAuth application, in `assets_under_management_currency`. `null` if your Client ID has no OAuth application, or until the first daily snapshot after it was added.
    attr_accessor :oauth_assets_under_management

    # Total account value across disabled connections of users who have authorized your OAuth application, as of each connection's last sync, in `assets_under_management_currency`. `null` if your Client ID has no OAuth application, or until the first daily snapshot after it was added.
    attr_accessor :oauth_disabled_assets_under_management

    # ISO 4217 currency code the asset values are expressed in.
    attr_accessor :assets_under_management_currency

    # Timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format indicating when the connected asset values were last calculated. `null` until the first daily snapshot has been calculated.
    attr_accessor :assets_under_management_calculated_at

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'total_users' => :'total_users',
        :'total_connected_users' => :'total_connected_users',
        :'total_active_connections' => :'total_active_connections',
        :'total_disabled_connections' => :'total_disabled_connections',
        :'oauth_total_users' => :'oauth_total_users',
        :'oauth_total_connected_users' => :'oauth_total_connected_users',
        :'oauth_total_active_connections' => :'oauth_total_active_connections',
        :'oauth_total_disabled_connections' => :'oauth_total_disabled_connections',
        :'assets_under_management' => :'assets_under_management',
        :'disabled_assets_under_management' => :'disabled_assets_under_management',
        :'oauth_assets_under_management' => :'oauth_assets_under_management',
        :'oauth_disabled_assets_under_management' => :'oauth_disabled_assets_under_management',
        :'assets_under_management_currency' => :'assets_under_management_currency',
        :'assets_under_management_calculated_at' => :'assets_under_management_calculated_at'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'total_users' => :'Integer',
        :'total_connected_users' => :'Integer',
        :'total_active_connections' => :'Integer',
        :'total_disabled_connections' => :'Integer',
        :'oauth_total_users' => :'Integer',
        :'oauth_total_connected_users' => :'Integer',
        :'oauth_total_active_connections' => :'Integer',
        :'oauth_total_disabled_connections' => :'Integer',
        :'assets_under_management' => :'Float',
        :'disabled_assets_under_management' => :'Float',
        :'oauth_assets_under_management' => :'Float',
        :'oauth_disabled_assets_under_management' => :'Float',
        :'assets_under_management_currency' => :'String',
        :'assets_under_management_calculated_at' => :'Time'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
        :'oauth_total_users',
        :'oauth_total_connected_users',
        :'oauth_total_active_connections',
        :'oauth_total_disabled_connections',
        :'assets_under_management',
        :'disabled_assets_under_management',
        :'oauth_assets_under_management',
        :'oauth_disabled_assets_under_management',
        :'assets_under_management_calculated_at'
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::PartnerStats` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::PartnerStats`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'total_users')
        self.total_users = attributes[:'total_users']
      end

      if attributes.key?(:'total_connected_users')
        self.total_connected_users = attributes[:'total_connected_users']
      end

      if attributes.key?(:'total_active_connections')
        self.total_active_connections = attributes[:'total_active_connections']
      end

      if attributes.key?(:'total_disabled_connections')
        self.total_disabled_connections = attributes[:'total_disabled_connections']
      end

      if attributes.key?(:'oauth_total_users')
        self.oauth_total_users = attributes[:'oauth_total_users']
      end

      if attributes.key?(:'oauth_total_connected_users')
        self.oauth_total_connected_users = attributes[:'oauth_total_connected_users']
      end

      if attributes.key?(:'oauth_total_active_connections')
        self.oauth_total_active_connections = attributes[:'oauth_total_active_connections']
      end

      if attributes.key?(:'oauth_total_disabled_connections')
        self.oauth_total_disabled_connections = attributes[:'oauth_total_disabled_connections']
      end

      if attributes.key?(:'assets_under_management')
        self.assets_under_management = attributes[:'assets_under_management']
      end

      if attributes.key?(:'disabled_assets_under_management')
        self.disabled_assets_under_management = attributes[:'disabled_assets_under_management']
      end

      if attributes.key?(:'oauth_assets_under_management')
        self.oauth_assets_under_management = attributes[:'oauth_assets_under_management']
      end

      if attributes.key?(:'oauth_disabled_assets_under_management')
        self.oauth_disabled_assets_under_management = attributes[:'oauth_disabled_assets_under_management']
      end

      if attributes.key?(:'assets_under_management_currency')
        self.assets_under_management_currency = attributes[:'assets_under_management_currency']
      end

      if attributes.key?(:'assets_under_management_calculated_at')
        self.assets_under_management_calculated_at = attributes[:'assets_under_management_calculated_at']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @total_users.nil?
        invalid_properties.push('invalid value for "total_users", total_users cannot be nil.')
      end

      if @total_connected_users.nil?
        invalid_properties.push('invalid value for "total_connected_users", total_connected_users cannot be nil.')
      end

      if @total_active_connections.nil?
        invalid_properties.push('invalid value for "total_active_connections", total_active_connections cannot be nil.')
      end

      if @total_disabled_connections.nil?
        invalid_properties.push('invalid value for "total_disabled_connections", total_disabled_connections cannot be nil.')
      end

      if @assets_under_management_currency.nil?
        invalid_properties.push('invalid value for "assets_under_management_currency", assets_under_management_currency cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @total_users.nil?
      return false if @total_connected_users.nil?
      return false if @total_active_connections.nil?
      return false if @total_disabled_connections.nil?
      return false if @assets_under_management_currency.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          total_users == o.total_users &&
          total_connected_users == o.total_connected_users &&
          total_active_connections == o.total_active_connections &&
          total_disabled_connections == o.total_disabled_connections &&
          oauth_total_users == o.oauth_total_users &&
          oauth_total_connected_users == o.oauth_total_connected_users &&
          oauth_total_active_connections == o.oauth_total_active_connections &&
          oauth_total_disabled_connections == o.oauth_total_disabled_connections &&
          assets_under_management == o.assets_under_management &&
          disabled_assets_under_management == o.disabled_assets_under_management &&
          oauth_assets_under_management == o.oauth_assets_under_management &&
          oauth_disabled_assets_under_management == o.oauth_disabled_assets_under_management &&
          assets_under_management_currency == o.assets_under_management_currency &&
          assets_under_management_calculated_at == o.assets_under_management_calculated_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [total_users, total_connected_users, total_active_connections, total_disabled_connections, oauth_total_users, oauth_total_connected_users, oauth_total_active_connections, oauth_total_disabled_connections, assets_under_management, disabled_assets_under_management, oauth_assets_under_management, oauth_disabled_assets_under_management, assets_under_management_currency, assets_under_management_calculated_at].hash
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
