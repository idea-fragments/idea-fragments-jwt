# frozen_string_literal: true

class Jwt::TokenTtlCalculator
  def self.call(token)
    payload = Jwt::Decoder.call(token)
    raise Jwt::NoExpirationError unless payload.key?(:exp)

    payload[:exp] - Time.now.to_i
  rescue JWT::ExpiredSignature
    0
  end
end
