# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "iplookupapi/version"
require_relative 'iplookupapi/endpoints'
require_relative 'iplookupapi/configuration'

module Iplookupapi
  BASE_URL = 'https://api.iplookupapi.com/v1/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= Iplookupapi::Configuration.new
    yield(configuration)
  end
end
