=begin
#Accounting API

#No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)

The version of the OpenAPI document: 2.2.2
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.0

=end

require 'time'
require 'date'

module XeroRuby::Accounting
  class JournalLine
    # Xero identifier for Journal
    attr_accessor :journal_line_id
    
    # See Accounts
    attr_accessor :account_id
    
    # See Accounts
    attr_accessor :account_code
    

    attr_accessor :account_type
    
    # See AccountCodes
    attr_accessor :account_name
    
    # The description from the source transaction line item. Only returned if populated.
    attr_accessor :description
    
    # Net amount of journal line. This will be a positive value for a debit and negative for a credit
    attr_accessor :net_amount
    
    # Gross amount of journal line (NetAmount + TaxAmount).
    attr_accessor :gross_amount
    
    # Total tax on a journal line
    attr_accessor :tax_amount
    
    # The tax type from TaxRates
    attr_accessor :tax_type
    
    # see TaxRates
    attr_accessor :tax_name
    
    # Optional Tracking Category – see Tracking. Any JournalLine can have a maximum of 2 <TrackingCategory> elements.
    attr_accessor :tracking_categories
    
    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'journal_line_id' => :'JournalLineID',
        :'account_id' => :'AccountID',
        :'account_code' => :'AccountCode',
        :'account_type' => :'AccountType',
        :'account_name' => :'AccountName',
        :'description' => :'Description',
        :'net_amount' => :'NetAmount',
        :'gross_amount' => :'GrossAmount',
        :'tax_amount' => :'TaxAmount',
        :'tax_type' => :'TaxType',
        :'tax_name' => :'TaxName',
        :'tracking_categories' => :'TrackingCategories'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'journal_line_id' => :'String',
        :'account_id' => :'String',
        :'account_code' => :'String',
        :'account_type' => :'AccountType',
        :'account_name' => :'String',
        :'description' => :'String',
        :'net_amount' => :'Float',
        :'gross_amount' => :'Float',
        :'tax_amount' => :'Float',
        :'tax_type' => :'String',
        :'tax_name' => :'String',
        :'tracking_categories' => :'Array<TrackingCategory>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Accounting::JournalLine` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Accounting::JournalLine`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'journal_line_id')
        self.journal_line_id = attributes[:'journal_line_id']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'account_code')
        self.account_code = attributes[:'account_code']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'net_amount')
        self.net_amount = attributes[:'net_amount']
      end

      if attributes.key?(:'gross_amount')
        self.gross_amount = attributes[:'gross_amount']
      end

      if attributes.key?(:'tax_amount')
        self.tax_amount = attributes[:'tax_amount']
      end

      if attributes.key?(:'tax_type')
        self.tax_type = attributes[:'tax_type']
      end

      if attributes.key?(:'tax_name')
        self.tax_name = attributes[:'tax_name']
      end

      if attributes.key?(:'tracking_categories')
        if (value = attributes[:'tracking_categories']).is_a?(Array)
          self.tracking_categories = value
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
          journal_line_id == o.journal_line_id &&
          account_id == o.account_id &&
          account_code == o.account_code &&
          account_type == o.account_type &&
          account_name == o.account_name &&
          description == o.description &&
          net_amount == o.net_amount &&
          gross_amount == o.gross_amount &&
          tax_amount == o.tax_amount &&
          tax_type == o.tax_type &&
          tax_name == o.tax_name &&
          tracking_categories == o.tracking_categories
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [journal_line_id, account_id, account_code, account_type, account_name, description, net_amount, gross_amount, tax_amount, tax_type, tax_name, tracking_categories].hash
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
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(parse_date(value))
      when :Date
        Date.parse(parse_date(value))
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
        XeroRuby::Accounting.const_get(type).build_from_hash(value)
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
        next if value.nil?
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

    # customized data_parser
    def parse_date(datestring)
      seconds_since_epoch = datestring.scan(/[0-9]+/)[0].to_i / 1000.0
      return Time.at(seconds_since_epoch).to_s
    end
  end
end
