=begin
#HelloSign API

#HelloSign v3 API

The version of the OpenAPI document: 3.0.0
Contact: apisupport@hellosign.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.3.0

=end

require 'date'
require 'time'

module HelloSign
  class EmbeddedEditUrlRequest
    # This allows the requester to enable/disable to add or change CC roles when editing the template.
    attr_accessor :allow_edit_ccs

    # The CC roles that must be assigned when using the template to send a signature request. To remove all CC roles, pass in a single role with no name. For use in a POST request.
    attr_accessor :cc_roles

    attr_accessor :editor_options

    # Provide users the ability to review/edit the template signer roles.
    attr_accessor :force_signer_roles

    # Provide users the ability to review/edit the template subject and message.
    attr_accessor :force_subject_message

    attr_accessor :merge_fields

    # This allows the requester to enable the preview experience experience.  **Note**: This parameter overwrites `show_preview=true` (if set).
    attr_accessor :preview_only

    # This allows the requester to enable the editor/preview experience.
    attr_accessor :show_preview

    # If signer roles are already provided, the user will not be prompted to edit them.  **Note**: this parameter will be deprecated in May 2020 and skipping the signer roles screen will become the default behavior. To enforce showing the signer roles screen, use the `force_signer_roles` parameter.
    attr_accessor :skip_signer_roles

    # If the subject and message has already been provided, the user will not be prompted to edit them.  **Note**: this parameter will be deprecated in May 2020 and skipping the subject message screen will become the default behavior. To enforce showing the subject message screen, use the `force_subject_message` parameter.
    attr_accessor :skip_subject_message

    # Whether this is a test, locked templates will only be available for editing if this is set to `true`. Defaults to `false`.
    attr_accessor :test_mode

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'allow_edit_ccs' => :'allow_edit_ccs',
        :'cc_roles' => :'cc_roles',
        :'editor_options' => :'editor_options',
        :'force_signer_roles' => :'force_signer_roles',
        :'force_subject_message' => :'force_subject_message',
        :'merge_fields' => :'merge_fields',
        :'preview_only' => :'preview_only',
        :'show_preview' => :'show_preview',
        :'skip_signer_roles' => :'skip_signer_roles',
        :'skip_subject_message' => :'skip_subject_message',
        :'test_mode' => :'test_mode'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Returns attribute map of this model + parent
    def self.merged_attributes
      self.attribute_map
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'allow_edit_ccs' => :'Boolean',
        :'cc_roles' => :'Array<String>',
        :'editor_options' => :'SubEditorOptions',
        :'force_signer_roles' => :'Boolean',
        :'force_subject_message' => :'Boolean',
        :'merge_fields' => :'Array<SubMergeField>',
        :'preview_only' => :'Boolean',
        :'show_preview' => :'Boolean',
        :'skip_signer_roles' => :'Boolean',
        :'skip_subject_message' => :'Boolean',
        :'test_mode' => :'Boolean'
      }
    end

    # Attribute type mapping of this model + parent
    def self.merged_types
      self.openapi_types
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Returns list of attributes with nullable: true of this model + parent
    def self.merged_nullable
      self.openapi_nullable
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `HelloSign::EmbeddedEditUrlRequest` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.merged_attributes.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `HelloSign::EmbeddedEditUrlRequest`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'allow_edit_ccs')
        self.allow_edit_ccs = attributes[:'allow_edit_ccs']
      else
        self.allow_edit_ccs = false
      end

      if attributes.key?(:'cc_roles')
        if (value = attributes[:'cc_roles']).is_a?(Array)
          self.cc_roles = value
        end
      end

      if attributes.key?(:'editor_options')
        self.editor_options = attributes[:'editor_options']
      end

      if attributes.key?(:'force_signer_roles')
        self.force_signer_roles = attributes[:'force_signer_roles']
      else
        self.force_signer_roles = false
      end

      if attributes.key?(:'force_subject_message')
        self.force_subject_message = attributes[:'force_subject_message']
      else
        self.force_subject_message = false
      end

      if attributes.key?(:'merge_fields')
        if (value = attributes[:'merge_fields']).is_a?(Array)
          self.merge_fields = value
        end
      end

      if attributes.key?(:'preview_only')
        self.preview_only = attributes[:'preview_only']
      else
        self.preview_only = false
      end

      if attributes.key?(:'show_preview')
        self.show_preview = attributes[:'show_preview']
      else
        self.show_preview = false
      end

      if attributes.key?(:'skip_signer_roles')
        self.skip_signer_roles = attributes[:'skip_signer_roles']
      else
        self.skip_signer_roles = false
      end

      if attributes.key?(:'skip_subject_message')
        self.skip_subject_message = attributes[:'skip_subject_message']
      else
        self.skip_subject_message = false
      end

      if attributes.key?(:'test_mode')
        self.test_mode = attributes[:'test_mode']
      else
        self.test_mode = false
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
          allow_edit_ccs == o.allow_edit_ccs &&
          cc_roles == o.cc_roles &&
          editor_options == o.editor_options &&
          force_signer_roles == o.force_signer_roles &&
          force_subject_message == o.force_subject_message &&
          merge_fields == o.merge_fields &&
          preview_only == o.preview_only &&
          show_preview == o.show_preview &&
          skip_signer_roles == o.skip_signer_roles &&
          skip_subject_message == o.skip_subject_message &&
          test_mode == o.test_mode
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [allow_edit_ccs, cc_roles, editor_options, force_signer_roles, force_subject_message, merge_fields, preview_only, show_preview, skip_signer_roles, skip_subject_message, test_mode].hash
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
      attribute_map = self.class.merged_attributes

      self.class.merged_types.each_pair do |key, type|
        if attributes[attribute_map[key]].nil? && self.class.merged_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[attribute_map[key]]))
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
      when :File
        if HelloSign.configure.instantiate_files && value.is_a?(String)
          filepath = value

          if HelloSign.configure.root_file_path
            filepath = "#{HelloSign.configure.root_file_path}/#{value}"
          end

          if File.exist? filepath
            value = File.new(filepath, "r")
          end
        end

        value
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
        # models (e.g. Pet)
        klass = HelloSign.const_get(type)
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
      self.class.merged_attributes.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.merged_nullable.include?(attr)
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
