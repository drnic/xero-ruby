# #Accounting API
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 2.1.3
# Contact: api@xero.com
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 4.3.0
#

require "spec_helper"
require "json"
require "date"

# Unit tests for XeroRuby::Accounting::QuoteStatusCodes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "QuoteStatusCodes" do
  before do
    # run before each test
    @instance = XeroRuby::Accounting::QuoteStatusCodes.new
  end

  after do
    # run after each test
  end

  describe "test an instance of QuoteStatusCodes" do
    it "should create an instance of QuoteStatusCodes" do
      expect(@instance).to be_instance_of(XeroRuby::Accounting::QuoteStatusCodes)
    end
  end
end
