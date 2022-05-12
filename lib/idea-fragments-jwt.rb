# frozen_string_literal: true

require_relative "jwt/version"
Dir["#{File.dirname(__FILE__)}/**/*.rb"].each { |file| require file }
require "active_support/core_ext/hash/indifferent_access"

module Jwt
  NoExpirationError = Class.new(StandardError)
  class << self
    attr_accessor :algorithm, :secret
  end
end
