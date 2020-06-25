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
  class RowType
    HEADER = "Header".freeze
    SECTION = "Section".freeze
    ROW = "Row".freeze
    SUMMARY_ROW = "SummaryRow".freeze

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def self.build_from_hash(value)
      new.build_from_hash(value)
    end

    # Builds the enum from string
    # @param [String] The enum value in the form of the string
    # @return [String] The enum value
    def build_from_hash(value)
      constantValues = RowType.constants.select { |c| RowType::const_get(c) == value }
      raise "Invalid ENUM value #{value} for class #RowType" if constantValues.empty?
      value
    end
  end
end
