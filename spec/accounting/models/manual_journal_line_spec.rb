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

# Unit tests for XeroRuby::Accounting::ManualJournalLine
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "ManualJournalLine" do
  before do
    # run before each test
    @instance = XeroRuby::Accounting::ManualJournalLine.new
  end

  after do
    # run after each test
  end

  describe "test an instance of ManualJournalLine" do
    it "should create an instance of ManualJournalLine" do
      expect(@instance).to be_instance_of(XeroRuby::Accounting::ManualJournalLine)
    end
  end
  describe 'test attribute "line_amount"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "account_code"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_type"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tracking"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "tax_amount"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "is_blank"' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end
end
