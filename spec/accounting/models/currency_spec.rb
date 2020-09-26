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

# Unit tests for XeroRuby::Accounting::Currency
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "Currency" do
  before do
    # run before each test
    @instance = XeroRuby::Accounting::Currency.new
  end

  after do
    # run after each test
  end

  describe "test an instance of Currency" do
    it "should create an instance of Currency" do
      expect(@instance).to be_instance_of(XeroRuby::Accounting::Currency)
    end
  end
  describe 'test attribute "code"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
