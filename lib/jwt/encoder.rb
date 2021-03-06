# frozen_string_literal: true

class Jwt::Encoder
  def self.call(payload = {})
    JWT.encode(payload, Jwt.secret, Jwt.algorithm)
  end
end
