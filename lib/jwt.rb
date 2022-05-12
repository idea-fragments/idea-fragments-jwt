# frozen_string_literal: true

require_relative "jwt/version"

module Jwt
  NoExpirationError = Class.new(StandardError)
  attr_accessor :algorithm, :secret

  # Your code goes here...
end
