# frozen_string_literal: true

require "active_support/core_ext/hash/indifferent_access"
require "jwt"

module Jwt
  NoExpirationError = Class.new(StandardError)
  class << self
    attr_accessor :algorithm, :secret
  end
end

Dir["#{File.dirname(__FILE__)}/**/*.rb"].sort.map { |file| require file }
