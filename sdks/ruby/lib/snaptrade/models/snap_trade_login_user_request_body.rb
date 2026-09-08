=begin
#SnapTrade

#Connect brokerage accounts to your app for live positions and trading.  ## Rate limiting  Two limits apply to requests signed with your `clientId`. The stricter one wins, and exceeding either returns `429 Too Many Requests`.  - **Customer-level** — 250 requests/minute by default, scoped to your   `clientId` and applied across all endpoints. Reported in   `X-RateLimit-Limit`, `X-RateLimit-Remaining` and `X-RateLimit-Reset`. - **Account-level** — 10 requests/minute per account, scoped to   (`clientId`, `accountId`). All covered operations for one account draw on   the same bucket — reading balances and reading positions share it — and   enforcement does not depend on the HTTP method, so updating an account   consumes the same bucket as reading it. Only enforced for Personal users,   and only for integrations it has been rolled out to — it is not yet in   force for every Personal integration. It also does not apply on every   operation that documents a 429 below. Where it applies it is reported in   `X-RateLimit-Account-Limit`, `X-RateLimit-Account-Remaining` and   `X-RateLimit-Account-Reset`. Do not read the absence of those headers as   proof the limit is off — some configurations omit the rate limit headers   while still enforcing the limit, so header absence tells you nothing   about your allowance.  On a 429, `X-RateLimit-Remaining: 0` means you hit the customer-level limit and `X-RateLimit-Account-Remaining: 0` means the account-level one. Wait for the corresponding `*-Reset` value (seconds) before retrying, or fall back to exponential backoff with jitter.  Not every 429 is explained by those headers. A separate per-authenticated-user limit, reported in no `X-RateLimit-*` header, covers OAuth-authenticated requests and signed requests in configurations where the customer-level limit is not in effect — on the operations that use the default throttles. A few operations override those and are governed by the customer-level limit alone. The two do not stack: a signed request governed by the customer-level limit above is not additionally subject to the per-user one. If a 429 arrives with no header at zero — or with no `X-RateLimit-*` headers at all — honour `Retry-After` and back off. Treat the remaining counts as a hint, not a guarantee that the next request will succeed.  Because the customer-level limit applies everywhere, any signed request can return 429.  **OAuth-authenticated requests are an exception.** They are not subject to the customer-level limit and do not receive `X-RateLimit-Limit`, `X-RateLimit-Remaining` or `X-RateLimit-Reset` — do not wait on those headers or design around a customer-level allowance on this path. The account-level limit still applies to them on the account-data endpoints above, reported in the `X-RateLimit-Account-*` headers. On operations using the default throttles the per-user limit above applies to them as well, so an OAuth request can be rejected while the account headers still show capacity; on the few operations that override those throttles, OAuth callers have no per-user ceiling at all. Drive retries from `Retry-After` and exponential backoff with jitter rather than from the headers.  See https://docs.snaptrade.com/docs/ratelimiting. 

The version of the OpenAPI document: 1.0.0
Contact: api@snaptrade.com
=end

require 'date'
require 'time'

module SnapTrade
  # Data to login a user via SnapTrade Partner
  class SnapTradeLoginUserRequestBody
    # Slug of the brokerage to connect the user to. See [the integrations page](https://support.snaptrade.com/brokerages) for a list of supported brokerages and their slugs.
    attr_accessor :broker

    # When set to `true`, user will be redirected back to the partner's site instead of the connection portal. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    attr_accessor :immediate_redirect

    # URL to redirect the user to after the user connects their brokerage account. This parameter is ignored if the connection portal is loaded inside an iframe. See the [guide on ways to integrate the connection portal](/docs/implement-connection-portal) for more information.
    attr_accessor :custom_redirect

    # The UUID of the brokerage connection to be reconnected. This parameter should be left empty unless you are reconnecting a disabled connection. See the [guide on fixing broken connections](/docs/fix-broken-connections) for more information.
    attr_accessor :reconnect

    # Determines connection permissions (default: read) - `read`: Data access only. - `trade`: Data and trading access. - `trade-if-available`: Attempts to establish a trading connection if the brokerage supports it, otherwise falls back to read-only access automatically. 
    attr_accessor :connection_type

    # Controls whether the close (X) button is displayed in the connection portal. When false, you control closing behavior from your app. Defaults to true.
    attr_accessor :show_close_button

    # Enable dark mode for the connection portal. Defaults to false.
    attr_accessor :dark_mode

    # Language the connection portal renders in. `en` and `pt-BR` are the languages we ship; any other language is rejected with a 400. Matching is case- and separator-insensitive, so `pt-br`, `pt-BR` and `pt_BR` are equivalent, and a regional tag resolves to the language when we ship it, so `en-US` renders `en`. Deliberately not an enum: those equivalent spellings are all accepted by the API, and an enum would have generated SDKs reject them before the request is sent. Screens without translated copy fall back to English individually. Defaults to `en`. 
    attr_accessor :locale

    # Sets the connection portal version to render. Currently only `v4` is supported and is the default. All other versions are deprecated and will automatically be set to v4.
    attr_accessor :connection_portal_version

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'broker' => :'broker',
        :'immediate_redirect' => :'immediateRedirect',
        :'custom_redirect' => :'customRedirect',
        :'reconnect' => :'reconnect',
        :'connection_type' => :'connectionType',
        :'show_close_button' => :'showCloseButton',
        :'dark_mode' => :'darkMode',
        :'locale' => :'locale',
        :'connection_portal_version' => :'connectionPortalVersion'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'broker' => :'String',
        :'immediate_redirect' => :'Boolean',
        :'custom_redirect' => :'String',
        :'reconnect' => :'String',
        :'connection_type' => :'ConnectionType',
        :'show_close_button' => :'Boolean',
        :'dark_mode' => :'Boolean',
        :'locale' => :'String',
        :'connection_portal_version' => :'ConnectionPortalVersion'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `SnapTrade::SnapTradeLoginUserRequestBody` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `SnapTrade::SnapTradeLoginUserRequestBody`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'broker')
        self.broker = attributes[:'broker']
      end

      if attributes.key?(:'immediate_redirect')
        self.immediate_redirect = attributes[:'immediate_redirect']
      end

      if attributes.key?(:'custom_redirect')
        self.custom_redirect = attributes[:'custom_redirect']
      end

      if attributes.key?(:'reconnect')
        self.reconnect = attributes[:'reconnect']
      end

      if attributes.key?(:'connection_type')
        self.connection_type = attributes[:'connection_type']
      else
        self.connection_type = 'read'
      end

      if attributes.key?(:'show_close_button')
        self.show_close_button = attributes[:'show_close_button']
      end

      if attributes.key?(:'dark_mode')
        self.dark_mode = attributes[:'dark_mode']
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      else
        self.locale = 'en'
      end

      if attributes.key?(:'connection_portal_version')
        self.connection_portal_version = attributes[:'connection_portal_version']
      else
        self.connection_portal_version = 'v4'
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
          broker == o.broker &&
          immediate_redirect == o.immediate_redirect &&
          custom_redirect == o.custom_redirect &&
          reconnect == o.reconnect &&
          connection_type == o.connection_type &&
          show_close_button == o.show_close_button &&
          dark_mode == o.dark_mode &&
          locale == o.locale &&
          connection_portal_version == o.connection_portal_version
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [broker, immediate_redirect, custom_redirect, reconnect, connection_type, show_close_button, dark_mode, locale, connection_portal_version].hash
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
