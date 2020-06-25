=begin
#Xero Projects API

#This is the Xero Projects API

The version of the OpenAPI document: 2.2.4
Contact: api@xero.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 4.3.1

=end

require 'time'
require 'date'

module XeroRuby::Projects
  class TimeEntry
    # Identifier of the time entry.
    attr_accessor :time_entry_id
    
    # The xero user identifier of the person who logged time.
    attr_accessor :user_id
    
    # Identifier of the project, that the task (which the time entry is logged against) belongs to.
    attr_accessor :project_id
    
    # Identifier of the task that time entry is logged against.
    attr_accessor :task_id
    
    # The date time that time entry is logged on. UTC Date Time in ISO-8601 format.
    attr_accessor :date_utc
    
    # The date time that time entry is created. UTC Date Time in ISO-8601 format. By default it is set to server time.
    attr_accessor :date_entered_utc
    
    # The duration of logged minutes.
    attr_accessor :duration
    
    # A description of the time entry.
    attr_accessor :description
    
    # Status of the time entry. By default a time entry is created with status of `ACTIVE`. A `LOCKED` state indicates that the time entry is currently changing state (for example being invoiced). Updates are not allowed when in this state. It will have a status of INVOICED once it is invoiced.
    attr_accessor :status
    ACTIVE = "ACTIVE".freeze
    LOCKED = "LOCKED".freeze
    
    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'time_entry_id' => :'timeEntryId',
        :'user_id' => :'userId',
        :'project_id' => :'projectId',
        :'task_id' => :'taskId',
        :'date_utc' => :'dateUtc',
        :'date_entered_utc' => :'dateEnteredUtc',
        :'duration' => :'duration',
        :'description' => :'description',
        :'status' => :'status'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'time_entry_id' => :'String',
        :'user_id' => :'String',
        :'project_id' => :'String',
        :'task_id' => :'String',
        :'date_utc' => :'DateTime',
        :'date_entered_utc' => :'DateTime',
        :'duration' => :'Integer',
        :'description' => :'String',
        :'status' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `XeroRuby::Projects::TimeEntry` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `XeroRuby::Projects::TimeEntry`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'time_entry_id')
        self.time_entry_id = attributes[:'time_entry_id']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'project_id')
        self.project_id = attributes[:'project_id']
      end

      if attributes.key?(:'task_id')
        self.task_id = attributes[:'task_id']
      end

      if attributes.key?(:'date_utc')
        self.date_utc = attributes[:'date_utc']
      end

      if attributes.key?(:'date_entered_utc')
        self.date_entered_utc = attributes[:'date_entered_utc']
      end

      if attributes.key?(:'duration')
        self.duration = attributes[:'duration']
      end

      if attributes.key?(:'description')
        self.description = attributes[:'description']
      end

      if attributes.key?(:'status')
        self.status = attributes[:'status']
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
      status_validator = EnumAttributeValidator.new('String', ["ACTIVE", "LOCKED"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new('String', ["ACTIVE", "LOCKED"])
      unless validator.valid?(status)
        fail ArgumentError, "invalid value for \"status\", must be one of #{validator.allowable_values}."
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          time_entry_id == o.time_entry_id &&
          user_id == o.user_id &&
          project_id == o.project_id &&
          task_id == o.task_id &&
          date_utc == o.date_utc &&
          date_entered_utc == o.date_entered_utc &&
          duration == o.duration &&
          description == o.description &&
          status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [time_entry_id, user_id, project_id, task_id, date_utc, date_entered_utc, duration, description, status].hash
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
        XeroRuby::Projects.const_get(type).build_from_hash(value)
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
