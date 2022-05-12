class Jwt::TokenTtlCalculator
  def self.call(token)
    payload = Jwt::Decoder.call(token)
    raise Jwt::NoExpirationError unless payload.has_key?(:exp)

    return payload[:exp] - Time.now.to_i
  rescue JWT::ExpiredSignature
    return 0
  end
end
